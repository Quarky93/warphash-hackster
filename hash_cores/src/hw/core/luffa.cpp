#include "warphash.h"

using word_t = ap_uint<32>;
using block_t = hls::vector<word_t, 8>;
using chain_t = hls::vector<block_t, 5>;
using mix_t = hls::vector<word_t, 2>;

const word_t rc[8][5][2] = {
    { {0x303994a6, 0xe0337818}, {0xb6de10ed, 0x01685f3d}, {0xfc20d9d2, 0xe25e72c1}, {0xb213afa5, 0xe028c9bf}, {0xf0d2e9e3, 0x5090d577} },
    { {0xc0e65299, 0x441ba90d}, {0x70f47aae, 0x05a17cf4}, {0x34552e25, 0xe623bb72}, {0xc84ebe95, 0x44756f91}, {0xac11d7fa, 0x2d1925ab} },
    { {0x6cc33a12, 0x7f34d442}, {0x0707a3d4, 0xbd09caca}, {0x7ad8818f, 0x5c58a4a4}, {0x4e608a22, 0x7e8fce32}, {0x1bcb66f2, 0xb46496ac} },
    { {0xdc56983e, 0x9389217f}, {0x1c1e8f51, 0xf4272b28}, {0x8438764a, 0x1e38e2e7}, {0x56d858fe, 0x956548be}, {0x6f2d9bc9, 0xd1925ab0} },
    { {0x1e00108f, 0xe5a8bce6}, {0x707a3d45, 0x144ae5cc}, {0xbb6de032, 0x78e38b9d}, {0x343b138f, 0xfe191be2}, {0x78602649, 0x29131ab6} },
    { {0x7800423d, 0x5274baf4}, {0xaeb28562, 0xfaa7ae2b}, {0xedb780c8, 0x27586719}, {0xd0ec4e3d, 0x3cb226e5}, {0x8edae952, 0x0fc053c3} },
    { {0x8f5b7882, 0x26889ba7}, {0xbaca1589, 0x2e48f1c1}, {0xd9847356, 0x36eda57f}, {0x2ceb4882, 0x5944a28e}, {0x3b6ba548, 0x3f014f0c} },
    { {0x96e1db12, 0x9a226e9d}, {0x40a46f3e, 0xb923c704}, {0xa2c78434, 0x703aace7}, {0xb3ad2208, 0xa1c4c355}, {0xedae9520, 0xfc053c31} }
};

const chain_t iv = {
    { 0x6d251e69, 0x44b051e0, 0x4eaa6fb4, 0xdbf78465, 0x6e292011, 0x90152df4, 0xee058139, 0xdef610bb },
    { 0xc3b44b95, 0xd9d2f256, 0x70eee9a0, 0xde099fa3, 0x5d9b0557, 0x8fc944b3, 0xcf1ccf0e, 0x746cd581 },
    { 0xf7efc89d, 0x5dba5781, 0x04016ce5, 0xad659c05, 0x0306194f, 0x666d1836, 0x24aa230a, 0x8b264ae7 },
    { 0x858075d5, 0x36d79cce, 0xe571f7d7, 0x204b1f67, 0x35870c6a, 0x57e9e923, 0x14bcb808, 0x7cde72ce },
    { 0x6c68e9be, 0x5ec41e22, 0xc825b7c7, 0xaffb4363, 0xf5df3999, 0x0fc688f1, 0xb07224cc, 0x03e86cea }
};

static ap_uint<256> pad_head(ap_uint<128> msg) {
    ap_uint<256> tmp;
    tmp(255, 128) = msg;
    tmp[127] = 1;
    tmp(126, 0) = 0;
    return tmp;
}

static ap_uint<768> pad_tail(ap_uint<512> msg) {
    ap_uint<768> tmp;
    tmp(767, 256) = msg;
    tmp[255] = 1;
    tmp(254, 0) = 0;
    return tmp;
}

static block_t to_block(ap_uint<256> x) {
    block_t tmp;
    tmp[0] = x(255, 224);
    tmp[1] = x(223, 192);
    tmp[2] = x(191, 160);
    tmp[3] = x(159, 128);
    tmp[4] = x(127, 96);
    tmp[5] = x(95, 64);
    tmp[6] = x(63, 32);
    tmp[7] = x(31, 0);
    return tmp;
}

static chain_t to_chain(ap_uint<1280> x) {
    chain_t tmp;
    tmp[0] = to_block(x(1279, 1024));
    tmp[1] = to_block(x(1024, 768));
    tmp[2] = to_block(x(767, 512));
    tmp[3] = to_block(x(511, 256));
    tmp[4] = to_block(x(255, 0));
    return tmp;
}

static block_t mul2(block_t x) {
    block_t tmp;
    tmp[0] = x[7];
    tmp[1] = x[7] ^ x[0];
    tmp[2] = x[1];
    tmp[3] = x[7] ^ x[2];
    tmp[4] = x[7] ^ x[3];
    tmp[5] = x[4];
    tmp[6] = x[5];
    tmp[7] = x[6];
    return tmp;
}

