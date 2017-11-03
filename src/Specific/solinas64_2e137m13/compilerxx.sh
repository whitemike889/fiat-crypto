#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_array='{0x01,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xf3}' -Da24_val='12345' -Dlimb_weight_gaps_array='{35,34,34,34}' -Dq_mpz='(1_mpz<<137) - 13' -Da24_hex='0x3039' -Dlimb_t=uint64_t -Dmodulus_limbs='4' -Dmodulus_bytes_val='18' -Da_minus_two_over_four_array='{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x39}' "$@"