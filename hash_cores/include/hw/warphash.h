#ifndef WARPHASH_H
#define WARPHASH_H

#define AP_INT_MAX_W 4096
#include <iostream>
#include <ap_int.h>
#include <hls_stream.h>
#include <hls_vector.h>
#include <ap_axi_sdata.h>

#define TEST_VECTOR_640 ap_uint<640>("0x54686520717569636b2062726f776e20666f78206a756d7073206f76657220746865206c617a7920646f672e2054686520717569636b2062726f776e20666f78206a756d7073206f7665722074686520", 16)
#define TEST_VECTOR_512 ap_uint<512>("0x54686520717569636b2062726f776e20666f78206a756d7073206f76657220746865206c617a7920646f672e2054686520717569636b2062726f776e20666f78", 16)
#define TEST_VECTOR_128 ap_uint<128>("0x206a756d7073206f7665722074686520", 16)
#define TEST_VECTOR_64 ap_uint<64>("0x7665722074686520", 16)

#define TEST_JH_MIDSTATE ap_uint<1024>("0x93313e592cff6a321e1d12fbd9273c0aa2f156020b8f2df35ac905ef211d6b2cb39889c9c2b606ad04567e721a26dd2f0b03803219f5ebfefac5106c05bea33fc79a058b0ffaacc64fe50c4a483f6372dacfe76c864e9cc1a3b7cf40e60fe5e36415427dd73bd6dd96de399c45080567243db2b6f1eddb580743659fc681fc41", 16)
#define TEST_KECCAK_MIDSTATE ap_uint<1600>("0x6d4e94cd421889f9b08540ceba9cc7cd4af59f1cba0366fe663d89b4d51a05bbe947dcde49b38eb4d38681d04686e04e9be9faec2fda7ac1329f4462ca1a2a38c9dced83c69d6edefcda197ca83ab7d7a686f342b2b3415d2a2de192b38891d29fb54acd7079cc4741ffec3caebb6fc1bc090b88e51be81242ac93ee464bb692e34ffbc585af814098caf4e2c3ae7da5a3242d5586e9d5d2a9f7f9ce9dde7037b466a5147535a1718b0829a1e5efdf56c0658d1393eefdcf8af828daec8fd29e70239ceaa701a556", 16)
#define TEST_SKEIN_MIDSTATE ap_uint<512>("0xEF5E3309281BB9202F03F0BE93F6412802665FCFD2E47655D76E76BCC202985C451DD63232FE5BD2EE8C184AEF190681DF92AE5BE4D8C8609F60FD2EF4168190", 16)
#define TEST_LUFFA_MIDSTATE ap_uint<1280>("0x63fb99f0d3d5e30930b2c3446581738a10a1542d8a6112ff861c3b6f7a9c6f8eeb0c4e8bace795a9234c8386948e27be49620e8f8e7bcb7f28ef11715751639be9344c841cc5b1f0a5995a7657d4f82a9769dfbebbe430fd71a98cd71a4305eb52b47f82e01fa600b136a3e04a5f6776883ff25ae0d8351f2b90b585bcc1eadd9c934e529221c431de702fad0a1fd7424939f98d1fc4e7ea5f3375bd76a3a3fd", 16)
#define TEST_CUBEHASH_MIDSTATE ap_uint<1024>("0x57bee48d1a91b26a7b5fa681cb67e9bb095febc77b05abd62bfc0c4ed086412f5da3415a590bce7452b0b26a5be5e7c203094b475da0affc5d94cfc1926969a86054bef325f4d2bf8aa87c5e56009e86301db9e0211649c44e4a78c9b9fc8469f1dcf606c2da2e7ea5edcf3a3dc0c1c72d65552680c6ff9af33b830a6402607", 16)

