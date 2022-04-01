#include "warphash.h"

using word_t = ap_uint<64>;
using state_t = hls::vector<word_t, 8>;
using keys_t = hls::vector<word_t, 9>;
using mix_t = struct mix_t {
    word_t a;
    word_t b;
};
using tweak_t = struct tweak_t {
    ap_uint<96> position;
    ap_uint<16> reserved;
    ap_uint<7> tree_level;
    ap_uint<1> bit_pad;
    ap_uint<6> type;
    ap_uint<1> first;
    ap_uint<1> final;

    word_t t0() const {
        return position(63, 0);
    }

    word_t t1() const {
        return (final, first, type, bit_pad, tree_level, reserved, position(95, 64));
    }
};

const word_t iv[8] = {
    0x4903ADFF749C51CE,
    0x0D95DE399746DF03,
    0x8FD1934127C79BCE,
    0x9A255629FF352CB1,
    0x5DB62599DF6CA7B0,
    0xEABE394CA9D5C3F4,
    0x991112C71A75B523,
    0xAE18A40B660FCC33
};

const int rc[8][4] = {
    {46, 36, 19, 37},
    {33, 27, 14, 42},
    {17, 49, 36, 39},
    {44, 9, 54, 56},
    {39, 30, 34, 24},
    {13, 50, 10, 17},
    {25, 29, 39, 43},
    {8, 35, 56, 22}
};

const tweak_t tail_msg_tweak = { 64, 0, 0, 0, 48, 1, 1 };
const tweak_t head_msg_tweak = { 80, 0, 0, 0, 48, 0, 1 };
const tweak_t out_tweak = { 8, 0, 0, 0, 63, 1, 1 };

static ap_uint<512> pad_head(ap_uint<640> msg) {
    ap_uint<512> tmp;
    tmp(511, 384) = msg(127, 0);
    tmp(383, 0) = 0;
    return tmp;
}

static ap_uint<512> pad_tail(ap_uint<512> msg) {
    ap_uint<512> tmp;
    tmp = msg;
    return tmp;
}

static state_t to_state(ap_uint<512> padded_msg) {
    state_t tmp;
    tmp[0] = reverse_bytes_64(padded_msg(511, 448));
    tmp[1] = reverse_bytes_64(padded_msg(447, 384));
    tmp[2] = reverse_bytes_64(padded_msg(383, 320));
    tmp[3] = reverse_bytes_64(padded_msg(319, 256));
    tmp[4] = reverse_bytes_64(padded_msg(255, 192));
    tmp[5] = reverse_bytes_64(padded_msg(191, 128));
    tmp[6] = reverse_bytes_64(padded_msg(127, 64));
    tmp[7] = reverse_bytes_64(padded_msg(63, 0));
    return tmp;
}

static state_t to_midstate(ap_uint<512> midstate) {
    state_t tmp;
    tmp[7] = midstate(511, 448);
    tmp[6] = midstate(447, 384);
    tmp[5] = midstate(383, 320);
    tmp[4] = midstate(319, 256);
    tmp[3] = midstate(255, 192);
    tmp[2] = midstate(191, 128);
    tmp[1] = midstate(127, 64);
    tmp[0] = midstate(63, 0);
    return tmp;
}

static ap_uint<512> to_hash(state_t state) {
    state_t tmp;
    tmp[0] = reverse_bytes_64(state[0]);
    tmp[1] = reverse_bytes_64(state[1]);
    tmp[2] = reverse_bytes_64(state[2]);
    tmp[3] = reverse_bytes_64(state[3]);
    tmp[4] = reverse_bytes_64(state[4]);
    tmp[5] = reverse_bytes_64(state[5]);
    tmp[6] = reverse_bytes_64(state[6]);
    tmp[7] = reverse_bytes_64(state[7]);
    return (tmp[0], tmp[1], tmp[2], tmp[3], tmp[4], tmp[5], tmp[6], tmp[7]);
}

static state_t subkey(keys_t k, word_t t[3], int i) {
#pragma HLS INLINE
    state_t tmp;
    tmp[0] = k[(i + 0) % 9];
    tmp[1] = k[(i + 1) % 9];
    tmp[2] = k[(i + 2) % 9];
    tmp[3] = k[(i + 3) % 9];
    tmp[4] = k[(i + 4) % 9];
    tmp[5] = k[(i + 5) % 9] + t[i % 3];
    tmp[6] = k[(i + 6) % 9] + t[(i + 1) % 3];
    tmp[7] = k[(i + 7) % 9] + i;
    return tmp;
}

