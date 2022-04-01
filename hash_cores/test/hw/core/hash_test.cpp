#include <gtest/gtest.h>
#include "warphash.h"

TEST(Blake, Head) {
    header_pkt_t msg = {.data = TEST_VECTOR_640};
    hash_pkt_t hash = blake_head(msg);
    EXPECT_EQ(hash.data, EXPECTED_BLAKE_HEAD);
}

TEST(Blake, Tail) {
    hash_pkt_t msg = {.data = TEST_VECTOR_512};
    hash_pkt_t hash = blake_tail(msg);
    EXPECT_EQ(hash.data, EXPECTED_BLAKE_TAIL);
}

TEST(Bmw, Head) {
    header_pkt_t msg = {.data = TEST_VECTOR_640};
    hash_pkt_t hash = bmw_head(msg);
    EXPECT_EQ(hash.data, EXPECTED_BMW_HEAD);
}

TEST(Bmw, Tail) {
    hash_pkt_t msg = {.data = TEST_VECTOR_512};
    hash_pkt_t hash = bmw_tail(msg);
    EXPECT_EQ(hash.data, EXPECTED_BMW_TAIL);
}

TEST(Groestl, Head) {
    header_pkt_t msg = {.data = TEST_VECTOR_640};
    hash_pkt_t hash = groestl_head(msg);
    EXPECT_EQ(hash.data, EXPECTED_GROESTL_HEAD);
}

TEST(Groestl, Tail) {
    hash_pkt_t msg = {.data = TEST_VECTOR_512};
    hash_pkt_t hash = groestl_tail(msg);
    EXPECT_EQ(hash.data, EXPECTED_GROESTL_TAIL);
}

TEST(Jh, Head) {
    header_pkt_t msg = {.data = TEST_VECTOR_640};
    hash_pkt_t hash = jh_head(msg, TEST_JH_MIDSTATE);
    EXPECT_EQ(hash.data, EXPECTED_JH_HEAD);
}

TEST(Jh, Tail) {
    hash_pkt_t msg = {.data = TEST_VECTOR_512};
    hash_pkt_t hash = jh_tail(msg);
    EXPECT_EQ(hash.data, EXPECTED_JH_TAIL);
}

TEST(Keccak, Head) {
    header_pkt_t msg = {.data = TEST_VECTOR_640};
    hash_pkt_t hash = keccak_head(msg, TEST_KECCAK_MIDSTATE);
    EXPECT_EQ(hash.data, EXPECTED_KECCAK_HEAD);
}

TEST(Keccak, Tail) {
    hash_pkt_t msg = {.data = TEST_VECTOR_512};
    hash_pkt_t hash = keccak_tail(msg);
    EXPECT_EQ(hash.data, EXPECTED_KECCAK_TAIL);
}

TEST(Skein, Head) {
    header_pkt_t msg = {.data = TEST_VECTOR_640};
    hash_pkt_t hash = skein_head(msg, TEST_SKEIN_MIDSTATE);
    EXPECT_EQ(hash.data, EXPECTED_SKEIN_HEAD);
}

TEST(Skein, Tail) {
    hash_pkt_t msg = {.data = TEST_VECTOR_512};
    hash_pkt_t hash = skein_tail(msg);
    EXPECT_EQ(hash.data, EXPECTED_SKEIN_TAIL);
}

TEST(Luffa, Head) {
    header_pkt_t msg = {.data = TEST_VECTOR_640};
    hash_pkt_t hash = luffa_head(msg, TEST_LUFFA_MIDSTATE);
    EXPECT_EQ(hash.data, EXPECTED_LUFFA_HEAD);
}

TEST(Luffa, Tail) {
    hash_pkt_t msg = {.data = TEST_VECTOR_512};
    hash_pkt_t hash = luffa_tail(msg);
    EXPECT_EQ(hash.data, EXPECTED_LUFFA_TAIL);
}

TEST(Cubehash, Head) {
    header_pkt_t msg = {.data = TEST_VECTOR_640};
    hash_pkt_t hash = cubehash_head(msg, TEST_CUBEHASH_MIDSTATE);
    EXPECT_EQ(hash.data, EXPECTED_CUBEHASH_HEAD);
}

TEST(Cubehash, Tail) {
    hash_pkt_t msg = {.data = TEST_VECTOR_512};
    hash_pkt_t hash = cubehash_tail(msg);
    EXPECT_EQ(hash.data, EXPECTED_CUBEHASH_TAIL);
}