#define EXPECTED_BLAKE_HEAD ap_uint<512>("0x21c558be0a0c5e27317feefa4c8f8921c2d39efffa898d18b7fdc0f4aad549033f8e0d3d5afcab871d4f020e8e33a801e800d8fffe2ae662dbf858f27c232f80", 16)
#define EXPECTED_BLAKE_TAIL ap_uint<512>("0x337d4fe432738b6efca13184fb29f768d73f3855cb65ad2f1d2a98771f0d2f0cf1f06b7c2f5182e2f84afe19c1655f9789f5f3f044fbc7816113354868502a00", 16)
#define EXPECTED_BMW_HEAD ap_uint<512>("0x86da538cac7e9d81d5a857ce4d3d7a6aeb87098b746589c5b470026c399ee2598ee50fa4b1356a1fc522eff92649caf9c0763a976bb600e8a0a591580944a890", 16)
#define EXPECTED_BMW_TAIL ap_uint<512>("0x237be6b1169f14614f0030f23fb689cad221e592f2208debf5bc03830bc3e3f3a975186d50960c9ac476ba1423966eae70f9aa078c2d1e38648908992601e774", 16)
#define EXPECTED_GROESTL_HEAD ap_uint<512>("0xc10e91697426e627b789458148c8d450be9596ac84857ecc70f593a794301aba836c32d178be09bf5bbd5121961ca0da06f7ea673ba21b83c4eea33a4565dbd0", 16)
#define EXPECTED_GROESTL_TAIL ap_uint<512>("0xa66d7e14a882b406bbb2329e38b25eeab82759a1f3cc84d073a6e02fc4664c005b0149a9a59eaccfe445f79cbf676f47c956d8b2f2a12d8c9aac632763855cce", 16)
#define EXPECTED_JH_HEAD ap_uint<512>("0xfe09b0f7bcc77b088a58983c3307615944a4cd1af8da0839edb52e1e277d5e2fcdcdc898aa8a3e5d5aea3a6e1d9c2898df598d71e4a4e92363ca303241f18290", 16)
#define EXPECTED_JH_TAIL ap_uint<512>("0x50a9b5950f4138db25078a6c86fff0084af27dba786a8f0abe8c7c40ec96f9575c3063eb43a0351eeb72200760611ab508952e31a2a8d64a5b283c726d44cf71", 16)
#define EXPECTED_KECCAK_HEAD ap_uint<512>("0xf06020f692ba7a97804eb519e5e7eebdf0df27d32ff0586a1fe9bb7f499995caf65ac3c1ba98ec7d733919bdc56cec9a5fc22bf01c48ff0b207b45e8ac0f9d37", 16)
#define EXPECTED_KECCAK_TAIL ap_uint<512>("0xc2ccf276c558eb625b3eeab33a813bf5a888bd49d49966773a5a208e36d54cd834c3dc488d8580038736d4cf5bbf44fd88627629f42accde954c9081641ec18d", 16)
#define EXPECTED_SKEIN_HEAD ap_uint<512>("0x5f0b43f01905989e1ceb961584cb46760bd3072a800f3ad505f94bdeea240bb1d94bb05cebdcf14b1fe793ea5cc140f48ca928fe2980345510ae23c1b588a7d8", 16)
#define EXPECTED_SKEIN_TAIL ap_uint<512>("0xfe9452d102c8050b010220daf4952483685d8dced85373da2ac343d78fa7b77a7fb82590264623dd62c2454058d85fd463efafd0ab59acbd09b28f70510b60f1", 16)
#define EXPECTED_LUFFA_HEAD ap_uint<512>("0xca9887e7c3caba279435f25b145bdf827e3ceab4484c4c3008924b2157bf59ae4b898618b1dcc692665fa18d9aa6a91a92c650e4934569fd96e2027f14cc52f8", 16)
#define EXPECTED_LUFFA_TAIL ap_uint<512>("0x47f935b8107e0a7ad5f812bcb99df13936e8ac889df54eb46b643b755938b9554262ca60275ba611abca21232f9c6d8dbfed82548d993efdcd1bf064e6d2d48b", 16)
#define EXPECTED_CUBEHASH_HEAD ap_uint<512>("0x2b8db0ffb96efe56e86bd8352405431adb725463c92eae88c089a7bd37b61bbde290c0b4f017b2882f28e51152dd31ecd5dce90b57d99c601e00900725e35f8f", 16)
#define EXPECTED_CUBEHASH_TAIL ap_uint<512>("0x89835bd64a9eafd807b3962989f4d3e976e5f6fc813a1b8431e137f540cf32aa378746bb6e981957929ba7336879d92960d6a4999e42e217a2a04cb9b2ca55c8", 16)