static keys_t extend_key(state_t state) {
#pragma HLS INLINE
    keys_t tmp;
    tmp[0] = state[0];
    tmp[1] = state[1];
    tmp[2] = state[2];
    tmp[3] = state[3];
    tmp[4] = state[4];
    tmp[5] = state[5];
    tmp[6] = state[6];
    tmp[7] = state[7];
    tmp[8] = state[0] ^ state[1] ^ state[2] ^ state[3] ^ state[4] ^ state[5] ^ state[6] ^ state[7] ^ 0x1BD11BDAA9FC1A22;
    return tmp;
}

static mix_t mix(word_t a, word_t b, int d, int j) {
#pragma HLS INLINE
    a = a + b;
    mix_t tmp = {a, a ^ rotl(b, rc[d][j])};
    return tmp;
}

static state_t round(state_t state, int i) {
#pragma HLS FUNCTION_INSTANTIATE variable=i
    int d = i % 8;
    mix_t t0 = mix(state[0], state[1], d, 0);
    mix_t t1 = mix(state[2], state[3], d, 1);
    mix_t t2 = mix(state[4], state[5], d, 2);
    mix_t t3 = mix(state[6], state[7], d, 3);
    state_t tmp;
    tmp[0] = t1.a;
    tmp[1] = t0.b;
    tmp[2] = t2.a;
    tmp[3] = t3.b;
    tmp[4] = t3.a;
    tmp[5] = t2.b;
    tmp[6] = t0.a;
    tmp[7] = t1.b;
    return tmp;
}

static state_t tf_head(state_t state, state_t key) {
    word_t t[3];
    t[0] = head_msg_tweak.t0();
    t[1] = head_msg_tweak.t1();
    t[2] = head_msg_tweak.t0() ^ head_msg_tweak.t1();

    keys_t k = extend_key(key);

    state_t subkeys[19];
    for (int i = 0; i < 19; i++) {
        subkeys[i] = subkey(k, t, i);
    }

    state_t tmp = state + subkeys[0];
    for (int i = 0; i < 18; i++) {
        tmp = round(tmp, i * 4 + 0);
        tmp = round(tmp, i * 4 + 1);
        tmp = round(tmp, i * 4 + 2);
        tmp = round(tmp, i * 4 + 3);
        tmp = tmp + subkeys[i + 1];
    }
    return tmp;
}

static state_t tf_tail(state_t state) {
    word_t t[3];
    t[0] = tail_msg_tweak.t0();
    t[1] = tail_msg_tweak.t1();
    t[2] = tail_msg_tweak.t0() ^ tail_msg_tweak.t1();

    keys_t k;
    k[0] = iv[0];
    k[1] = iv[1];
    k[2] = iv[2];
    k[3] = iv[3];
    k[4] = iv[4];
    k[5] = iv[5];
    k[6] = iv[6];
    k[7] = iv[7];
    k[8] = iv[0] ^ iv[1] ^ iv[2] ^ iv[3] ^ iv[4] ^ iv[5] ^ iv[6] ^ iv[7] ^ 0x1BD11BDAA9FC1A22;

    state_t tmp = state + subkey(k, t, 0);
    for (int i = 0; i < 18; i++) {
        tmp = round(tmp, i * 4 + 0);
        tmp = round(tmp, i * 4 + 1);
        tmp = round(tmp, i * 4 + 2);
        tmp = round(tmp, i * 4 + 3);
        tmp = tmp + subkey(k, t, i + 1);
    }
    return tmp;
}

static state_t tf_out(state_t state) {
    word_t t[3];
    t[0] = out_tweak.t0();
    t[1] = out_tweak.t1();
    t[2] = out_tweak.t0() ^ out_tweak.t1();

    keys_t k = extend_key(state);

    state_t subkeys[19];
    for (int i = 0; i < 19; i++) {
        subkeys[i] = subkey(k, t, i);
    }

    state_t tmp = subkeys[0];
    for (int i = 0; i < 18; i++) {
        tmp = round(tmp, i * 4 + 0);
        tmp = round(tmp, i * 4 + 1);
        tmp = round(tmp, i * 4 + 2);
        tmp = round(tmp, i * 4 + 3);
        tmp = tmp + subkeys[i + 1];
    }
    return tmp;
}

hash_pkt_t skein_head(header_pkt_t msg, ap_uint<512> midstate) {
#pragma HLS PIPELINE II=1
    hash_pkt_t tmp;
    tmp.vld = msg.vld;
    tmp.dest = msg.dest;
    state_t state = to_state(pad_head(msg.data));
    tmp.data = to_hash(tf_out(tf_head(state, to_midstate(midstate)) ^ state));
    return tmp;
}

hash_pkt_t skein_tail(hash_pkt_t msg) {
#pragma HLS PIPELINE II=1
    hash_pkt_t tmp;
    tmp.vld = msg.vld;
    tmp.dest = msg.dest;
    state_t state = to_state(pad_tail(msg.data));
    tmp.data = to_hash(tf_out(tf_tail(state) ^ state));
    return tmp;
}