static chain_t inject(chain_t chain, block_t m) {
    block_t x = chain[0] ^ chain[1] ^ chain[2] ^ chain[3] ^ chain[4];
    x = mul2(x);
    chain[0] ^= x;
    chain[1] ^= x;
    chain[2] ^= x;
    chain[3] ^= x;
    chain[4] ^= x;
    chain_t tmp0;
    tmp0[0] = mul2(chain[0]) ^ chain[1];
    tmp0[1] = mul2(chain[1]) ^ chain[2];
    tmp0[2] = mul2(chain[2]) ^ chain[3];
    tmp0[3] = mul2(chain[3]) ^ chain[4];
    tmp0[4] = mul2(chain[4]) ^ chain[0];
    chain_t tmp1;
    tmp1[0] = mul2(tmp0[0]) ^ tmp0[4];
    tmp1[1] = mul2(tmp0[1]) ^ tmp0[0];
    tmp1[2] = mul2(tmp0[2]) ^ tmp0[1];
    tmp1[3] = mul2(tmp0[3]) ^ tmp0[2];
    tmp1[4] = mul2(tmp0[4]) ^ tmp0[3];
    block_t m0 = m;
    block_t m1 = mul2(m0);
    block_t m2 = mul2(m1);
    block_t m3 = mul2(m2);
    block_t m4 = mul2(m3);
    tmp1[0] ^= m0;
    tmp1[1] ^= m1;
    tmp1[2] ^= m2;
    tmp1[3] ^= m3;
    tmp1[4] ^= m4;
    return tmp1;
}

static block_t sub_crumbs(block_t x) {
    const ap_uint<4> sbox[16] = { 13, 14, 0, 1, 5, 10, 7, 6, 11, 3, 9, 12, 15, 8, 2, 4 };
    block_t tmp;
    for (int i = 0; i < 32; i++) {
        ap_uint<4> crumb_a = sbox[(x[3][i], x[2][i], x[1][i], x[0][i])];
        ap_uint<4> crumb_b = sbox[(x[4][i], x[7][i], x[6][i], x[5][i])];
        tmp[3][i] = crumb_a[3];
        tmp[2][i] = crumb_a[2];
        tmp[1][i] = crumb_a[1];
        tmp[0][i] = crumb_a[0];
        tmp[4][i] = crumb_b[3];
        tmp[7][i] = crumb_b[2];
        tmp[6][i] = crumb_b[1];
        tmp[5][i] = crumb_b[0];
    }
    return tmp;
}

static block_t mix_words(block_t x) {
    block_t tmp;
    for (int i = 0; i < 4; i++) {
        word_t a = x[i];
        word_t b = x[i+4];
        b ^= a;
        a = rotl(a, 2);
        a ^= b;
        b = rotl(b, 14);
        b ^= a;
        a = rotl(a, 10);
        a ^= b;
        b = rotl(b, 1);
        tmp[i] = a;
        tmp[i+4] = b;
    }
    return tmp;
}

static chain_t permute(chain_t chain) {
    chain_t tmp;
    for (int i = 0; i < 5; i++) {
        tmp[i][0] = chain[i][0];
        tmp[i][1] = chain[i][1];
        tmp[i][2] = chain[i][2];
        tmp[i][3] = chain[i][3];
        tmp[i][4] = rotl(chain[i][4], i);
        tmp[i][5] = rotl(chain[i][5], i);
        tmp[i][6] = rotl(chain[i][6], i);
        tmp[i][7] = rotl(chain[i][7], i);
    }

    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 5; j++) {
            tmp[j] = mix_words(sub_crumbs(tmp[j]));
            tmp[j][0] ^= rc[i][j][0];
            tmp[j][4] ^= rc[i][j][1];
        }
    }
    return tmp;
}

static chain_t round(chain_t chain, block_t m) {
    chain_t tmp;
    tmp = inject(chain, m);
    tmp = permute(tmp);
    return tmp;
}

hash_pkt_t luffa_head(header_pkt_t msg, ap_uint<1280> midstate) {
#pragma HLS PIPELINE II=1
    hash_pkt_t tmp;
    tmp.vld = msg.vld;
    tmp.dest = msg.dest;
    ap_uint<256> padded_msg = pad_head(msg.data);
    chain_t v = round(to_chain(midstate), to_block(padded_msg));
    block_t blank = {0, 0, 0, 0, 0, 0, 0, 0};
    v = round(v, blank);
    block_t z0 = v[0] ^ v[1] ^ v[2] ^ v[3] ^ v[4];
    ap_uint<256> hash_h = (z0[0], z0[1], z0[2], z0[3], z0[4], z0[5], z0[6], z0[7]);
    v = round(v, blank);
    block_t z1 = v[0] ^ v[1] ^ v[2] ^ v[3] ^ v[4];
    ap_uint<256> hash_l = (z1[0], z1[1], z1[2], z1[3], z1[4], z1[5], z1[6], z1[7]);
    tmp.data = (hash_h, hash_l);
    return tmp;
}

hash_pkt_t luffa_tail(hash_pkt_t msg) {
#pragma HLS PIPELINE II=1
    hash_pkt_t tmp;
    tmp.vld = msg.vld;
    tmp.dest = msg.dest;
    ap_uint<768> padded_msg = pad_tail(msg.data);
    chain_t v = round(iv, to_block(padded_msg(767, 512)));
    v = round(v, to_block(padded_msg(511, 256)));
    v = round(v, to_block(padded_msg(255, 0)));
    block_t blank = {0, 0, 0, 0, 0, 0, 0, 0};
    v = round(v, blank);
    block_t z0 = v[0] ^ v[1] ^ v[2] ^ v[3] ^ v[4];
    ap_uint<256> hash_h = (z0[0], z0[1], z0[2], z0[3], z0[4], z0[5], z0[6], z0[7]);
    v = round(v, blank);
    block_t z1 = v[0] ^ v[1] ^ v[2] ^ v[3] ^ v[4];
    ap_uint<256> hash_l = (z1[0], z1[1], z1[2], z1[3], z1[4], z1[5], z1[6], z1[7]);
    tmp.data = (hash_h, hash_l);
    return tmp;
}