using header_t = ap_uint<640>;
using hash_t = ap_uint<512>;
using header_pkt_t = struct header_pkt_t {
    ap_uint<1> vld;
    ap_uint<1> dest;
    header_t data;
};

using hash_pkt_t = struct hash_pkt_t {
    ap_uint<1> vld;
    ap_uint<1> dest;
    hash_t data;
};

hash_pkt_t blake_head(header_pkt_t msg);
hash_pkt_t blake_tail(hash_pkt_t msg);
hash_pkt_t bmw_head(header_pkt_t msg);
hash_pkt_t bmw_tail(hash_pkt_t msg);
hash_pkt_t groestl_head(header_pkt_t msg);
hash_pkt_t groestl_tail(hash_pkt_t msg);
hash_pkt_t jh_head(header_pkt_t msg, ap_uint<1024> midstate);
hash_pkt_t jh_tail(hash_pkt_t msg);
hash_pkt_t keccak_head(header_pkt_t msg, ap_uint<1600> midstate);
hash_pkt_t keccak_tail(hash_pkt_t msg);
hash_pkt_t skein_head(header_pkt_t msg, ap_uint<512> midstate);
hash_pkt_t skein_tail(hash_pkt_t msg);
hash_pkt_t luffa_head(header_pkt_t msg, ap_uint<1280> midstate);
hash_pkt_t luffa_tail(hash_pkt_t msg);
hash_pkt_t cubehash_head(header_pkt_t msg, ap_uint<1024> midstate);
hash_pkt_t cubehash_tail(hash_pkt_t msg);


template<int S>
ap_uint<S> rotr(ap_uint<S> x, int n) {
#pragma HLS INLINE
    ap_uint<S> tmp = x;
    tmp.rrotate(n);
    return tmp;
}

template<int S>
ap_uint<S> rotl(ap_uint<S> x, int n) {
#pragma HLS INLINE
    ap_uint<S> tmp = x;
    tmp.lrotate(n);
    return tmp;
}

template<int S, int N>
ap_uint<S*N> concat_vector(hls::vector<ap_uint<S>, N> x) {
#pragma HLS INLINE
    int len = S*N;
    ap_uint<S*N> tmp;
    for (int i = 0; i < N; i++) {
        tmp((len - 1) - (i * S), (len - S) - (i * S)) = x[i];
    }
    return tmp;
}

inline ap_uint<128> reverse_bytes_128(const ap_uint<128> x) {
#pragma HLS INLINE
    ap_uint<128> tmp;
    for (int i = 0; i < 16; i++) {
        tmp(127 - 8 * i, 120 - 8 * i) = x(7 + 8 * i, 8 * i);
    }
    return tmp;
}

inline ap_uint<64> reverse_bytes_64(const ap_uint<64> x) {
#pragma HLS INLINE
    ap_uint<64> tmp;
    for (int i = 0; i < 8; i++) {
        tmp(63 - 8 * i, 56 - 8 * i) = x(7 + 8 * i, 8 * i);
    }
    return tmp;
}

inline ap_uint<32> reverse_bytes_32(const ap_uint<32> x) {
#pragma HLS INLINE
    ap_uint<32> tmp;
    for (int i = 0; i < 4; i++) {
        tmp(31 - 8 * i, 24 - 8 * i) = x(7 + 8 * i, 8 * i);
    }
    return tmp;
}

#endif
