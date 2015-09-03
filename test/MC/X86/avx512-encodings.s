// RUN: llvm-mc -triple x86_64-unknown-unknown -mcpu=knl --show-encoding < %s  | FileCheck %s

// CHECK: vaddpd %zmm6, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x40,0x58,0xc6]
          vaddpd %zmm6, %zmm27, %zmm8

// CHECK: vaddpd %zmm6, %zmm27, %zmm8 {%k7}
// CHECK:  encoding: [0x62,0x71,0xa5,0x47,0x58,0xc6]
          vaddpd %zmm6, %zmm27, %zmm8 {%k7}

// CHECK: vaddpd %zmm6, %zmm27, %zmm8 {%k7} {z}
// CHECK:  encoding: [0x62,0x71,0xa5,0xc7,0x58,0xc6]
          vaddpd %zmm6, %zmm27, %zmm8 {%k7} {z}

// CHECK: vaddpd (%rcx), %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x40,0x58,0x01]
          vaddpd (%rcx), %zmm27, %zmm8

// CHECK: vaddpd 291(%rax,%r14,8), %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x31,0xa5,0x40,0x58,0x84,0xf0,0x23,0x01,0x00,0x00]
          vaddpd 291(%rax,%r14,8), %zmm27, %zmm8

// CHECK: vaddpd (%rcx){1to8}, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x50,0x58,0x01]
          vaddpd (%rcx){1to8}, %zmm27, %zmm8

// CHECK: vaddpd 8128(%rdx), %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x40,0x58,0x42,0x7f]
          vaddpd 8128(%rdx), %zmm27, %zmm8

// CHECK: vaddpd 8192(%rdx), %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x40,0x58,0x82,0x00,0x20,0x00,0x00]
          vaddpd 8192(%rdx), %zmm27, %zmm8

// CHECK: vaddpd -8192(%rdx), %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x40,0x58,0x42,0x80]
          vaddpd -8192(%rdx), %zmm27, %zmm8

// CHECK: vaddpd -8256(%rdx), %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x40,0x58,0x82,0xc0,0xdf,0xff,0xff]
          vaddpd -8256(%rdx), %zmm27, %zmm8

// CHECK: vaddpd 1016(%rdx){1to8}, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x50,0x58,0x42,0x7f]
          vaddpd 1016(%rdx){1to8}, %zmm27, %zmm8

// CHECK: vaddpd 1024(%rdx){1to8}, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x50,0x58,0x82,0x00,0x04,0x00,0x00]
          vaddpd 1024(%rdx){1to8}, %zmm27, %zmm8

// CHECK: vaddpd -1024(%rdx){1to8}, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x50,0x58,0x42,0x80]
          vaddpd -1024(%rdx){1to8}, %zmm27, %zmm8

// CHECK: vaddpd -1032(%rdx){1to8}, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x50,0x58,0x82,0xf8,0xfb,0xff,0xff]
          vaddpd -1032(%rdx){1to8}, %zmm27, %zmm8

// CHECK: vaddps %zmm2, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x48,0x58,0xd2]
          vaddps %zmm2, %zmm13, %zmm18

// CHECK: vaddps %zmm2, %zmm13, %zmm18 {%k4}
// CHECK:  encoding: [0x62,0xe1,0x14,0x4c,0x58,0xd2]
          vaddps %zmm2, %zmm13, %zmm18 {%k4}

// CHECK: vaddps %zmm2, %zmm13, %zmm18 {%k4} {z}
// CHECK:  encoding: [0x62,0xe1,0x14,0xcc,0x58,0xd2]
          vaddps %zmm2, %zmm13, %zmm18 {%k4} {z}

// CHECK: vaddps (%rcx), %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x48,0x58,0x11]
          vaddps (%rcx), %zmm13, %zmm18

// CHECK: vaddps 291(%rax,%r14,8), %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xa1,0x14,0x48,0x58,0x94,0xf0,0x23,0x01,0x00,0x00]
          vaddps 291(%rax,%r14,8), %zmm13, %zmm18

// CHECK: vaddps (%rcx){1to16}, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x58,0x58,0x11]
          vaddps (%rcx){1to16}, %zmm13, %zmm18

// CHECK: vaddps 8128(%rdx), %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x48,0x58,0x52,0x7f]
          vaddps 8128(%rdx), %zmm13, %zmm18

// CHECK: vaddps 8192(%rdx), %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x48,0x58,0x92,0x00,0x20,0x00,0x00]
          vaddps 8192(%rdx), %zmm13, %zmm18

// CHECK: vaddps -8192(%rdx), %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x48,0x58,0x52,0x80]
          vaddps -8192(%rdx), %zmm13, %zmm18

// CHECK: vaddps -8256(%rdx), %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x48,0x58,0x92,0xc0,0xdf,0xff,0xff]
          vaddps -8256(%rdx), %zmm13, %zmm18

// CHECK: vaddps 508(%rdx){1to16}, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x58,0x58,0x52,0x7f]
          vaddps 508(%rdx){1to16}, %zmm13, %zmm18

// CHECK: vaddps 512(%rdx){1to16}, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x58,0x58,0x92,0x00,0x02,0x00,0x00]
          vaddps 512(%rdx){1to16}, %zmm13, %zmm18

// CHECK: vaddps -512(%rdx){1to16}, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x58,0x58,0x52,0x80]
          vaddps -512(%rdx){1to16}, %zmm13, %zmm18

// CHECK: vaddps -516(%rdx){1to16}, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x58,0x58,0x92,0xfc,0xfd,0xff,0xff]
          vaddps -516(%rdx){1to16}, %zmm13, %zmm18

// CHECK: vbroadcastsd (%rcx), %zmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x19,0x31]
          vbroadcastsd (%rcx), %zmm30

// CHECK: vbroadcastsd (%rcx), %zmm30 {%k4}
// CHECK:  encoding: [0x62,0x62,0xfd,0x4c,0x19,0x31]
          vbroadcastsd (%rcx), %zmm30 {%k4}

// CHECK: vbroadcastsd (%rcx), %zmm30 {%k4} {z}
// CHECK:  encoding: [0x62,0x62,0xfd,0xcc,0x19,0x31]
          vbroadcastsd (%rcx), %zmm30 {%k4} {z}

// CHECK: vbroadcastsd 291(%rax,%r14,8), %zmm30
// CHECK:  encoding: [0x62,0x22,0xfd,0x48,0x19,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vbroadcastsd 291(%rax,%r14,8), %zmm30

// CHECK: vbroadcastsd 1016(%rdx), %zmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x19,0x72,0x7f]
          vbroadcastsd 1016(%rdx), %zmm30

// CHECK: vbroadcastsd 1024(%rdx), %zmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x19,0xb2,0x00,0x04,0x00,0x00]
          vbroadcastsd 1024(%rdx), %zmm30

// CHECK: vbroadcastsd -1024(%rdx), %zmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x19,0x72,0x80]
          vbroadcastsd -1024(%rdx), %zmm30

// CHECK: vbroadcastsd -1032(%rdx), %zmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x19,0xb2,0xf8,0xfb,0xff,0xff]
          vbroadcastsd -1032(%rdx), %zmm30

// CHECK: vbroadcastsd %xmm22, %zmm21
// CHECK:  encoding: [0x62,0xa2,0xfd,0x48,0x19,0xee]
          vbroadcastsd %xmm22, %zmm21

// CHECK: vbroadcastsd %xmm22, %zmm21 {%k7}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x4f,0x19,0xee]
          vbroadcastsd %xmm22, %zmm21 {%k7}

// CHECK: vbroadcastsd %xmm22, %zmm21 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0xcf,0x19,0xee]
          vbroadcastsd %xmm22, %zmm21 {%k7} {z}

// CHECK: vbroadcastss (%rcx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x18,0x19]
          vbroadcastss (%rcx), %zmm3

// CHECK: vbroadcastss (%rcx), %zmm3 {%k4}
// CHECK:  encoding: [0x62,0xf2,0x7d,0x4c,0x18,0x19]
          vbroadcastss (%rcx), %zmm3 {%k4}

// CHECK: vbroadcastss (%rcx), %zmm3 {%k4} {z}
// CHECK:  encoding: [0x62,0xf2,0x7d,0xcc,0x18,0x19]
          vbroadcastss (%rcx), %zmm3 {%k4} {z}

// CHECK: vbroadcastss 291(%rax,%r14,8), %zmm3
// CHECK:  encoding: [0x62,0xb2,0x7d,0x48,0x18,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vbroadcastss 291(%rax,%r14,8), %zmm3

// CHECK: vbroadcastss 508(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x18,0x5a,0x7f]
          vbroadcastss 508(%rdx), %zmm3

// CHECK: vbroadcastss 512(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x18,0x9a,0x00,0x02,0x00,0x00]
          vbroadcastss 512(%rdx), %zmm3

// CHECK: vbroadcastss -512(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x18,0x5a,0x80]
          vbroadcastss -512(%rdx), %zmm3

// CHECK: vbroadcastss -516(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x18,0x9a,0xfc,0xfd,0xff,0xff]
          vbroadcastss -516(%rdx), %zmm3

// CHECK: vbroadcastss %xmm18, %zmm18
// CHECK:  encoding: [0x62,0xa2,0x7d,0x48,0x18,0xd2]
          vbroadcastss %xmm18, %zmm18

// CHECK: vbroadcastss %xmm18, %zmm18 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x4a,0x18,0xd2]
          vbroadcastss %xmm18, %zmm18 {%k2}

// CHECK: vbroadcastss %xmm18, %zmm18 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0xca,0x18,0xd2]
          vbroadcastss %xmm18, %zmm18 {%k2} {z}

// CHECK: vdivpd %zmm11, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xc1,0xcd,0x48,0x5e,0xd3]
          vdivpd %zmm11, %zmm6, %zmm18

// CHECK: vdivpd %zmm11, %zmm6, %zmm18 {%k4}
// CHECK:  encoding: [0x62,0xc1,0xcd,0x4c,0x5e,0xd3]
          vdivpd %zmm11, %zmm6, %zmm18 {%k4}

// CHECK: vdivpd %zmm11, %zmm6, %zmm18 {%k4} {z}
// CHECK:  encoding: [0x62,0xc1,0xcd,0xcc,0x5e,0xd3]
          vdivpd %zmm11, %zmm6, %zmm18 {%k4} {z}

// CHECK: vdivpd (%rcx), %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x48,0x5e,0x11]
          vdivpd (%rcx), %zmm6, %zmm18

// CHECK: vdivpd 291(%rax,%r14,8), %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xa1,0xcd,0x48,0x5e,0x94,0xf0,0x23,0x01,0x00,0x00]
          vdivpd 291(%rax,%r14,8), %zmm6, %zmm18

// CHECK: vdivpd (%rcx){1to8}, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x58,0x5e,0x11]
          vdivpd (%rcx){1to8}, %zmm6, %zmm18

// CHECK: vdivpd 8128(%rdx), %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x48,0x5e,0x52,0x7f]
          vdivpd 8128(%rdx), %zmm6, %zmm18

// CHECK: vdivpd 8192(%rdx), %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x48,0x5e,0x92,0x00,0x20,0x00,0x00]
          vdivpd 8192(%rdx), %zmm6, %zmm18

// CHECK: vdivpd -8192(%rdx), %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x48,0x5e,0x52,0x80]
          vdivpd -8192(%rdx), %zmm6, %zmm18

// CHECK: vdivpd -8256(%rdx), %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x48,0x5e,0x92,0xc0,0xdf,0xff,0xff]
          vdivpd -8256(%rdx), %zmm6, %zmm18

// CHECK: vdivpd 1016(%rdx){1to8}, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x58,0x5e,0x52,0x7f]
          vdivpd 1016(%rdx){1to8}, %zmm6, %zmm18

// CHECK: vdivpd 1024(%rdx){1to8}, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x58,0x5e,0x92,0x00,0x04,0x00,0x00]
          vdivpd 1024(%rdx){1to8}, %zmm6, %zmm18

// CHECK: vdivpd -1024(%rdx){1to8}, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x58,0x5e,0x52,0x80]
          vdivpd -1024(%rdx){1to8}, %zmm6, %zmm18

// CHECK: vdivpd -1032(%rdx){1to8}, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xe1,0xcd,0x58,0x5e,0x92,0xf8,0xfb,0xff,0xff]
          vdivpd -1032(%rdx){1to8}, %zmm6, %zmm18

// CHECK: vdivps %zmm28, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0x81,0x44,0x40,0x5e,0xfc]
          vdivps %zmm28, %zmm23, %zmm23

// CHECK: vdivps %zmm28, %zmm23, %zmm23 {%k2}
// CHECK:  encoding: [0x62,0x81,0x44,0x42,0x5e,0xfc]
          vdivps %zmm28, %zmm23, %zmm23 {%k2}

// CHECK: vdivps %zmm28, %zmm23, %zmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x44,0xc2,0x5e,0xfc]
          vdivps %zmm28, %zmm23, %zmm23 {%k2} {z}

// CHECK: vdivps (%rcx), %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x40,0x5e,0x39]
          vdivps (%rcx), %zmm23, %zmm23

// CHECK: vdivps 291(%rax,%r14,8), %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xa1,0x44,0x40,0x5e,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vdivps 291(%rax,%r14,8), %zmm23, %zmm23

// CHECK: vdivps (%rcx){1to16}, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x50,0x5e,0x39]
          vdivps (%rcx){1to16}, %zmm23, %zmm23

// CHECK: vdivps 8128(%rdx), %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x40,0x5e,0x7a,0x7f]
          vdivps 8128(%rdx), %zmm23, %zmm23

// CHECK: vdivps 8192(%rdx), %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x40,0x5e,0xba,0x00,0x20,0x00,0x00]
          vdivps 8192(%rdx), %zmm23, %zmm23

// CHECK: vdivps -8192(%rdx), %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x40,0x5e,0x7a,0x80]
          vdivps -8192(%rdx), %zmm23, %zmm23

// CHECK: vdivps -8256(%rdx), %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x40,0x5e,0xba,0xc0,0xdf,0xff,0xff]
          vdivps -8256(%rdx), %zmm23, %zmm23

// CHECK: vdivps 508(%rdx){1to16}, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x50,0x5e,0x7a,0x7f]
          vdivps 508(%rdx){1to16}, %zmm23, %zmm23

// CHECK: vdivps 512(%rdx){1to16}, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x50,0x5e,0xba,0x00,0x02,0x00,0x00]
          vdivps 512(%rdx){1to16}, %zmm23, %zmm23

// CHECK: vdivps -512(%rdx){1to16}, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x50,0x5e,0x7a,0x80]
          vdivps -512(%rdx){1to16}, %zmm23, %zmm23

// CHECK: vdivps -516(%rdx){1to16}, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x44,0x50,0x5e,0xba,0xfc,0xfd,0xff,0xff]
          vdivps -516(%rdx){1to16}, %zmm23, %zmm23

// CHECK: vmaxpd %zmm20, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x21,0x9d,0x40,0x5f,0xf4]
          vmaxpd %zmm20, %zmm28, %zmm30

// CHECK: vmaxpd %zmm20, %zmm28, %zmm30 {%k1}
// CHECK:  encoding: [0x62,0x21,0x9d,0x41,0x5f,0xf4]
          vmaxpd %zmm20, %zmm28, %zmm30 {%k1}

// CHECK: vmaxpd %zmm20, %zmm28, %zmm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x9d,0xc1,0x5f,0xf4]
          vmaxpd %zmm20, %zmm28, %zmm30 {%k1} {z}

// CHECK: vmaxpd (%rcx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0x5f,0x31]
          vmaxpd (%rcx), %zmm28, %zmm30

// CHECK: vmaxpd 291(%rax,%r14,8), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x21,0x9d,0x40,0x5f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmaxpd 291(%rax,%r14,8), %zmm28, %zmm30

// CHECK: vmaxpd (%rcx){1to8}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0x5f,0x31]
          vmaxpd (%rcx){1to8}, %zmm28, %zmm30

// CHECK: vmaxpd 8128(%rdx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0x5f,0x72,0x7f]
          vmaxpd 8128(%rdx), %zmm28, %zmm30

// CHECK: vmaxpd 8192(%rdx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0x5f,0xb2,0x00,0x20,0x00,0x00]
          vmaxpd 8192(%rdx), %zmm28, %zmm30

// CHECK: vmaxpd -8192(%rdx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0x5f,0x72,0x80]
          vmaxpd -8192(%rdx), %zmm28, %zmm30

// CHECK: vmaxpd -8256(%rdx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0x5f,0xb2,0xc0,0xdf,0xff,0xff]
          vmaxpd -8256(%rdx), %zmm28, %zmm30

// CHECK: vmaxpd 1016(%rdx){1to8}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0x5f,0x72,0x7f]
          vmaxpd 1016(%rdx){1to8}, %zmm28, %zmm30

// CHECK: vmaxpd 1024(%rdx){1to8}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0x5f,0xb2,0x00,0x04,0x00,0x00]
          vmaxpd 1024(%rdx){1to8}, %zmm28, %zmm30

// CHECK: vmaxpd -1024(%rdx){1to8}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0x5f,0x72,0x80]
          vmaxpd -1024(%rdx){1to8}, %zmm28, %zmm30

// CHECK: vmaxpd -1032(%rdx){1to8}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0x5f,0xb2,0xf8,0xfb,0xff,0xff]
          vmaxpd -1032(%rdx){1to8}, %zmm28, %zmm30

// CHECK: vmaxps %zmm20, %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x21,0x4c,0x48,0x5f,0xcc]
          vmaxps %zmm20, %zmm6, %zmm25

// CHECK: vmaxps %zmm20, %zmm6, %zmm25 {%k1}
// CHECK:  encoding: [0x62,0x21,0x4c,0x49,0x5f,0xcc]
          vmaxps %zmm20, %zmm6, %zmm25 {%k1}

// CHECK: vmaxps %zmm20, %zmm6, %zmm25 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x4c,0xc9,0x5f,0xcc]
          vmaxps %zmm20, %zmm6, %zmm25 {%k1} {z}

// CHECK: vmaxps (%rcx), %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x48,0x5f,0x09]
          vmaxps (%rcx), %zmm6, %zmm25

// CHECK: vmaxps 291(%rax,%r14,8), %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x21,0x4c,0x48,0x5f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmaxps 291(%rax,%r14,8), %zmm6, %zmm25

// CHECK: vmaxps (%rcx){1to16}, %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x58,0x5f,0x09]
          vmaxps (%rcx){1to16}, %zmm6, %zmm25

// CHECK: vmaxps 8128(%rdx), %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x48,0x5f,0x4a,0x7f]
          vmaxps 8128(%rdx), %zmm6, %zmm25

// CHECK: vmaxps 8192(%rdx), %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x48,0x5f,0x8a,0x00,0x20,0x00,0x00]
          vmaxps 8192(%rdx), %zmm6, %zmm25

// CHECK: vmaxps -8192(%rdx), %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x48,0x5f,0x4a,0x80]
          vmaxps -8192(%rdx), %zmm6, %zmm25

// CHECK: vmaxps -8256(%rdx), %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x48,0x5f,0x8a,0xc0,0xdf,0xff,0xff]
          vmaxps -8256(%rdx), %zmm6, %zmm25

// CHECK: vmaxps 508(%rdx){1to16}, %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x58,0x5f,0x4a,0x7f]
          vmaxps 508(%rdx){1to16}, %zmm6, %zmm25

// CHECK: vmaxps 512(%rdx){1to16}, %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x58,0x5f,0x8a,0x00,0x02,0x00,0x00]
          vmaxps 512(%rdx){1to16}, %zmm6, %zmm25

// CHECK: vmaxps -512(%rdx){1to16}, %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x58,0x5f,0x4a,0x80]
          vmaxps -512(%rdx){1to16}, %zmm6, %zmm25

// CHECK: vmaxps -516(%rdx){1to16}, %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x61,0x4c,0x58,0x5f,0x8a,0xfc,0xfd,0xff,0xff]
          vmaxps -516(%rdx){1to16}, %zmm6, %zmm25

// CHECK: vminpd %zmm22, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xb1,0xcd,0x48,0x5d,0xf6]
          vminpd %zmm22, %zmm6, %zmm6

// CHECK: vminpd %zmm22, %zmm6, %zmm6 {%k7}
// CHECK:  encoding: [0x62,0xb1,0xcd,0x4f,0x5d,0xf6]
          vminpd %zmm22, %zmm6, %zmm6 {%k7}

// CHECK: vminpd %zmm22, %zmm6, %zmm6 {%k7} {z}
// CHECK:  encoding: [0x62,0xb1,0xcd,0xcf,0x5d,0xf6]
          vminpd %zmm22, %zmm6, %zmm6 {%k7} {z}

// CHECK: vminpd (%rcx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x5d,0x31]
          vminpd (%rcx), %zmm6, %zmm6

// CHECK: vminpd 291(%rax,%r14,8), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xb1,0xcd,0x48,0x5d,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vminpd 291(%rax,%r14,8), %zmm6, %zmm6

// CHECK: vminpd (%rcx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x5d,0x31]
          vminpd (%rcx){1to8}, %zmm6, %zmm6

// CHECK: vminpd 8128(%rdx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x5d,0x72,0x7f]
          vminpd 8128(%rdx), %zmm6, %zmm6

// CHECK: vminpd 8192(%rdx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x5d,0xb2,0x00,0x20,0x00,0x00]
          vminpd 8192(%rdx), %zmm6, %zmm6

// CHECK: vminpd -8192(%rdx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x5d,0x72,0x80]
          vminpd -8192(%rdx), %zmm6, %zmm6

// CHECK: vminpd -8256(%rdx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x5d,0xb2,0xc0,0xdf,0xff,0xff]
          vminpd -8256(%rdx), %zmm6, %zmm6

// CHECK: vminpd 1016(%rdx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x5d,0x72,0x7f]
          vminpd 1016(%rdx){1to8}, %zmm6, %zmm6

// CHECK: vminpd 1024(%rdx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x5d,0xb2,0x00,0x04,0x00,0x00]
          vminpd 1024(%rdx){1to8}, %zmm6, %zmm6

// CHECK: vminpd -1024(%rdx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x5d,0x72,0x80]
          vminpd -1024(%rdx){1to8}, %zmm6, %zmm6

// CHECK: vminpd -1032(%rdx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x5d,0xb2,0xf8,0xfb,0xff,0xff]
          vminpd -1032(%rdx){1to8}, %zmm6, %zmm6

// CHECK: vminps %zmm7, %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x5d,0xdf]
          vminps %zmm7, %zmm3, %zmm3

// CHECK: vminps %zmm7, %zmm3, %zmm3 {%k3}
// CHECK:  encoding: [0x62,0xf1,0x64,0x4b,0x5d,0xdf]
          vminps %zmm7, %zmm3, %zmm3 {%k3}

// CHECK: vminps %zmm7, %zmm3, %zmm3 {%k3} {z}
// CHECK:  encoding: [0x62,0xf1,0x64,0xcb,0x5d,0xdf]
          vminps %zmm7, %zmm3, %zmm3 {%k3} {z}

// CHECK: vminps (%rcx), %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x5d,0x19]
          vminps (%rcx), %zmm3, %zmm3

// CHECK: vminps 291(%rax,%r14,8), %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xb1,0x64,0x48,0x5d,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vminps 291(%rax,%r14,8), %zmm3, %zmm3

// CHECK: vminps (%rcx){1to16}, %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x5d,0x19]
          vminps (%rcx){1to16}, %zmm3, %zmm3

// CHECK: vminps 8128(%rdx), %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x5d,0x5a,0x7f]
          vminps 8128(%rdx), %zmm3, %zmm3

// CHECK: vminps 8192(%rdx), %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x5d,0x9a,0x00,0x20,0x00,0x00]
          vminps 8192(%rdx), %zmm3, %zmm3

// CHECK: vminps -8192(%rdx), %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x5d,0x5a,0x80]
          vminps -8192(%rdx), %zmm3, %zmm3

// CHECK: vminps -8256(%rdx), %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x5d,0x9a,0xc0,0xdf,0xff,0xff]
          vminps -8256(%rdx), %zmm3, %zmm3

// CHECK: vminps 508(%rdx){1to16}, %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x5d,0x5a,0x7f]
          vminps 508(%rdx){1to16}, %zmm3, %zmm3

// CHECK: vminps 512(%rdx){1to16}, %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x5d,0x9a,0x00,0x02,0x00,0x00]
          vminps 512(%rdx){1to16}, %zmm3, %zmm3

// CHECK: vminps -512(%rdx){1to16}, %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x5d,0x5a,0x80]
          vminps -512(%rdx){1to16}, %zmm3, %zmm3

// CHECK: vminps -516(%rdx){1to16}, %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x5d,0x9a,0xfc,0xfd,0xff,0xff]
          vminps -516(%rdx){1to16}, %zmm3, %zmm3

// CHECK: vmovapd %zmm14, %zmm7
// CHECK:  encoding: [0x62,0xd1,0xfd,0x48,0x28,0xfe]
          vmovapd %zmm14, %zmm7

// CHECK: vmovapd %zmm14, %zmm7 {%k5}
// CHECK:  encoding: [0x62,0xd1,0xfd,0x4d,0x28,0xfe]
          vmovapd %zmm14, %zmm7 {%k5}

// CHECK: vmovapd %zmm14, %zmm7 {%k5} {z}
// CHECK:  encoding: [0x62,0xd1,0xfd,0xcd,0x28,0xfe]
          vmovapd %zmm14, %zmm7 {%k5} {z}

// CHECK: vmovapd (%rcx), %zmm7
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x28,0x39]
          vmovapd (%rcx), %zmm7

// CHECK: vmovapd 291(%rax,%r14,8), %zmm7
// CHECK:  encoding: [0x62,0xb1,0xfd,0x48,0x28,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vmovapd 291(%rax,%r14,8), %zmm7

// CHECK: vmovapd 8128(%rdx), %zmm7
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x28,0x7a,0x7f]
          vmovapd 8128(%rdx), %zmm7

// CHECK: vmovapd 8192(%rdx), %zmm7
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x28,0xba,0x00,0x20,0x00,0x00]
          vmovapd 8192(%rdx), %zmm7

// CHECK: vmovapd -8192(%rdx), %zmm7
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x28,0x7a,0x80]
          vmovapd -8192(%rdx), %zmm7

// CHECK: vmovapd -8256(%rdx), %zmm7
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x28,0xba,0xc0,0xdf,0xff,0xff]
          vmovapd -8256(%rdx), %zmm7

// CHECK: vmovaps %zmm9, %zmm5
// CHECK:  encoding: [0x62,0xd1,0x7c,0x48,0x28,0xe9]
          vmovaps %zmm9, %zmm5

// CHECK: vmovaps %zmm9, %zmm5 {%k1}
// CHECK:  encoding: [0x62,0xd1,0x7c,0x49,0x28,0xe9]
          vmovaps %zmm9, %zmm5 {%k1}

// CHECK: vmovaps %zmm9, %zmm5 {%k1} {z}
// CHECK:  encoding: [0x62,0xd1,0x7c,0xc9,0x28,0xe9]
          vmovaps %zmm9, %zmm5 {%k1} {z}

// CHECK: vmovaps (%rcx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x28,0x29]
          vmovaps (%rcx), %zmm5

// CHECK: vmovaps 291(%rax,%r14,8), %zmm5
// CHECK:  encoding: [0x62,0xb1,0x7c,0x48,0x28,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovaps 291(%rax,%r14,8), %zmm5

// CHECK: vmovaps 8128(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x28,0x6a,0x7f]
          vmovaps 8128(%rdx), %zmm5

// CHECK: vmovaps 8192(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x28,0xaa,0x00,0x20,0x00,0x00]
          vmovaps 8192(%rdx), %zmm5

// CHECK: vmovaps -8192(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x28,0x6a,0x80]
          vmovaps -8192(%rdx), %zmm5

// CHECK: vmovaps -8256(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x28,0xaa,0xc0,0xdf,0xff,0xff]
          vmovaps -8256(%rdx), %zmm5

// CHECK: vmovdqa32 %zmm18, %zmm22
// CHECK:  encoding: [0x62,0xa1,0x7d,0x48,0x6f,0xf2]
          vmovdqa32 %zmm18, %zmm22

// CHECK: vmovdqa32 %zmm18, %zmm22 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x4e,0x6f,0xf2]
          vmovdqa32 %zmm18, %zmm22 {%k6}

// CHECK: vmovdqa32 %zmm18, %zmm22 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x7d,0xce,0x6f,0xf2]
          vmovdqa32 %zmm18, %zmm22 {%k6} {z}

// CHECK: vmovdqa32 (%rcx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x6f,0x31]
          vmovdqa32 (%rcx), %zmm22

// CHECK: vmovdqa32 291(%rax,%r14,8), %zmm22
// CHECK:  encoding: [0x62,0xa1,0x7d,0x48,0x6f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 291(%rax,%r14,8), %zmm22

// CHECK: vmovdqa32 8128(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x6f,0x72,0x7f]
          vmovdqa32 8128(%rdx), %zmm22

// CHECK: vmovdqa32 8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x6f,0xb2,0x00,0x20,0x00,0x00]
          vmovdqa32 8192(%rdx), %zmm22

// CHECK: vmovdqa32 -8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x6f,0x72,0x80]
          vmovdqa32 -8192(%rdx), %zmm22

// CHECK: vmovdqa32 -8256(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x6f,0xb2,0xc0,0xdf,0xff,0xff]
          vmovdqa32 -8256(%rdx), %zmm22

// CHECK: vmovdqa64 %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xc1,0xfd,0x48,0x6f,0xf4]
          vmovdqa64 %zmm12, %zmm22

// CHECK: vmovdqa64 %zmm12, %zmm22 {%k5}
// CHECK:  encoding: [0x62,0xc1,0xfd,0x4d,0x6f,0xf4]
          vmovdqa64 %zmm12, %zmm22 {%k5}

// CHECK: vmovdqa64 %zmm12, %zmm22 {%k5} {z}
// CHECK:  encoding: [0x62,0xc1,0xfd,0xcd,0x6f,0xf4]
          vmovdqa64 %zmm12, %zmm22 {%k5} {z}

// CHECK: vmovdqa64 (%rcx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x6f,0x31]
          vmovdqa64 (%rcx), %zmm22

// CHECK: vmovdqa64 291(%rax,%r14,8), %zmm22
// CHECK:  encoding: [0x62,0xa1,0xfd,0x48,0x6f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 291(%rax,%r14,8), %zmm22

// CHECK: vmovdqa64 8128(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x6f,0x72,0x7f]
          vmovdqa64 8128(%rdx), %zmm22

// CHECK: vmovdqa64 8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x6f,0xb2,0x00,0x20,0x00,0x00]
          vmovdqa64 8192(%rdx), %zmm22

// CHECK: vmovdqa64 -8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x6f,0x72,0x80]
          vmovdqa64 -8192(%rdx), %zmm22

// CHECK: vmovdqa64 -8256(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x6f,0xb2,0xc0,0xdf,0xff,0xff]
          vmovdqa64 -8256(%rdx), %zmm22

// CHECK: vmovdqu32 %zmm24, %zmm5
// CHECK:  encoding: [0x62,0x91,0x7e,0x48,0x6f,0xe8]
          vmovdqu32 %zmm24, %zmm5

// CHECK: vmovdqu32 %zmm24, %zmm5 {%k5}
// CHECK:  encoding: [0x62,0x91,0x7e,0x4d,0x6f,0xe8]
          vmovdqu32 %zmm24, %zmm5 {%k5}

// CHECK: vmovdqu32 %zmm24, %zmm5 {%k5} {z}
// CHECK:  encoding: [0x62,0x91,0x7e,0xcd,0x6f,0xe8]
          vmovdqu32 %zmm24, %zmm5 {%k5} {z}

// CHECK: vmovdqu32 (%rcx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7e,0x48,0x6f,0x29]
          vmovdqu32 (%rcx), %zmm5

// CHECK: vmovdqu32 291(%rax,%r14,8), %zmm5
// CHECK:  encoding: [0x62,0xb1,0x7e,0x48,0x6f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 291(%rax,%r14,8), %zmm5

// CHECK: vmovdqu32 8128(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7e,0x48,0x6f,0x6a,0x7f]
          vmovdqu32 8128(%rdx), %zmm5

// CHECK: vmovdqu32 8192(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7e,0x48,0x6f,0xaa,0x00,0x20,0x00,0x00]
          vmovdqu32 8192(%rdx), %zmm5

// CHECK: vmovdqu32 -8192(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7e,0x48,0x6f,0x6a,0x80]
          vmovdqu32 -8192(%rdx), %zmm5

// CHECK: vmovdqu32 -8256(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf1,0x7e,0x48,0x6f,0xaa,0xc0,0xdf,0xff,0xff]
          vmovdqu32 -8256(%rdx), %zmm5

// CHECK: vmovdqu64 %zmm15, %zmm6
// CHECK:  encoding: [0x62,0xd1,0xfe,0x48,0x6f,0xf7]
          vmovdqu64 %zmm15, %zmm6

// CHECK: vmovdqu64 %zmm15, %zmm6 {%k3}
// CHECK:  encoding: [0x62,0xd1,0xfe,0x4b,0x6f,0xf7]
          vmovdqu64 %zmm15, %zmm6 {%k3}

// CHECK: vmovdqu64 %zmm15, %zmm6 {%k3} {z}
// CHECK:  encoding: [0x62,0xd1,0xfe,0xcb,0x6f,0xf7]
          vmovdqu64 %zmm15, %zmm6 {%k3} {z}

// CHECK: vmovdqu64 (%rcx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xfe,0x48,0x6f,0x31]
          vmovdqu64 (%rcx), %zmm6

// CHECK: vmovdqu64 291(%rax,%r14,8), %zmm6
// CHECK:  encoding: [0x62,0xb1,0xfe,0x48,0x6f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 291(%rax,%r14,8), %zmm6

// CHECK: vmovdqu64 8128(%rdx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xfe,0x48,0x6f,0x72,0x7f]
          vmovdqu64 8128(%rdx), %zmm6

// CHECK: vmovdqu64 8192(%rdx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xfe,0x48,0x6f,0xb2,0x00,0x20,0x00,0x00]
          vmovdqu64 8192(%rdx), %zmm6

// CHECK: vmovdqu64 -8192(%rdx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xfe,0x48,0x6f,0x72,0x80]
          vmovdqu64 -8192(%rdx), %zmm6

// CHECK: vmovdqu64 -8256(%rdx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xfe,0x48,0x6f,0xb2,0xc0,0xdf,0xff,0xff]
          vmovdqu64 -8256(%rdx), %zmm6

// CHECK: vmovntdq %zmm24, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x48,0xe7,0x01]
          vmovntdq %zmm24, (%rcx)

// CHECK: vmovntdq %zmm24, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7d,0x48,0xe7,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovntdq %zmm24, 291(%rax,%r14,8)

// CHECK: vmovntdq %zmm24, 8128(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x48,0xe7,0x42,0x7f]
          vmovntdq %zmm24, 8128(%rdx)

// CHECK: vmovntdq %zmm24, 8192(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x48,0xe7,0x82,0x00,0x20,0x00,0x00]
          vmovntdq %zmm24, 8192(%rdx)

// CHECK: vmovntdq %zmm24, -8192(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x48,0xe7,0x42,0x80]
          vmovntdq %zmm24, -8192(%rdx)

// CHECK: vmovntdq %zmm24, -8256(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x48,0xe7,0x82,0xc0,0xdf,0xff,0xff]
          vmovntdq %zmm24, -8256(%rdx)

// CHECK: vmovntdqa (%rcx), %zmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x2a,0x09]
          vmovntdqa (%rcx), %zmm17

// CHECK: vmovntdqa 291(%rax,%r14,8), %zmm17
// CHECK:  encoding: [0x62,0xa2,0x7d,0x48,0x2a,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovntdqa 291(%rax,%r14,8), %zmm17

// CHECK: vmovntdqa 8128(%rdx), %zmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x2a,0x4a,0x7f]
          vmovntdqa 8128(%rdx), %zmm17

// CHECK: vmovntdqa 8192(%rdx), %zmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x2a,0x8a,0x00,0x20,0x00,0x00]
          vmovntdqa 8192(%rdx), %zmm17

// CHECK: vmovntdqa -8192(%rdx), %zmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x2a,0x4a,0x80]
          vmovntdqa -8192(%rdx), %zmm17

// CHECK: vmovntdqa -8256(%rdx), %zmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x2a,0x8a,0xc0,0xdf,0xff,0xff]
          vmovntdqa -8256(%rdx), %zmm17

// CHECK: vmovntpd %zmm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x2b,0x09]
          vmovntpd %zmm17, (%rcx)

// CHECK: vmovntpd %zmm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x48,0x2b,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovntpd %zmm17, 291(%rax,%r14,8)

// CHECK: vmovntpd %zmm17, 8128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x2b,0x4a,0x7f]
          vmovntpd %zmm17, 8128(%rdx)

// CHECK: vmovntpd %zmm17, 8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x2b,0x8a,0x00,0x20,0x00,0x00]
          vmovntpd %zmm17, 8192(%rdx)

// CHECK: vmovntpd %zmm17, -8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x2b,0x4a,0x80]
          vmovntpd %zmm17, -8192(%rdx)

// CHECK: vmovntpd %zmm17, -8256(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x2b,0x8a,0xc0,0xdf,0xff,0xff]
          vmovntpd %zmm17, -8256(%rdx)

// CHECK: vmovntps %zmm5, (%rcx)
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x2b,0x29]
          vmovntps %zmm5, (%rcx)

// CHECK: vmovntps %zmm5, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xb1,0x7c,0x48,0x2b,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovntps %zmm5, 291(%rax,%r14,8)

// CHECK: vmovntps %zmm5, 8128(%rdx)
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x2b,0x6a,0x7f]
          vmovntps %zmm5, 8128(%rdx)

// CHECK: vmovntps %zmm5, 8192(%rdx)
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x2b,0xaa,0x00,0x20,0x00,0x00]
          vmovntps %zmm5, 8192(%rdx)

// CHECK: vmovntps %zmm5, -8192(%rdx)
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x2b,0x6a,0x80]
          vmovntps %zmm5, -8192(%rdx)

// CHECK: vmovntps %zmm5, -8256(%rdx)
// CHECK:  encoding: [0x62,0xf1,0x7c,0x48,0x2b,0xaa,0xc0,0xdf,0xff,0xff]
          vmovntps %zmm5, -8256(%rdx)

// CHECK: vmovupd %zmm9, %zmm27
// CHECK:  encoding: [0x62,0x41,0xfd,0x48,0x10,0xd9]
          vmovupd %zmm9, %zmm27

// CHECK: vmovupd %zmm9, %zmm27 {%k2}
// CHECK:  encoding: [0x62,0x41,0xfd,0x4a,0x10,0xd9]
          vmovupd %zmm9, %zmm27 {%k2}

// CHECK: vmovupd %zmm9, %zmm27 {%k2} {z}
// CHECK:  encoding: [0x62,0x41,0xfd,0xca,0x10,0xd9]
          vmovupd %zmm9, %zmm27 {%k2} {z}

// CHECK: vmovupd (%rcx), %zmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x48,0x10,0x19]
          vmovupd (%rcx), %zmm27

// CHECK: vmovupd 291(%rax,%r14,8), %zmm27
// CHECK:  encoding: [0x62,0x21,0xfd,0x48,0x10,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmovupd 291(%rax,%r14,8), %zmm27

// CHECK: vmovupd 8128(%rdx), %zmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x48,0x10,0x5a,0x7f]
          vmovupd 8128(%rdx), %zmm27

// CHECK: vmovupd 8192(%rdx), %zmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x48,0x10,0x9a,0x00,0x20,0x00,0x00]
          vmovupd 8192(%rdx), %zmm27

// CHECK: vmovupd -8192(%rdx), %zmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x48,0x10,0x5a,0x80]
          vmovupd -8192(%rdx), %zmm27

// CHECK: vmovupd -8256(%rdx), %zmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x48,0x10,0x9a,0xc0,0xdf,0xff,0xff]
          vmovupd -8256(%rdx), %zmm27

// CHECK: vmovups %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xa1,0x7c,0x48,0x10,0xf6]
          vmovups %zmm22, %zmm22

// CHECK: vmovups %zmm22, %zmm22 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x4b,0x10,0xf6]
          vmovups %zmm22, %zmm22 {%k3}

// CHECK: vmovups %zmm22, %zmm22 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x7c,0xcb,0x10,0xf6]
          vmovups %zmm22, %zmm22 {%k3} {z}

// CHECK: vmovups (%rcx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x48,0x10,0x31]
          vmovups (%rcx), %zmm22

// CHECK: vmovups 291(%rax,%r14,8), %zmm22
// CHECK:  encoding: [0x62,0xa1,0x7c,0x48,0x10,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovups 291(%rax,%r14,8), %zmm22

// CHECK: vmovups 8128(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x48,0x10,0x72,0x7f]
          vmovups 8128(%rdx), %zmm22

// CHECK: vmovups 8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x48,0x10,0xb2,0x00,0x20,0x00,0x00]
          vmovups 8192(%rdx), %zmm22

// CHECK: vmovups -8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x48,0x10,0x72,0x80]
          vmovups -8192(%rdx), %zmm22

// CHECK: vmovups -8256(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x48,0x10,0xb2,0xc0,0xdf,0xff,0xff]
          vmovups -8256(%rdx), %zmm22

// CHECK: vmulpd %zmm23, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x21,0xdd,0x48,0x59,0xc7]
          vmulpd %zmm23, %zmm4, %zmm24

// CHECK: vmulpd %zmm23, %zmm4, %zmm24 {%k6}
// CHECK:  encoding: [0x62,0x21,0xdd,0x4e,0x59,0xc7]
          vmulpd %zmm23, %zmm4, %zmm24 {%k6}

// CHECK: vmulpd %zmm23, %zmm4, %zmm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xdd,0xce,0x59,0xc7]
          vmulpd %zmm23, %zmm4, %zmm24 {%k6} {z}

// CHECK: vmulpd (%rcx), %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x48,0x59,0x01]
          vmulpd (%rcx), %zmm4, %zmm24

// CHECK: vmulpd 291(%rax,%r14,8), %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x21,0xdd,0x48,0x59,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmulpd 291(%rax,%r14,8), %zmm4, %zmm24

// CHECK: vmulpd (%rcx){1to8}, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x58,0x59,0x01]
          vmulpd (%rcx){1to8}, %zmm4, %zmm24

// CHECK: vmulpd 8128(%rdx), %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x48,0x59,0x42,0x7f]
          vmulpd 8128(%rdx), %zmm4, %zmm24

// CHECK: vmulpd 8192(%rdx), %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x48,0x59,0x82,0x00,0x20,0x00,0x00]
          vmulpd 8192(%rdx), %zmm4, %zmm24

// CHECK: vmulpd -8192(%rdx), %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x48,0x59,0x42,0x80]
          vmulpd -8192(%rdx), %zmm4, %zmm24

// CHECK: vmulpd -8256(%rdx), %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x48,0x59,0x82,0xc0,0xdf,0xff,0xff]
          vmulpd -8256(%rdx), %zmm4, %zmm24

// CHECK: vmulpd 1016(%rdx){1to8}, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x58,0x59,0x42,0x7f]
          vmulpd 1016(%rdx){1to8}, %zmm4, %zmm24

// CHECK: vmulpd 1024(%rdx){1to8}, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x58,0x59,0x82,0x00,0x04,0x00,0x00]
          vmulpd 1024(%rdx){1to8}, %zmm4, %zmm24

// CHECK: vmulpd -1024(%rdx){1to8}, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x58,0x59,0x42,0x80]
          vmulpd -1024(%rdx){1to8}, %zmm4, %zmm24

// CHECK: vmulpd -1032(%rdx){1to8}, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x61,0xdd,0x58,0x59,0x82,0xf8,0xfb,0xff,0xff]
          vmulpd -1032(%rdx){1to8}, %zmm4, %zmm24

// CHECK: vmulps %zmm24, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0x91,0x4c,0x48,0x59,0xd8]
          vmulps %zmm24, %zmm6, %zmm3

// CHECK: vmulps %zmm24, %zmm6, %zmm3 {%k4}
// CHECK:  encoding: [0x62,0x91,0x4c,0x4c,0x59,0xd8]
          vmulps %zmm24, %zmm6, %zmm3 {%k4}

// CHECK: vmulps %zmm24, %zmm6, %zmm3 {%k4} {z}
// CHECK:  encoding: [0x62,0x91,0x4c,0xcc,0x59,0xd8]
          vmulps %zmm24, %zmm6, %zmm3 {%k4} {z}

// CHECK: vmulps (%rcx), %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0x59,0x19]
          vmulps (%rcx), %zmm6, %zmm3

// CHECK: vmulps 291(%rax,%r14,8), %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xb1,0x4c,0x48,0x59,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmulps 291(%rax,%r14,8), %zmm6, %zmm3

// CHECK: vmulps (%rcx){1to16}, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0x59,0x19]
          vmulps (%rcx){1to16}, %zmm6, %zmm3

// CHECK: vmulps 8128(%rdx), %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0x59,0x5a,0x7f]
          vmulps 8128(%rdx), %zmm6, %zmm3

// CHECK: vmulps 8192(%rdx), %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0x59,0x9a,0x00,0x20,0x00,0x00]
          vmulps 8192(%rdx), %zmm6, %zmm3

// CHECK: vmulps -8192(%rdx), %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0x59,0x5a,0x80]
          vmulps -8192(%rdx), %zmm6, %zmm3

// CHECK: vmulps -8256(%rdx), %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0x59,0x9a,0xc0,0xdf,0xff,0xff]
          vmulps -8256(%rdx), %zmm6, %zmm3

// CHECK: vmulps 508(%rdx){1to16}, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0x59,0x5a,0x7f]
          vmulps 508(%rdx){1to16}, %zmm6, %zmm3

// CHECK: vmulps 512(%rdx){1to16}, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0x59,0x9a,0x00,0x02,0x00,0x00]
          vmulps 512(%rdx){1to16}, %zmm6, %zmm3

// CHECK: vmulps -512(%rdx){1to16}, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0x59,0x5a,0x80]
          vmulps -512(%rdx){1to16}, %zmm6, %zmm3

// CHECK: vmulps -516(%rdx){1to16}, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0x59,0x9a,0xfc,0xfd,0xff,0xff]
          vmulps -516(%rdx){1to16}, %zmm6, %zmm3

// CHECK: vpabsd %zmm14, %zmm15
// CHECK:  encoding: [0x62,0x52,0x7d,0x48,0x1e,0xfe]
          vpabsd %zmm14, %zmm15

// CHECK: vpabsd %zmm14, %zmm15 {%k6}
// CHECK:  encoding: [0x62,0x52,0x7d,0x4e,0x1e,0xfe]
          vpabsd %zmm14, %zmm15 {%k6}

// CHECK: vpabsd %zmm14, %zmm15 {%k6} {z}
// CHECK:  encoding: [0x62,0x52,0x7d,0xce,0x1e,0xfe]
          vpabsd %zmm14, %zmm15 {%k6} {z}

// CHECK: vpabsd (%rcx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0x39]
          vpabsd (%rcx), %zmm15

// CHECK: vpabsd (%rcx), %zmm15 {%k1}
// CHECK:  encoding: [0x62,0x72,0x7d,0x49,0x1e,0x39]
          vpabsd (%rcx), %zmm15 {%k1}

// CHECK: vpabsd (%rcx), %zmm15 {%k1} {z}
// CHECK:  encoding: [0x62,0x72,0x7d,0xc9,0x1e,0x39]
          vpabsd (%rcx), %zmm15 {%k1} {z}

// CHECK: vpabsd 291(%rax,%r14,8), %zmm15
// CHECK:  encoding: [0x62,0x32,0x7d,0x48,0x1e,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpabsd 291(%rax,%r14,8), %zmm15

// CHECK: vpabsd (%rcx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0x39]
          vpabsd (%rcx){1to16}, %zmm15

// CHECK: vpabsd 8128(%rdx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0x7a,0x7f]
          vpabsd 8128(%rdx), %zmm15

// CHECK: vpabsd 8192(%rdx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0xba,0x00,0x20,0x00,0x00]
          vpabsd 8192(%rdx), %zmm15

// CHECK: vpabsd -8192(%rdx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0x7a,0x80]
          vpabsd -8192(%rdx), %zmm15

// CHECK: vpabsd -8256(%rdx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0xba,0xc0,0xdf,0xff,0xff]
          vpabsd -8256(%rdx), %zmm15

// CHECK: vpabsd 508(%rdx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0x7a,0x7f]
          vpabsd 508(%rdx){1to16}, %zmm15

// CHECK: vpabsd 512(%rdx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0xba,0x00,0x02,0x00,0x00]
          vpabsd 512(%rdx){1to16}, %zmm15

// CHECK: vpabsd -512(%rdx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0x7a,0x80]
          vpabsd -512(%rdx){1to16}, %zmm15

// CHECK: vpabsd -516(%rdx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0xba,0xfc,0xfd,0xff,0xff]
          vpabsd -516(%rdx){1to16}, %zmm15

// CHECK: vpabsd (%rcx){1to16}, %zmm15 {%k2}
// CHECK:  encoding: [0x62,0x72,0x7d,0x5a,0x1e,0x39]
          vpabsd (%rcx){1to16}, %zmm15 {%k2}

// CHECK: vpabsd (%rcx){1to16}, %zmm15 {%k2} {z}
// CHECK:  encoding: [0x62,0x72,0x7d,0xda,0x1e,0x39]
          vpabsd (%rcx){1to16}, %zmm15 {%k2} {z}

// CHECK: vpabsq %zmm24, %zmm5
// CHECK:  encoding: [0x62,0x92,0xfd,0x48,0x1f,0xe8]
          vpabsq %zmm24, %zmm5

// CHECK: vpabsq %zmm24, %zmm5 {%k6}
// CHECK:  encoding: [0x62,0x92,0xfd,0x4e,0x1f,0xe8]
          vpabsq %zmm24, %zmm5 {%k6}

// CHECK: vpabsq %zmm24, %zmm5 {%k6} {z}
// CHECK:  encoding: [0x62,0x92,0xfd,0xce,0x1f,0xe8]
          vpabsq %zmm24, %zmm5 {%k6} {z}

// CHECK: vpabsq (%rcx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0x29]
          vpabsq (%rcx), %zmm5

// CHECK: vpabsq 291(%rax,%r14,8), %zmm5
// CHECK:  encoding: [0x62,0xb2,0xfd,0x48,0x1f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpabsq 291(%rax,%r14,8), %zmm5

// CHECK: vpabsq (%rcx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0x29]
          vpabsq (%rcx){1to8}, %zmm5

// CHECK: vpabsq 8128(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0x6a,0x7f]
          vpabsq 8128(%rdx), %zmm5

// CHECK: vpabsq 8192(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0xaa,0x00,0x20,0x00,0x00]
          vpabsq 8192(%rdx), %zmm5

// CHECK: vpabsq -8192(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0x6a,0x80]
          vpabsq -8192(%rdx), %zmm5

// CHECK: vpabsq -8256(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0xaa,0xc0,0xdf,0xff,0xff]
          vpabsq -8256(%rdx), %zmm5

// CHECK: vpabsq 1016(%rdx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0x6a,0x7f]
          vpabsq 1016(%rdx){1to8}, %zmm5

// CHECK: vpabsq 1024(%rdx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0xaa,0x00,0x04,0x00,0x00]
          vpabsq 1024(%rdx){1to8}, %zmm5

// CHECK: vpabsq -1024(%rdx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0x6a,0x80]
          vpabsq -1024(%rdx){1to8}, %zmm5

// CHECK: vpabsq -1032(%rdx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0xaa,0xf8,0xfb,0xff,0xff]
          vpabsq -1032(%rdx){1to8}, %zmm5

// CHECK: vpaddd %zmm20, %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x21,0x55,0x48,0xfe,0xd4]
          vpaddd %zmm20, %zmm5, %zmm26

// CHECK: vpaddd %zmm20, %zmm5, %zmm26 {%k1}
// CHECK:  encoding: [0x62,0x21,0x55,0x49,0xfe,0xd4]
          vpaddd %zmm20, %zmm5, %zmm26 {%k1}

// CHECK: vpaddd %zmm20, %zmm5, %zmm26 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x55,0xc9,0xfe,0xd4]
          vpaddd %zmm20, %zmm5, %zmm26 {%k1} {z}

// CHECK: vpaddd (%rcx), %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x48,0xfe,0x11]
          vpaddd (%rcx), %zmm5, %zmm26

// CHECK: vpaddd (%rcx), %zmm5, %zmm26 {%k2}
// CHECK:  encoding: [0x62,0x61,0x55,0x4a,0xfe,0x11]
          vpaddd (%rcx), %zmm5, %zmm26 {%k2}

// CHECK: vpaddd (%rcx), %zmm5, %zmm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x61,0x55,0xca,0xfe,0x11]
          vpaddd (%rcx), %zmm5, %zmm26 {%k2} {z}

// CHECK: vpaddd 291(%rax,%r14,8), %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x21,0x55,0x48,0xfe,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpaddd 291(%rax,%r14,8), %zmm5, %zmm26

// CHECK: vpaddd (%rcx){1to16}, %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x58,0xfe,0x11]
          vpaddd (%rcx){1to16}, %zmm5, %zmm26

// CHECK: vpaddd 8128(%rdx), %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x48,0xfe,0x52,0x7f]
          vpaddd 8128(%rdx), %zmm5, %zmm26

// CHECK: vpaddd 8192(%rdx), %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x48,0xfe,0x92,0x00,0x20,0x00,0x00]
          vpaddd 8192(%rdx), %zmm5, %zmm26

// CHECK: vpaddd -8192(%rdx), %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x48,0xfe,0x52,0x80]
          vpaddd -8192(%rdx), %zmm5, %zmm26

// CHECK: vpaddd -8256(%rdx), %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x48,0xfe,0x92,0xc0,0xdf,0xff,0xff]
          vpaddd -8256(%rdx), %zmm5, %zmm26

// CHECK: vpaddd (%rcx){1to16}, %zmm5, %zmm26 {%k2}
// CHECK:  encoding: [0x62,0x61,0x55,0x5a,0xfe,0x11]
          vpaddd (%rcx){1to16}, %zmm5, %zmm26 {%k2}

// CHECK: vpaddd (%rcx){1to16}, %zmm5, %zmm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x61,0x55,0xda,0xfe,0x11]
          vpaddd (%rcx){1to16}, %zmm5, %zmm26 {%k2} {z}

// CHECK: vpaddd 508(%rdx){1to16}, %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x58,0xfe,0x52,0x7f]
          vpaddd 508(%rdx){1to16}, %zmm5, %zmm26

// CHECK: vpaddd 512(%rdx){1to16}, %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x58,0xfe,0x92,0x00,0x02,0x00,0x00]
          vpaddd 512(%rdx){1to16}, %zmm5, %zmm26

// CHECK: vpaddd -512(%rdx){1to16}, %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x58,0xfe,0x52,0x80]
          vpaddd -512(%rdx){1to16}, %zmm5, %zmm26

// CHECK: vpaddd -516(%rdx){1to16}, %zmm5, %zmm26
// CHECK:  encoding: [0x62,0x61,0x55,0x58,0xfe,0x92,0xfc,0xfd,0xff,0xff]
          vpaddd -516(%rdx){1to16}, %zmm5, %zmm26

// CHECK: vpaddq %zmm14, %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x51,0xb5,0x40,0xd4,0xc6]
          vpaddq %zmm14, %zmm25, %zmm8

// CHECK: vpaddq %zmm14, %zmm25, %zmm8 {%k3}
// CHECK:  encoding: [0x62,0x51,0xb5,0x43,0xd4,0xc6]
          vpaddq %zmm14, %zmm25, %zmm8 {%k3}

// CHECK: vpaddq %zmm14, %zmm25, %zmm8 {%k3} {z}
// CHECK:  encoding: [0x62,0x51,0xb5,0xc3,0xd4,0xc6]
          vpaddq %zmm14, %zmm25, %zmm8 {%k3} {z}

// CHECK: vpaddq (%rcx), %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x40,0xd4,0x01]
          vpaddq (%rcx), %zmm25, %zmm8

// CHECK: vpaddq 291(%rax,%r14,8), %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x31,0xb5,0x40,0xd4,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpaddq 291(%rax,%r14,8), %zmm25, %zmm8

// CHECK: vpaddq (%rcx){1to8}, %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x50,0xd4,0x01]
          vpaddq (%rcx){1to8}, %zmm25, %zmm8

// CHECK: vpaddq 8128(%rdx), %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x40,0xd4,0x42,0x7f]
          vpaddq 8128(%rdx), %zmm25, %zmm8

// CHECK: vpaddq 8192(%rdx), %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x40,0xd4,0x82,0x00,0x20,0x00,0x00]
          vpaddq 8192(%rdx), %zmm25, %zmm8

// CHECK: vpaddq -8192(%rdx), %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x40,0xd4,0x42,0x80]
          vpaddq -8192(%rdx), %zmm25, %zmm8

// CHECK: vpaddq -8256(%rdx), %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x40,0xd4,0x82,0xc0,0xdf,0xff,0xff]
          vpaddq -8256(%rdx), %zmm25, %zmm8

// CHECK: vpaddq 1016(%rdx){1to8}, %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x50,0xd4,0x42,0x7f]
          vpaddq 1016(%rdx){1to8}, %zmm25, %zmm8

// CHECK: vpaddq 1024(%rdx){1to8}, %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x50,0xd4,0x82,0x00,0x04,0x00,0x00]
          vpaddq 1024(%rdx){1to8}, %zmm25, %zmm8

// CHECK: vpaddq -1024(%rdx){1to8}, %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x50,0xd4,0x42,0x80]
          vpaddq -1024(%rdx){1to8}, %zmm25, %zmm8

// CHECK: vpaddq -1032(%rdx){1to8}, %zmm25, %zmm8
// CHECK:  encoding: [0x62,0x71,0xb5,0x50,0xd4,0x82,0xf8,0xfb,0xff,0xff]
          vpaddq -1032(%rdx){1to8}, %zmm25, %zmm8

// CHECK: vpandd %zmm25, %zmm22, %zmm19
// CHECK:  encoding: [0x62,0x81,0x4d,0x40,0xdb,0xd9]
          vpandd %zmm25, %zmm22, %zmm19

// CHECK: vpandd %zmm25, %zmm22, %zmm19 {%k1}
// CHECK:  encoding: [0x62,0x81,0x4d,0x41,0xdb,0xd9]
          vpandd %zmm25, %zmm22, %zmm19 {%k1}

// CHECK: vpandd %zmm25, %zmm22, %zmm19 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x4d,0xc1,0xdb,0xd9]
          vpandd %zmm25, %zmm22, %zmm19 {%k1} {z}

// CHECK: vpandd (%rcx), %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x40,0xdb,0x19]
          vpandd (%rcx), %zmm22, %zmm19

// CHECK: vpandd 291(%rax,%r14,8), %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xa1,0x4d,0x40,0xdb,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpandd 291(%rax,%r14,8), %zmm22, %zmm19

// CHECK: vpandd (%rcx){1to16}, %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x50,0xdb,0x19]
          vpandd (%rcx){1to16}, %zmm22, %zmm19

// CHECK: vpandd 8128(%rdx), %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x40,0xdb,0x5a,0x7f]
          vpandd 8128(%rdx), %zmm22, %zmm19

// CHECK: vpandd 8192(%rdx), %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x40,0xdb,0x9a,0x00,0x20,0x00,0x00]
          vpandd 8192(%rdx), %zmm22, %zmm19

// CHECK: vpandd -8192(%rdx), %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x40,0xdb,0x5a,0x80]
          vpandd -8192(%rdx), %zmm22, %zmm19

// CHECK: vpandd -8256(%rdx), %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x40,0xdb,0x9a,0xc0,0xdf,0xff,0xff]
          vpandd -8256(%rdx), %zmm22, %zmm19

// CHECK: vpandd 508(%rdx){1to16}, %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x50,0xdb,0x5a,0x7f]
          vpandd 508(%rdx){1to16}, %zmm22, %zmm19

// CHECK: vpandd 512(%rdx){1to16}, %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x50,0xdb,0x9a,0x00,0x02,0x00,0x00]
          vpandd 512(%rdx){1to16}, %zmm22, %zmm19

// CHECK: vpandd -512(%rdx){1to16}, %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x50,0xdb,0x5a,0x80]
          vpandd -512(%rdx){1to16}, %zmm22, %zmm19

// CHECK: vpandd -516(%rdx){1to16}, %zmm22, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x4d,0x50,0xdb,0x9a,0xfc,0xfd,0xff,0xff]
          vpandd -516(%rdx){1to16}, %zmm22, %zmm19

// CHECK: vpandnd %zmm15, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x41,0x1d,0x40,0xdf,0xf7]
          vpandnd %zmm15, %zmm28, %zmm30

// CHECK: vpandnd %zmm15, %zmm28, %zmm30 {%k3}
// CHECK:  encoding: [0x62,0x41,0x1d,0x43,0xdf,0xf7]
          vpandnd %zmm15, %zmm28, %zmm30 {%k3}

// CHECK: vpandnd %zmm15, %zmm28, %zmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x41,0x1d,0xc3,0xdf,0xf7]
          vpandnd %zmm15, %zmm28, %zmm30 {%k3} {z}

// CHECK: vpandnd (%rcx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x40,0xdf,0x31]
          vpandnd (%rcx), %zmm28, %zmm30

// CHECK: vpandnd 291(%rax,%r14,8), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x21,0x1d,0x40,0xdf,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpandnd 291(%rax,%r14,8), %zmm28, %zmm30

// CHECK: vpandnd (%rcx){1to16}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x50,0xdf,0x31]
          vpandnd (%rcx){1to16}, %zmm28, %zmm30

// CHECK: vpandnd 8128(%rdx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x40,0xdf,0x72,0x7f]
          vpandnd 8128(%rdx), %zmm28, %zmm30

// CHECK: vpandnd 8192(%rdx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x40,0xdf,0xb2,0x00,0x20,0x00,0x00]
          vpandnd 8192(%rdx), %zmm28, %zmm30

// CHECK: vpandnd -8192(%rdx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x40,0xdf,0x72,0x80]
          vpandnd -8192(%rdx), %zmm28, %zmm30

// CHECK: vpandnd -8256(%rdx), %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x40,0xdf,0xb2,0xc0,0xdf,0xff,0xff]
          vpandnd -8256(%rdx), %zmm28, %zmm30

// CHECK: vpandnd 508(%rdx){1to16}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x50,0xdf,0x72,0x7f]
          vpandnd 508(%rdx){1to16}, %zmm28, %zmm30

// CHECK: vpandnd 512(%rdx){1to16}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x50,0xdf,0xb2,0x00,0x02,0x00,0x00]
          vpandnd 512(%rdx){1to16}, %zmm28, %zmm30

// CHECK: vpandnd -512(%rdx){1to16}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x50,0xdf,0x72,0x80]
          vpandnd -512(%rdx){1to16}, %zmm28, %zmm30

// CHECK: vpandnd -516(%rdx){1to16}, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x50,0xdf,0xb2,0xfc,0xfd,0xff,0xff]
          vpandnd -516(%rdx){1to16}, %zmm28, %zmm30

// CHECK: vpandnq %zmm19, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xa1,0xc5,0x48,0xdf,0xe3]
          vpandnq %zmm19, %zmm7, %zmm20

// CHECK: vpandnq %zmm19, %zmm7, %zmm20 {%k5}
// CHECK:  encoding: [0x62,0xa1,0xc5,0x4d,0xdf,0xe3]
          vpandnq %zmm19, %zmm7, %zmm20 {%k5}

// CHECK: vpandnq %zmm19, %zmm7, %zmm20 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0xc5,0xcd,0xdf,0xe3]
          vpandnq %zmm19, %zmm7, %zmm20 {%k5} {z}

// CHECK: vpandnq (%rcx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x48,0xdf,0x21]
          vpandnq (%rcx), %zmm7, %zmm20

// CHECK: vpandnq 291(%rax,%r14,8), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xa1,0xc5,0x48,0xdf,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpandnq 291(%rax,%r14,8), %zmm7, %zmm20

// CHECK: vpandnq (%rcx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x58,0xdf,0x21]
          vpandnq (%rcx){1to8}, %zmm7, %zmm20

// CHECK: vpandnq 8128(%rdx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x48,0xdf,0x62,0x7f]
          vpandnq 8128(%rdx), %zmm7, %zmm20

// CHECK: vpandnq 8192(%rdx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x48,0xdf,0xa2,0x00,0x20,0x00,0x00]
          vpandnq 8192(%rdx), %zmm7, %zmm20

// CHECK: vpandnq -8192(%rdx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x48,0xdf,0x62,0x80]
          vpandnq -8192(%rdx), %zmm7, %zmm20

// CHECK: vpandnq -8256(%rdx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x48,0xdf,0xa2,0xc0,0xdf,0xff,0xff]
          vpandnq -8256(%rdx), %zmm7, %zmm20

// CHECK: vpandnq 1016(%rdx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x58,0xdf,0x62,0x7f]
          vpandnq 1016(%rdx){1to8}, %zmm7, %zmm20

// CHECK: vpandnq 1024(%rdx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x58,0xdf,0xa2,0x00,0x04,0x00,0x00]
          vpandnq 1024(%rdx){1to8}, %zmm7, %zmm20

// CHECK: vpandnq -1024(%rdx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x58,0xdf,0x62,0x80]
          vpandnq -1024(%rdx){1to8}, %zmm7, %zmm20

// CHECK: vpandnq -1032(%rdx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe1,0xc5,0x58,0xdf,0xa2,0xf8,0xfb,0xff,0xff]
          vpandnq -1032(%rdx){1to8}, %zmm7, %zmm20

// CHECK: vpandq %zmm26, %zmm4, %zmm17
// CHECK:  encoding: [0x62,0x81,0xdd,0x48,0xdb,0xca]
          vpandq %zmm26, %zmm4, %zmm17

// CHECK: vpandq %zmm26, %zmm4, %zmm17 {%k7}
// CHECK:  encoding: [0x62,0x81,0xdd,0x4f,0xdb,0xca]
          vpandq %zmm26, %zmm4, %zmm17 {%k7}

// CHECK: vpandq %zmm26, %zmm4, %zmm17 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0xdd,0xcf,0xdb,0xca]
          vpandq %zmm26, %zmm4, %zmm17 {%k7} {z}

// CHECK: vpandq (%rcx), %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x48,0xdb,0x09]
          vpandq (%rcx), %zmm4, %zmm17

// CHECK: vpandq 291(%rax,%r14,8), %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xa1,0xdd,0x48,0xdb,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpandq 291(%rax,%r14,8), %zmm4, %zmm17

// CHECK: vpandq (%rcx){1to8}, %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x58,0xdb,0x09]
          vpandq (%rcx){1to8}, %zmm4, %zmm17

// CHECK: vpandq 8128(%rdx), %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x48,0xdb,0x4a,0x7f]
          vpandq 8128(%rdx), %zmm4, %zmm17

// CHECK: vpandq 8192(%rdx), %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x48,0xdb,0x8a,0x00,0x20,0x00,0x00]
          vpandq 8192(%rdx), %zmm4, %zmm17

// CHECK: vpandq -8192(%rdx), %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x48,0xdb,0x4a,0x80]
          vpandq -8192(%rdx), %zmm4, %zmm17

// CHECK: vpandq -8256(%rdx), %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x48,0xdb,0x8a,0xc0,0xdf,0xff,0xff]
          vpandq -8256(%rdx), %zmm4, %zmm17

// CHECK: vpandq 1016(%rdx){1to8}, %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x58,0xdb,0x4a,0x7f]
          vpandq 1016(%rdx){1to8}, %zmm4, %zmm17

// CHECK: vpandq 1024(%rdx){1to8}, %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x58,0xdb,0x8a,0x00,0x04,0x00,0x00]
          vpandq 1024(%rdx){1to8}, %zmm4, %zmm17

// CHECK: vpandq -1024(%rdx){1to8}, %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x58,0xdb,0x4a,0x80]
          vpandq -1024(%rdx){1to8}, %zmm4, %zmm17

// CHECK: vpandq -1032(%rdx){1to8}, %zmm4, %zmm17
// CHECK:  encoding: [0x62,0xe1,0xdd,0x58,0xdb,0x8a,0xf8,0xfb,0xff,0xff]
          vpandq -1032(%rdx){1to8}, %zmm4, %zmm17

// CHECK: vpbroadcastd %eax, %zmm11
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x7c,0xd8]
          vpbroadcastd %eax, %zmm11

// CHECK: vpbroadcastd %eax, %zmm11 {%k6}
// CHECK:  encoding: [0x62,0x72,0x7d,0x4e,0x7c,0xd8]
          vpbroadcastd %eax, %zmm11 {%k6}

// CHECK: vpbroadcastd %eax, %zmm11 {%k6} {z}
// CHECK:  encoding: [0x62,0x72,0x7d,0xce,0x7c,0xd8]
          vpbroadcastd %eax, %zmm11 {%k6} {z}

// CHECK: vpbroadcastd %ebp, %zmm11
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x7c,0xdd]
          vpbroadcastd %ebp, %zmm11

// CHECK: vpbroadcastd %r13d, %zmm11
// CHECK:  encoding: [0x62,0x52,0x7d,0x48,0x7c,0xdd]
          vpbroadcastd %r13d, %zmm11

// CHECK: vpbroadcastq %rax, %zmm1
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x7c,0xc8]
          vpbroadcastq %rax, %zmm1

// CHECK: vpbroadcastq %rax, %zmm1 {%k6}
// CHECK:  encoding: [0x62,0xf2,0xfd,0x4e,0x7c,0xc8]
          vpbroadcastq %rax, %zmm1 {%k6}

// CHECK: vpbroadcastq %rax, %zmm1 {%k6} {z}
// CHECK:  encoding: [0x62,0xf2,0xfd,0xce,0x7c,0xc8]
          vpbroadcastq %rax, %zmm1 {%k6} {z}

// CHECK: vpbroadcastq %r8, %zmm1
// CHECK:  encoding: [0x62,0xd2,0xfd,0x48,0x7c,0xc8]
          vpbroadcastq %r8, %zmm1

// CHECK: vpcmpd $171, %zmm10, %zmm25, %k5
// CHECK:  encoding: [0x62,0xd3,0x35,0x40,0x1f,0xea,0xab]
          vpcmpd $171, %zmm10, %zmm25, %k5

// CHECK: vpcmpd $171, %zmm10, %zmm25, %k5 {%k3}
// CHECK:  encoding: [0x62,0xd3,0x35,0x43,0x1f,0xea,0xab]
          vpcmpd $171, %zmm10, %zmm25, %k5 {%k3}

// CHECK: vpcmpd $123, %zmm10, %zmm25, %k5
// CHECK:  encoding: [0x62,0xd3,0x35,0x40,0x1f,0xea,0x7b]
          vpcmpd $123, %zmm10, %zmm25, %k5

// CHECK: vpcmpd $123, (%rcx), %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x29,0x7b]
          vpcmpd $123, (%rcx), %zmm25, %k5

// CHECK: vpcmpd $123, 291(%rax,%r14,8), %zmm25, %k5
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1f,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpd $123, 291(%rax,%r14,8), %zmm25, %k5

// CHECK: vpcmpd $123, (%rcx){1to16}, %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x29,0x7b]
          vpcmpd $123, (%rcx){1to16}, %zmm25, %k5

// CHECK: vpcmpd $123, 8128(%rdx), %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x6a,0x7f,0x7b]
          vpcmpd $123, 8128(%rdx), %zmm25, %k5

// CHECK: vpcmpd $123, 8192(%rdx), %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0xaa,0x00,0x20,0x00,0x00,0x7b]
          vpcmpd $123, 8192(%rdx), %zmm25, %k5

// CHECK: vpcmpd $123, -8192(%rdx), %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x6a,0x80,0x7b]
          vpcmpd $123, -8192(%rdx), %zmm25, %k5

// CHECK: vpcmpd $123, -8256(%rdx), %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0xaa,0xc0,0xdf,0xff,0xff,0x7b]
          vpcmpd $123, -8256(%rdx), %zmm25, %k5

// CHECK: vpcmpd $123, 508(%rdx){1to16}, %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x6a,0x7f,0x7b]
          vpcmpd $123, 508(%rdx){1to16}, %zmm25, %k5

// CHECK: vpcmpd $123, 512(%rdx){1to16}, %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0xaa,0x00,0x02,0x00,0x00,0x7b]
          vpcmpd $123, 512(%rdx){1to16}, %zmm25, %k5

// CHECK: vpcmpd $123, -512(%rdx){1to16}, %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x6a,0x80,0x7b]
          vpcmpd $123, -512(%rdx){1to16}, %zmm25, %k5

// CHECK: vpcmpd $123, -516(%rdx){1to16}, %zmm25, %k5
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0xaa,0xfc,0xfd,0xff,0xff,0x7b]
          vpcmpd $123, -516(%rdx){1to16}, %zmm25, %k5

// CHECK: vpcmpltd %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0xd7,0x01]
          vpcmpltd %zmm7, %zmm25, %k2

// CHECK: vpcmpltd %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1f,0xd7,0x01]
          vpcmpltd %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpltd (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x11,0x01]
          vpcmpltd (%rcx), %zmm25, %k2

// CHECK: vpcmpltd 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x01]
          vpcmpltd 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpltd (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x11,0x01]
          vpcmpltd (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpltd 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x7f,0x01]
          vpcmpltd 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpltd 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0x00,0x20,0x00,0x00,0x01]
          vpcmpltd 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpltd -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x80,0x01]
          vpcmpltd -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpltd -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x01]
          vpcmpltd -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpltd 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x7f,0x01]
          vpcmpltd 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpltd 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0x00,0x02,0x00,0x00,0x01]
          vpcmpltd 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpltd -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x80,0x01]
          vpcmpltd -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpltd -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0xfc,0xfd,0xff,0xff,0x01]
          vpcmpltd -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpled %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0xd7,0x02]
          vpcmpled %zmm7, %zmm25, %k2

// CHECK: vpcmpled %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1f,0xd7,0x02]
          vpcmpled %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpled (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x11,0x02]
          vpcmpled (%rcx), %zmm25, %k2

// CHECK: vpcmpled 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x02]
          vpcmpled 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpled (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x11,0x02]
          vpcmpled (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpled 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x7f,0x02]
          vpcmpled 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpled 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0x00,0x20,0x00,0x00,0x02]
          vpcmpled 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpled -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x80,0x02]
          vpcmpled -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpled -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x02]
          vpcmpled -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpled 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x7f,0x02]
          vpcmpled 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpled 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0x00,0x02,0x00,0x00,0x02]
          vpcmpled 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpled -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x80,0x02]
          vpcmpled -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpled -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0xfc,0xfd,0xff,0xff,0x02]
          vpcmpled -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpneqd %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0xd7,0x04]
          vpcmpneqd %zmm7, %zmm25, %k2

// CHECK: vpcmpneqd %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1f,0xd7,0x04]
          vpcmpneqd %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpneqd (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x11,0x04]
          vpcmpneqd (%rcx), %zmm25, %k2

// CHECK: vpcmpneqd 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x04]
          vpcmpneqd 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpneqd (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x11,0x04]
          vpcmpneqd (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpneqd 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x7f,0x04]
          vpcmpneqd 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpneqd 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0x00,0x20,0x00,0x00,0x04]
          vpcmpneqd 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpneqd -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x80,0x04]
          vpcmpneqd -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpneqd -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x04]
          vpcmpneqd -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpneqd 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x7f,0x04]
          vpcmpneqd 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpneqd 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0x00,0x02,0x00,0x00,0x04]
          vpcmpneqd 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpneqd -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x80,0x04]
          vpcmpneqd -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpneqd -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0xfc,0xfd,0xff,0xff,0x04]
          vpcmpneqd -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltd %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0xd7,0x05]
          vpcmpnltd %zmm7, %zmm25, %k2

// CHECK: vpcmpnltd %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1f,0xd7,0x05]
          vpcmpnltd %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpnltd (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x11,0x05]
          vpcmpnltd (%rcx), %zmm25, %k2

// CHECK: vpcmpnltd 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x05]
          vpcmpnltd 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpnltd (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x11,0x05]
          vpcmpnltd (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltd 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x7f,0x05]
          vpcmpnltd 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpnltd 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0x00,0x20,0x00,0x00,0x05]
          vpcmpnltd 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnltd -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x80,0x05]
          vpcmpnltd -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnltd -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x05]
          vpcmpnltd -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpnltd 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x7f,0x05]
          vpcmpnltd 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltd 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0x00,0x02,0x00,0x00,0x05]
          vpcmpnltd 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltd -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x80,0x05]
          vpcmpnltd -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltd -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0xfc,0xfd,0xff,0xff,0x05]
          vpcmpnltd -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnled %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0xd7,0x06]
          vpcmpnled %zmm7, %zmm25, %k2

// CHECK: vpcmpnled %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1f,0xd7,0x06]
          vpcmpnled %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpnled (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x11,0x06]
          vpcmpnled (%rcx), %zmm25, %k2

// CHECK: vpcmpnled 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x06]
          vpcmpnled 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpnled (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x11,0x06]
          vpcmpnled (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpnled 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x7f,0x06]
          vpcmpnled 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpnled 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0x00,0x20,0x00,0x00,0x06]
          vpcmpnled 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnled -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x52,0x80,0x06]
          vpcmpnled -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnled -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x06]
          vpcmpnled -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpnled 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x7f,0x06]
          vpcmpnled 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnled 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0x00,0x02,0x00,0x00,0x06]
          vpcmpnled 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnled -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x52,0x80,0x06]
          vpcmpnled -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnled -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1f,0x92,0xfc,0xfd,0xff,0xff,0x06]
          vpcmpnled -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpeqd %zmm10, %zmm2, %k5
// CHECK:  encoding: [0x62,0xd1,0x6d,0x48,0x76,0xea]
          vpcmpeqd %zmm10, %zmm2, %k5

// CHECK: vpcmpeqd %zmm10, %zmm2, %k5 {%k7}
// CHECK:  encoding: [0x62,0xd1,0x6d,0x4f,0x76,0xea]
          vpcmpeqd %zmm10, %zmm2, %k5 {%k7}

// CHECK: vpcmpeqd (%rcx), %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x48,0x76,0x29]
          vpcmpeqd (%rcx), %zmm2, %k5

// CHECK: vpcmpeqd 291(%rax,%r14,8), %zmm2, %k5
// CHECK:  encoding: [0x62,0xb1,0x6d,0x48,0x76,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqd 291(%rax,%r14,8), %zmm2, %k5

// CHECK: vpcmpeqd (%rcx){1to16}, %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x58,0x76,0x29]
          vpcmpeqd (%rcx){1to16}, %zmm2, %k5

// CHECK: vpcmpeqd 8128(%rdx), %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x48,0x76,0x6a,0x7f]
          vpcmpeqd 8128(%rdx), %zmm2, %k5

// CHECK: vpcmpeqd 8192(%rdx), %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x48,0x76,0xaa,0x00,0x20,0x00,0x00]
          vpcmpeqd 8192(%rdx), %zmm2, %k5

// CHECK: vpcmpeqd -8192(%rdx), %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x48,0x76,0x6a,0x80]
          vpcmpeqd -8192(%rdx), %zmm2, %k5

// CHECK: vpcmpeqd -8256(%rdx), %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x48,0x76,0xaa,0xc0,0xdf,0xff,0xff]
          vpcmpeqd -8256(%rdx), %zmm2, %k5

// CHECK: vpcmpeqd 508(%rdx){1to16}, %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x58,0x76,0x6a,0x7f]
          vpcmpeqd 508(%rdx){1to16}, %zmm2, %k5

// CHECK: vpcmpeqd 512(%rdx){1to16}, %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x58,0x76,0xaa,0x00,0x02,0x00,0x00]
          vpcmpeqd 512(%rdx){1to16}, %zmm2, %k5

// CHECK: vpcmpeqd -512(%rdx){1to16}, %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x58,0x76,0x6a,0x80]
          vpcmpeqd -512(%rdx){1to16}, %zmm2, %k5

// CHECK: vpcmpeqd -516(%rdx){1to16}, %zmm2, %k5
// CHECK:  encoding: [0x62,0xf1,0x6d,0x58,0x76,0xaa,0xfc,0xfd,0xff,0xff]
          vpcmpeqd -516(%rdx){1to16}, %zmm2, %k5

// CHECK: vpcmpeqq %zmm2, %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x40,0x29,0xda]
          vpcmpeqq %zmm2, %zmm22, %k3

// CHECK: vpcmpeqq %zmm2, %zmm22, %k3 {%k6}
// CHECK:  encoding: [0x62,0xf2,0xcd,0x46,0x29,0xda]
          vpcmpeqq %zmm2, %zmm22, %k3 {%k6}

// CHECK: vpcmpeqq (%rcx), %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x40,0x29,0x19]
          vpcmpeqq (%rcx), %zmm22, %k3

// CHECK: vpcmpeqq 291(%rax,%r14,8), %zmm22, %k3
// CHECK:  encoding: [0x62,0xb2,0xcd,0x40,0x29,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqq 291(%rax,%r14,8), %zmm22, %k3

// CHECK: vpcmpeqq (%rcx){1to8}, %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x50,0x29,0x19]
          vpcmpeqq (%rcx){1to8}, %zmm22, %k3

// CHECK: vpcmpeqq 8128(%rdx), %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x40,0x29,0x5a,0x7f]
          vpcmpeqq 8128(%rdx), %zmm22, %k3

// CHECK: vpcmpeqq 8192(%rdx), %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x40,0x29,0x9a,0x00,0x20,0x00,0x00]
          vpcmpeqq 8192(%rdx), %zmm22, %k3

// CHECK: vpcmpeqq -8192(%rdx), %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x40,0x29,0x5a,0x80]
          vpcmpeqq -8192(%rdx), %zmm22, %k3

// CHECK: vpcmpeqq -8256(%rdx), %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x40,0x29,0x9a,0xc0,0xdf,0xff,0xff]
          vpcmpeqq -8256(%rdx), %zmm22, %k3

// CHECK: vpcmpeqq 1016(%rdx){1to8}, %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x50,0x29,0x5a,0x7f]
          vpcmpeqq 1016(%rdx){1to8}, %zmm22, %k3

// CHECK: vpcmpeqq 1024(%rdx){1to8}, %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x50,0x29,0x9a,0x00,0x04,0x00,0x00]
          vpcmpeqq 1024(%rdx){1to8}, %zmm22, %k3

// CHECK: vpcmpeqq -1024(%rdx){1to8}, %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x50,0x29,0x5a,0x80]
          vpcmpeqq -1024(%rdx){1to8}, %zmm22, %k3

// CHECK: vpcmpeqq -1032(%rdx){1to8}, %zmm22, %k3
// CHECK:  encoding: [0x62,0xf2,0xcd,0x50,0x29,0x9a,0xf8,0xfb,0xff,0xff]
          vpcmpeqq -1032(%rdx){1to8}, %zmm22, %k3

// CHECK: vpcmpgtd %zmm8, %zmm21, %k5
// CHECK:  encoding: [0x62,0xd1,0x55,0x40,0x66,0xe8]
          vpcmpgtd %zmm8, %zmm21, %k5

// CHECK: vpcmpgtd %zmm8, %zmm21, %k5 {%k5}
// CHECK:  encoding: [0x62,0xd1,0x55,0x45,0x66,0xe8]
          vpcmpgtd %zmm8, %zmm21, %k5 {%k5}

// CHECK: vpcmpgtd (%rcx), %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x40,0x66,0x29]
          vpcmpgtd (%rcx), %zmm21, %k5

// CHECK: vpcmpgtd 291(%rax,%r14,8), %zmm21, %k5
// CHECK:  encoding: [0x62,0xb1,0x55,0x40,0x66,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtd 291(%rax,%r14,8), %zmm21, %k5

// CHECK: vpcmpgtd (%rcx){1to16}, %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x50,0x66,0x29]
          vpcmpgtd (%rcx){1to16}, %zmm21, %k5

// CHECK: vpcmpgtd 8128(%rdx), %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x40,0x66,0x6a,0x7f]
          vpcmpgtd 8128(%rdx), %zmm21, %k5

// CHECK: vpcmpgtd 8192(%rdx), %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x40,0x66,0xaa,0x00,0x20,0x00,0x00]
          vpcmpgtd 8192(%rdx), %zmm21, %k5

// CHECK: vpcmpgtd -8192(%rdx), %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x40,0x66,0x6a,0x80]
          vpcmpgtd -8192(%rdx), %zmm21, %k5

// CHECK: vpcmpgtd -8256(%rdx), %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x40,0x66,0xaa,0xc0,0xdf,0xff,0xff]
          vpcmpgtd -8256(%rdx), %zmm21, %k5

// CHECK: vpcmpgtd 508(%rdx){1to16}, %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x50,0x66,0x6a,0x7f]
          vpcmpgtd 508(%rdx){1to16}, %zmm21, %k5

// CHECK: vpcmpgtd 512(%rdx){1to16}, %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x50,0x66,0xaa,0x00,0x02,0x00,0x00]
          vpcmpgtd 512(%rdx){1to16}, %zmm21, %k5

// CHECK: vpcmpgtd -512(%rdx){1to16}, %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x50,0x66,0x6a,0x80]
          vpcmpgtd -512(%rdx){1to16}, %zmm21, %k5

// CHECK: vpcmpgtd -516(%rdx){1to16}, %zmm21, %k5
// CHECK:  encoding: [0x62,0xf1,0x55,0x50,0x66,0xaa,0xfc,0xfd,0xff,0xff]
          vpcmpgtd -516(%rdx){1to16}, %zmm21, %k5

// CHECK: vpcmpgtq %zmm17, %zmm20, %k2
// CHECK:  encoding: [0x62,0xb2,0xdd,0x40,0x37,0xd1]
          vpcmpgtq %zmm17, %zmm20, %k2

// CHECK: vpcmpgtq %zmm17, %zmm20, %k2 {%k3}
// CHECK:  encoding: [0x62,0xb2,0xdd,0x43,0x37,0xd1]
          vpcmpgtq %zmm17, %zmm20, %k2 {%k3}

// CHECK: vpcmpgtq (%rcx), %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x40,0x37,0x11]
          vpcmpgtq (%rcx), %zmm20, %k2

// CHECK: vpcmpgtq 291(%rax,%r14,8), %zmm20, %k2
// CHECK:  encoding: [0x62,0xb2,0xdd,0x40,0x37,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtq 291(%rax,%r14,8), %zmm20, %k2

// CHECK: vpcmpgtq (%rcx){1to8}, %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x50,0x37,0x11]
          vpcmpgtq (%rcx){1to8}, %zmm20, %k2

// CHECK: vpcmpgtq 8128(%rdx), %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x40,0x37,0x52,0x7f]
          vpcmpgtq 8128(%rdx), %zmm20, %k2

// CHECK: vpcmpgtq 8192(%rdx), %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x40,0x37,0x92,0x00,0x20,0x00,0x00]
          vpcmpgtq 8192(%rdx), %zmm20, %k2

// CHECK: vpcmpgtq -8192(%rdx), %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x40,0x37,0x52,0x80]
          vpcmpgtq -8192(%rdx), %zmm20, %k2

// CHECK: vpcmpgtq -8256(%rdx), %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x40,0x37,0x92,0xc0,0xdf,0xff,0xff]
          vpcmpgtq -8256(%rdx), %zmm20, %k2

// CHECK: vpcmpgtq 1016(%rdx){1to8}, %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x50,0x37,0x52,0x7f]
          vpcmpgtq 1016(%rdx){1to8}, %zmm20, %k2

// CHECK: vpcmpgtq 1024(%rdx){1to8}, %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x50,0x37,0x92,0x00,0x04,0x00,0x00]
          vpcmpgtq 1024(%rdx){1to8}, %zmm20, %k2

// CHECK: vpcmpgtq -1024(%rdx){1to8}, %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x50,0x37,0x52,0x80]
          vpcmpgtq -1024(%rdx){1to8}, %zmm20, %k2

// CHECK: vpcmpgtq -1032(%rdx){1to8}, %zmm20, %k2
// CHECK:  encoding: [0x62,0xf2,0xdd,0x50,0x37,0x92,0xf8,0xfb,0xff,0xff]
          vpcmpgtq -1032(%rdx){1to8}, %zmm20, %k2

// CHECK: vpcmpq $171, %zmm28, %zmm28, %k5
// CHECK:  encoding: [0x62,0x93,0x9d,0x40,0x1f,0xec,0xab]
          vpcmpq $171, %zmm28, %zmm28, %k5

// CHECK: vpcmpq $171, %zmm28, %zmm28, %k5 {%k3}
// CHECK:  encoding: [0x62,0x93,0x9d,0x43,0x1f,0xec,0xab]
          vpcmpq $171, %zmm28, %zmm28, %k5 {%k3}

// CHECK: vpcmpq $123, %zmm28, %zmm28, %k5
// CHECK:  encoding: [0x62,0x93,0x9d,0x40,0x1f,0xec,0x7b]
          vpcmpq $123, %zmm28, %zmm28, %k5

// CHECK: vpcmpq $123, (%rcx), %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x40,0x1f,0x29,0x7b]
          vpcmpq $123, (%rcx), %zmm28, %k5

// CHECK: vpcmpq $123, 291(%rax,%r14,8), %zmm28, %k5
// CHECK:  encoding: [0x62,0xb3,0x9d,0x40,0x1f,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpq $123, 291(%rax,%r14,8), %zmm28, %k5

// CHECK: vpcmpq $123, (%rcx){1to8}, %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x50,0x1f,0x29,0x7b]
          vpcmpq $123, (%rcx){1to8}, %zmm28, %k5

// CHECK: vpcmpq $123, 8128(%rdx), %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x40,0x1f,0x6a,0x7f,0x7b]
          vpcmpq $123, 8128(%rdx), %zmm28, %k5

// CHECK: vpcmpq $123, 8192(%rdx), %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x40,0x1f,0xaa,0x00,0x20,0x00,0x00,0x7b]
          vpcmpq $123, 8192(%rdx), %zmm28, %k5

// CHECK: vpcmpq $123, -8192(%rdx), %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x40,0x1f,0x6a,0x80,0x7b]
          vpcmpq $123, -8192(%rdx), %zmm28, %k5

// CHECK: vpcmpq $123, -8256(%rdx), %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x40,0x1f,0xaa,0xc0,0xdf,0xff,0xff,0x7b]
          vpcmpq $123, -8256(%rdx), %zmm28, %k5

// CHECK: vpcmpq $123, 1016(%rdx){1to8}, %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x50,0x1f,0x6a,0x7f,0x7b]
          vpcmpq $123, 1016(%rdx){1to8}, %zmm28, %k5

// CHECK: vpcmpq $123, 1024(%rdx){1to8}, %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x50,0x1f,0xaa,0x00,0x04,0x00,0x00,0x7b]
          vpcmpq $123, 1024(%rdx){1to8}, %zmm28, %k5

// CHECK: vpcmpq $123, -1024(%rdx){1to8}, %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x50,0x1f,0x6a,0x80,0x7b]
          vpcmpq $123, -1024(%rdx){1to8}, %zmm28, %k5

// CHECK: vpcmpq $123, -1032(%rdx){1to8}, %zmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x50,0x1f,0xaa,0xf8,0xfb,0xff,0xff,0x7b]
          vpcmpq $123, -1032(%rdx){1to8}, %zmm28, %k5

// CHECK: vpcmpltq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0xd7,0x01]
          vpcmpltq %zmm7, %zmm14, %k2

// CHECK: vpcmpltq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1f,0xd7,0x01]
          vpcmpltq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpltq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x11,0x01]
          vpcmpltq (%rcx), %zmm14, %k2

// CHECK: vpcmpltq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x01]
          vpcmpltq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpltq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x11,0x01]
          vpcmpltq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpltq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x7f,0x01]
          vpcmpltq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpltq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0x00,0x20,0x00,0x00,0x01]
          vpcmpltq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpltq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x80,0x01]
          vpcmpltq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpltq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x01]
          vpcmpltq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpltq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x7f,0x01]
          vpcmpltq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpltq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0x00,0x04,0x00,0x00,0x01]
          vpcmpltq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpltq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x80,0x01]
          vpcmpltq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpltq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0xf8,0xfb,0xff,0xff,0x01]
          vpcmpltq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpleq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0xd7,0x02]
          vpcmpleq %zmm7, %zmm14, %k2

// CHECK: vpcmpleq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1f,0xd7,0x02]
          vpcmpleq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpleq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x11,0x02]
          vpcmpleq (%rcx), %zmm14, %k2

// CHECK: vpcmpleq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x02]
          vpcmpleq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpleq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x11,0x02]
          vpcmpleq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpleq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x7f,0x02]
          vpcmpleq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpleq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0x00,0x20,0x00,0x00,0x02]
          vpcmpleq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpleq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x80,0x02]
          vpcmpleq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpleq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x02]
          vpcmpleq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpleq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x7f,0x02]
          vpcmpleq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpleq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0x00,0x04,0x00,0x00,0x02]
          vpcmpleq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpleq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x80,0x02]
          vpcmpleq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpleq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0xf8,0xfb,0xff,0xff,0x02]
          vpcmpleq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpneqq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0xd7,0x04]
          vpcmpneqq %zmm7, %zmm14, %k2

// CHECK: vpcmpneqq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1f,0xd7,0x04]
          vpcmpneqq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpneqq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x11,0x04]
          vpcmpneqq (%rcx), %zmm14, %k2

// CHECK: vpcmpneqq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x04]
          vpcmpneqq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpneqq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x11,0x04]
          vpcmpneqq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpneqq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x7f,0x04]
          vpcmpneqq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpneqq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0x00,0x20,0x00,0x00,0x04]
          vpcmpneqq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpneqq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x80,0x04]
          vpcmpneqq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpneqq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x04]
          vpcmpneqq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpneqq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x7f,0x04]
          vpcmpneqq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpneqq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0x00,0x04,0x00,0x00,0x04]
          vpcmpneqq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpneqq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x80,0x04]
          vpcmpneqq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpneqq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0xf8,0xfb,0xff,0xff,0x04]
          vpcmpneqq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0xd7,0x05]
          vpcmpnltq %zmm7, %zmm14, %k2

// CHECK: vpcmpnltq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1f,0xd7,0x05]
          vpcmpnltq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpnltq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x11,0x05]
          vpcmpnltq (%rcx), %zmm14, %k2

// CHECK: vpcmpnltq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x05]
          vpcmpnltq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpnltq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x11,0x05]
          vpcmpnltq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x7f,0x05]
          vpcmpnltq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpnltq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0x00,0x20,0x00,0x00,0x05]
          vpcmpnltq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnltq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x80,0x05]
          vpcmpnltq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnltq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x05]
          vpcmpnltq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpnltq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x7f,0x05]
          vpcmpnltq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0x00,0x04,0x00,0x00,0x05]
          vpcmpnltq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x80,0x05]
          vpcmpnltq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0xf8,0xfb,0xff,0xff,0x05]
          vpcmpnltq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0xd7,0x06]
          vpcmpnleq %zmm7, %zmm14, %k2

// CHECK: vpcmpnleq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1f,0xd7,0x06]
          vpcmpnleq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpnleq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x11,0x06]
          vpcmpnleq (%rcx), %zmm14, %k2

// CHECK: vpcmpnleq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1f,0x94,0xf0,0x23,0x01,0x00,0x00,0x06]
          vpcmpnleq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpnleq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x11,0x06]
          vpcmpnleq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x7f,0x06]
          vpcmpnleq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpnleq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0x00,0x20,0x00,0x00,0x06]
          vpcmpnleq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnleq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x52,0x80,0x06]
          vpcmpnleq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnleq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1f,0x92,0xc0,0xdf,0xff,0xff,0x06]
          vpcmpnleq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpnleq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x7f,0x06]
          vpcmpnleq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0x00,0x04,0x00,0x00,0x06]
          vpcmpnleq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x52,0x80,0x06]
          vpcmpnleq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1f,0x92,0xf8,0xfb,0xff,0xff,0x06]
          vpcmpnleq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpud $171, %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0xd7,0xab]
          vpcmpud $171, %zmm7, %zmm25, %k2

// CHECK: vpcmpud $171, %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1e,0xd7,0xab]
          vpcmpud $171, %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpud $123, %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0xd7,0x7b]
          vpcmpud $123, %zmm7, %zmm25, %k2

// CHECK: vpcmpud $123, (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x11,0x7b]
          vpcmpud $123, (%rcx), %zmm25, %k2

// CHECK: vpcmpud $123, 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpud $123, 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpud $123, (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x11,0x7b]
          vpcmpud $123, (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpud $123, 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x7f,0x7b]
          vpcmpud $123, 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpud $123, 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0x00,0x20,0x00,0x00,0x7b]
          vpcmpud $123, 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpud $123, -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x80,0x7b]
          vpcmpud $123, -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpud $123, -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x7b]
          vpcmpud $123, -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpud $123, 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x7f,0x7b]
          vpcmpud $123, 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpud $123, 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0x00,0x02,0x00,0x00,0x7b]
          vpcmpud $123, 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpud $123, -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x80,0x7b]
          vpcmpud $123, -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpud $123, -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0xfc,0xfd,0xff,0xff,0x7b]
          vpcmpud $123, -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpequd %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0xd7,0x00]
          vpcmpequd %zmm7, %zmm25, %k2

// CHECK: vpcmpequd %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1e,0xd7,0x00]
          vpcmpequd %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpequd (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x11,0x00]
          vpcmpequd (%rcx), %zmm25, %k2

// CHECK: vpcmpequd 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x00]
          vpcmpequd 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpequd (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x11,0x00]
          vpcmpequd (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpequd 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x7f,0x00]
          vpcmpequd 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpequd 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0x00,0x20,0x00,0x00,0x00]
          vpcmpequd 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpequd -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x80,0x00]
          vpcmpequd -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpequd -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x00]
          vpcmpequd -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpequd 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x7f,0x00]
          vpcmpequd 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpequd 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0x00,0x02,0x00,0x00,0x00]
          vpcmpequd 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpequd -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x80,0x00]
          vpcmpequd -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpequd -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0xfc,0xfd,0xff,0xff,0x00]
          vpcmpequd -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpltud %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0xd7,0x01]
          vpcmpltud %zmm7, %zmm25, %k2

// CHECK: vpcmpltud %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1e,0xd7,0x01]
          vpcmpltud %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpltud (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x11,0x01]
          vpcmpltud (%rcx), %zmm25, %k2

// CHECK: vpcmpltud 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x01]
          vpcmpltud 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpltud (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x11,0x01]
          vpcmpltud (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpltud 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x7f,0x01]
          vpcmpltud 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpltud 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0x00,0x20,0x00,0x00,0x01]
          vpcmpltud 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpltud -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x80,0x01]
          vpcmpltud -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpltud -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x01]
          vpcmpltud -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpltud 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x7f,0x01]
          vpcmpltud 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpltud 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0x00,0x02,0x00,0x00,0x01]
          vpcmpltud 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpltud -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x80,0x01]
          vpcmpltud -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpltud -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0xfc,0xfd,0xff,0xff,0x01]
          vpcmpltud -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpleud %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0xd7,0x02]
          vpcmpleud %zmm7, %zmm25, %k2

// CHECK: vpcmpleud %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1e,0xd7,0x02]
          vpcmpleud %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpleud (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x11,0x02]
          vpcmpleud (%rcx), %zmm25, %k2

// CHECK: vpcmpleud 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x02]
          vpcmpleud 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpleud (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x11,0x02]
          vpcmpleud (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpleud 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x7f,0x02]
          vpcmpleud 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpleud 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0x00,0x20,0x00,0x00,0x02]
          vpcmpleud 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpleud -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x80,0x02]
          vpcmpleud -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpleud -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x02]
          vpcmpleud -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpleud 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x7f,0x02]
          vpcmpleud 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpleud 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0x00,0x02,0x00,0x00,0x02]
          vpcmpleud 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpleud -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x80,0x02]
          vpcmpleud -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpleud -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0xfc,0xfd,0xff,0xff,0x02]
          vpcmpleud -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnequd %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0xd7,0x04]
          vpcmpnequd %zmm7, %zmm25, %k2

// CHECK: vpcmpnequd %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1e,0xd7,0x04]
          vpcmpnequd %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpnequd (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x11,0x04]
          vpcmpnequd (%rcx), %zmm25, %k2

// CHECK: vpcmpnequd 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x04]
          vpcmpnequd 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpnequd (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x11,0x04]
          vpcmpnequd (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpnequd 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x7f,0x04]
          vpcmpnequd 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpnequd 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0x00,0x20,0x00,0x00,0x04]
          vpcmpnequd 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnequd -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x80,0x04]
          vpcmpnequd -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnequd -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x04]
          vpcmpnequd -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpnequd 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x7f,0x04]
          vpcmpnequd 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnequd 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0x00,0x02,0x00,0x00,0x04]
          vpcmpnequd 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnequd -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x80,0x04]
          vpcmpnequd -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnequd -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0xfc,0xfd,0xff,0xff,0x04]
          vpcmpnequd -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltud %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0xd7,0x05]
          vpcmpnltud %zmm7, %zmm25, %k2

// CHECK: vpcmpnltud %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1e,0xd7,0x05]
          vpcmpnltud %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpnltud (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x11,0x05]
          vpcmpnltud (%rcx), %zmm25, %k2

// CHECK: vpcmpnltud 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x05]
          vpcmpnltud 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpnltud (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x11,0x05]
          vpcmpnltud (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltud 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x7f,0x05]
          vpcmpnltud 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpnltud 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0x00,0x20,0x00,0x00,0x05]
          vpcmpnltud 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnltud -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x80,0x05]
          vpcmpnltud -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnltud -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x05]
          vpcmpnltud -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpnltud 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x7f,0x05]
          vpcmpnltud 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltud 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0x00,0x02,0x00,0x00,0x05]
          vpcmpnltud 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltud -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x80,0x05]
          vpcmpnltud -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnltud -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0xfc,0xfd,0xff,0xff,0x05]
          vpcmpnltud -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnleud %zmm7, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0xd7,0x06]
          vpcmpnleud %zmm7, %zmm25, %k2

// CHECK: vpcmpnleud %zmm7, %zmm25, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x35,0x41,0x1e,0xd7,0x06]
          vpcmpnleud %zmm7, %zmm25, %k2 {%k1}

// CHECK: vpcmpnleud (%rcx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x11,0x06]
          vpcmpnleud (%rcx), %zmm25, %k2

// CHECK: vpcmpnleud 291(%rax,%r14,8), %zmm25, %k2
// CHECK:  encoding: [0x62,0xb3,0x35,0x40,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x06]
          vpcmpnleud 291(%rax,%r14,8), %zmm25, %k2

// CHECK: vpcmpnleud (%rcx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x11,0x06]
          vpcmpnleud (%rcx){1to16}, %zmm25, %k2

// CHECK: vpcmpnleud 8128(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x7f,0x06]
          vpcmpnleud 8128(%rdx), %zmm25, %k2

// CHECK: vpcmpnleud 8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0x00,0x20,0x00,0x00,0x06]
          vpcmpnleud 8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnleud -8192(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x52,0x80,0x06]
          vpcmpnleud -8192(%rdx), %zmm25, %k2

// CHECK: vpcmpnleud -8256(%rdx), %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x40,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x06]
          vpcmpnleud -8256(%rdx), %zmm25, %k2

// CHECK: vpcmpnleud 508(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x7f,0x06]
          vpcmpnleud 508(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnleud 512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0x00,0x02,0x00,0x00,0x06]
          vpcmpnleud 512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnleud -512(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x52,0x80,0x06]
          vpcmpnleud -512(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpnleud -516(%rdx){1to16}, %zmm25, %k2
// CHECK:  encoding: [0x62,0xf3,0x35,0x50,0x1e,0x92,0xfc,0xfd,0xff,0xff,0x06]
          vpcmpnleud -516(%rdx){1to16}, %zmm25, %k2

// CHECK: vpcmpuq $171, %zmm8, %zmm14, %k3
// CHECK:  encoding: [0x62,0xd3,0x8d,0x48,0x1e,0xd8,0xab]
          vpcmpuq $171, %zmm8, %zmm14, %k3

// CHECK: vpcmpuq $171, %zmm8, %zmm14, %k3 {%k2}
// CHECK:  encoding: [0x62,0xd3,0x8d,0x4a,0x1e,0xd8,0xab]
          vpcmpuq $171, %zmm8, %zmm14, %k3 {%k2}

// CHECK: vpcmpuq $123, %zmm8, %zmm14, %k3
// CHECK:  encoding: [0x62,0xd3,0x8d,0x48,0x1e,0xd8,0x7b]
          vpcmpuq $123, %zmm8, %zmm14, %k3

// CHECK: vpcmpuq $123, (%rcx), %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x19,0x7b]
          vpcmpuq $123, (%rcx), %zmm14, %k3

// CHECK: vpcmpuq $123, 291(%rax,%r14,8), %zmm14, %k3
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1e,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpuq $123, 291(%rax,%r14,8), %zmm14, %k3

// CHECK: vpcmpuq $123, (%rcx){1to8}, %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x19,0x7b]
          vpcmpuq $123, (%rcx){1to8}, %zmm14, %k3

// CHECK: vpcmpuq $123, 8128(%rdx), %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x5a,0x7f,0x7b]
          vpcmpuq $123, 8128(%rdx), %zmm14, %k3

// CHECK: vpcmpuq $123, 8192(%rdx), %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x9a,0x00,0x20,0x00,0x00,0x7b]
          vpcmpuq $123, 8192(%rdx), %zmm14, %k3

// CHECK: vpcmpuq $123, -8192(%rdx), %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x5a,0x80,0x7b]
          vpcmpuq $123, -8192(%rdx), %zmm14, %k3

// CHECK: vpcmpuq $123, -8256(%rdx), %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x9a,0xc0,0xdf,0xff,0xff,0x7b]
          vpcmpuq $123, -8256(%rdx), %zmm14, %k3

// CHECK: vpcmpuq $123, 1016(%rdx){1to8}, %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x5a,0x7f,0x7b]
          vpcmpuq $123, 1016(%rdx){1to8}, %zmm14, %k3

// CHECK: vpcmpuq $123, 1024(%rdx){1to8}, %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x9a,0x00,0x04,0x00,0x00,0x7b]
          vpcmpuq $123, 1024(%rdx){1to8}, %zmm14, %k3

// CHECK: vpcmpuq $123, -1024(%rdx){1to8}, %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x5a,0x80,0x7b]
          vpcmpuq $123, -1024(%rdx){1to8}, %zmm14, %k3

// CHECK: vpcmpuq $123, -1032(%rdx){1to8}, %zmm14, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x9a,0xf8,0xfb,0xff,0xff,0x7b]
          vpcmpuq $123, -1032(%rdx){1to8}, %zmm14, %k3

// CHECK: vpcmpequq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0xd7,0x00]
          vpcmpequq %zmm7, %zmm14, %k2

// CHECK: vpcmpequq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1e,0xd7,0x00]
          vpcmpequq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpequq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x11,0x00]
          vpcmpequq (%rcx), %zmm14, %k2

// CHECK: vpcmpequq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x00]
          vpcmpequq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpequq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x11,0x00]
          vpcmpequq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpequq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x7f,0x00]
          vpcmpequq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpequq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0x00,0x20,0x00,0x00,0x00]
          vpcmpequq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpequq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x80,0x00]
          vpcmpequq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpequq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x00]
          vpcmpequq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpequq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x7f,0x00]
          vpcmpequq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpequq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0x00,0x04,0x00,0x00,0x00]
          vpcmpequq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpequq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x80,0x00]
          vpcmpequq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpequq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0xf8,0xfb,0xff,0xff,0x00]
          vpcmpequq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpltuq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0xd7,0x01]
          vpcmpltuq %zmm7, %zmm14, %k2

// CHECK: vpcmpltuq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1e,0xd7,0x01]
          vpcmpltuq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpltuq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x11,0x01]
          vpcmpltuq (%rcx), %zmm14, %k2

// CHECK: vpcmpltuq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x01]
          vpcmpltuq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpltuq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x11,0x01]
          vpcmpltuq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpltuq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x7f,0x01]
          vpcmpltuq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpltuq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0x00,0x20,0x00,0x00,0x01]
          vpcmpltuq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpltuq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x80,0x01]
          vpcmpltuq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpltuq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x01]
          vpcmpltuq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpltuq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x7f,0x01]
          vpcmpltuq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpltuq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0x00,0x04,0x00,0x00,0x01]
          vpcmpltuq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpltuq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x80,0x01]
          vpcmpltuq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpltuq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0xf8,0xfb,0xff,0xff,0x01]
          vpcmpltuq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpleuq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0xd7,0x02]
          vpcmpleuq %zmm7, %zmm14, %k2

// CHECK: vpcmpleuq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1e,0xd7,0x02]
          vpcmpleuq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpleuq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x11,0x02]
          vpcmpleuq (%rcx), %zmm14, %k2

// CHECK: vpcmpleuq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x02]
          vpcmpleuq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpleuq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x11,0x02]
          vpcmpleuq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpleuq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x7f,0x02]
          vpcmpleuq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpleuq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0x00,0x20,0x00,0x00,0x02]
          vpcmpleuq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpleuq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x80,0x02]
          vpcmpleuq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpleuq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x02]
          vpcmpleuq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpleuq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x7f,0x02]
          vpcmpleuq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpleuq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0x00,0x04,0x00,0x00,0x02]
          vpcmpleuq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpleuq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x80,0x02]
          vpcmpleuq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpleuq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0xf8,0xfb,0xff,0xff,0x02]
          vpcmpleuq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnequq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0xd7,0x04]
          vpcmpnequq %zmm7, %zmm14, %k2

// CHECK: vpcmpnequq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1e,0xd7,0x04]
          vpcmpnequq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpnequq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x11,0x04]
          vpcmpnequq (%rcx), %zmm14, %k2

// CHECK: vpcmpnequq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x04]
          vpcmpnequq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpnequq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x11,0x04]
          vpcmpnequq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpnequq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x7f,0x04]
          vpcmpnequq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpnequq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0x00,0x20,0x00,0x00,0x04]
          vpcmpnequq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnequq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x80,0x04]
          vpcmpnequq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnequq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x04]
          vpcmpnequq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpnequq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x7f,0x04]
          vpcmpnequq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnequq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0x00,0x04,0x00,0x00,0x04]
          vpcmpnequq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnequq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x80,0x04]
          vpcmpnequq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnequq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0xf8,0xfb,0xff,0xff,0x04]
          vpcmpnequq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltuq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0xd7,0x05]
          vpcmpnltuq %zmm7, %zmm14, %k2

// CHECK: vpcmpnltuq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1e,0xd7,0x05]
          vpcmpnltuq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpnltuq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x11,0x05]
          vpcmpnltuq (%rcx), %zmm14, %k2

// CHECK: vpcmpnltuq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x05]
          vpcmpnltuq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpnltuq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x11,0x05]
          vpcmpnltuq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltuq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x7f,0x05]
          vpcmpnltuq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpnltuq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0x00,0x20,0x00,0x00,0x05]
          vpcmpnltuq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnltuq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x80,0x05]
          vpcmpnltuq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnltuq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x05]
          vpcmpnltuq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpnltuq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x7f,0x05]
          vpcmpnltuq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltuq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0x00,0x04,0x00,0x00,0x05]
          vpcmpnltuq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltuq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x80,0x05]
          vpcmpnltuq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnltuq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0xf8,0xfb,0xff,0xff,0x05]
          vpcmpnltuq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleuq %zmm7, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0xd7,0x06]
          vpcmpnleuq %zmm7, %zmm14, %k2

// CHECK: vpcmpnleuq %zmm7, %zmm14, %k2 {%k1}
// CHECK:  encoding: [0x62,0xf3,0x8d,0x49,0x1e,0xd7,0x06]
          vpcmpnleuq %zmm7, %zmm14, %k2 {%k1}

// CHECK: vpcmpnleuq (%rcx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x11,0x06]
          vpcmpnleuq (%rcx), %zmm14, %k2

// CHECK: vpcmpnleuq 291(%rax,%r14,8), %zmm14, %k2
// CHECK:  encoding: [0x62,0xb3,0x8d,0x48,0x1e,0x94,0xf0,0x23,0x01,0x00,0x00,0x06]
          vpcmpnleuq 291(%rax,%r14,8), %zmm14, %k2

// CHECK: vpcmpnleuq (%rcx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x11,0x06]
          vpcmpnleuq (%rcx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleuq 8128(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x7f,0x06]
          vpcmpnleuq 8128(%rdx), %zmm14, %k2

// CHECK: vpcmpnleuq 8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0x00,0x20,0x00,0x00,0x06]
          vpcmpnleuq 8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnleuq -8192(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x52,0x80,0x06]
          vpcmpnleuq -8192(%rdx), %zmm14, %k2

// CHECK: vpcmpnleuq -8256(%rdx), %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x48,0x1e,0x92,0xc0,0xdf,0xff,0xff,0x06]
          vpcmpnleuq -8256(%rdx), %zmm14, %k2

// CHECK: vpcmpnleuq 1016(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x7f,0x06]
          vpcmpnleuq 1016(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleuq 1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0x00,0x04,0x00,0x00,0x06]
          vpcmpnleuq 1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleuq -1024(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x52,0x80,0x06]
          vpcmpnleuq -1024(%rdx){1to8}, %zmm14, %k2

// CHECK: vpcmpnleuq -1032(%rdx){1to8}, %zmm14, %k2
// CHECK:  encoding: [0x62,0xf3,0x8d,0x58,0x1e,0x92,0xf8,0xfb,0xff,0xff,0x06]
          vpcmpnleuq -1032(%rdx){1to8}, %zmm14, %k2

// CHECK: vpmaxsd %zmm16, %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xb2,0x3d,0x48,0x3d,0xf0]
          vpmaxsd %zmm16, %zmm8, %zmm6

// CHECK: vpmaxsd %zmm16, %zmm8, %zmm6 {%k3}
// CHECK:  encoding: [0x62,0xb2,0x3d,0x4b,0x3d,0xf0]
          vpmaxsd %zmm16, %zmm8, %zmm6 {%k3}

// CHECK: vpmaxsd %zmm16, %zmm8, %zmm6 {%k3} {z}
// CHECK:  encoding: [0x62,0xb2,0x3d,0xcb,0x3d,0xf0]
          vpmaxsd %zmm16, %zmm8, %zmm6 {%k3} {z}

// CHECK: vpmaxsd (%rcx), %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x48,0x3d,0x31]
          vpmaxsd (%rcx), %zmm8, %zmm6

// CHECK: vpmaxsd 291(%rax,%r14,8), %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xb2,0x3d,0x48,0x3d,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsd 291(%rax,%r14,8), %zmm8, %zmm6

// CHECK: vpmaxsd (%rcx){1to16}, %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x58,0x3d,0x31]
          vpmaxsd (%rcx){1to16}, %zmm8, %zmm6

// CHECK: vpmaxsd 8128(%rdx), %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x48,0x3d,0x72,0x7f]
          vpmaxsd 8128(%rdx), %zmm8, %zmm6

// CHECK: vpmaxsd 8192(%rdx), %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x48,0x3d,0xb2,0x00,0x20,0x00,0x00]
          vpmaxsd 8192(%rdx), %zmm8, %zmm6

// CHECK: vpmaxsd -8192(%rdx), %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x48,0x3d,0x72,0x80]
          vpmaxsd -8192(%rdx), %zmm8, %zmm6

// CHECK: vpmaxsd -8256(%rdx), %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x48,0x3d,0xb2,0xc0,0xdf,0xff,0xff]
          vpmaxsd -8256(%rdx), %zmm8, %zmm6

// CHECK: vpmaxsd 508(%rdx){1to16}, %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x58,0x3d,0x72,0x7f]
          vpmaxsd 508(%rdx){1to16}, %zmm8, %zmm6

// CHECK: vpmaxsd 512(%rdx){1to16}, %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x58,0x3d,0xb2,0x00,0x02,0x00,0x00]
          vpmaxsd 512(%rdx){1to16}, %zmm8, %zmm6

// CHECK: vpmaxsd -512(%rdx){1to16}, %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x58,0x3d,0x72,0x80]
          vpmaxsd -512(%rdx){1to16}, %zmm8, %zmm6

// CHECK: vpmaxsd -516(%rdx){1to16}, %zmm8, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x3d,0x58,0x3d,0xb2,0xfc,0xfd,0xff,0xff]
          vpmaxsd -516(%rdx){1to16}, %zmm8, %zmm6

// CHECK: vpmaxsq %zmm1, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x48,0x3d,0xf1]
          vpmaxsq %zmm1, %zmm6, %zmm6

// CHECK: vpmaxsq %zmm1, %zmm6, %zmm6 {%k7}
// CHECK:  encoding: [0x62,0xf2,0xcd,0x4f,0x3d,0xf1]
          vpmaxsq %zmm1, %zmm6, %zmm6 {%k7}

// CHECK: vpmaxsq %zmm1, %zmm6, %zmm6 {%k7} {z}
// CHECK:  encoding: [0x62,0xf2,0xcd,0xcf,0x3d,0xf1]
          vpmaxsq %zmm1, %zmm6, %zmm6 {%k7} {z}

// CHECK: vpmaxsq (%rcx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x48,0x3d,0x31]
          vpmaxsq (%rcx), %zmm6, %zmm6

// CHECK: vpmaxsq 291(%rax,%r14,8), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xb2,0xcd,0x48,0x3d,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsq 291(%rax,%r14,8), %zmm6, %zmm6

// CHECK: vpmaxsq (%rcx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x58,0x3d,0x31]
          vpmaxsq (%rcx){1to8}, %zmm6, %zmm6

// CHECK: vpmaxsq 8128(%rdx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x48,0x3d,0x72,0x7f]
          vpmaxsq 8128(%rdx), %zmm6, %zmm6

// CHECK: vpmaxsq 8192(%rdx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x48,0x3d,0xb2,0x00,0x20,0x00,0x00]
          vpmaxsq 8192(%rdx), %zmm6, %zmm6

// CHECK: vpmaxsq -8192(%rdx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x48,0x3d,0x72,0x80]
          vpmaxsq -8192(%rdx), %zmm6, %zmm6

// CHECK: vpmaxsq -8256(%rdx), %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x48,0x3d,0xb2,0xc0,0xdf,0xff,0xff]
          vpmaxsq -8256(%rdx), %zmm6, %zmm6

// CHECK: vpmaxsq 1016(%rdx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x58,0x3d,0x72,0x7f]
          vpmaxsq 1016(%rdx){1to8}, %zmm6, %zmm6

// CHECK: vpmaxsq 1024(%rdx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x58,0x3d,0xb2,0x00,0x04,0x00,0x00]
          vpmaxsq 1024(%rdx){1to8}, %zmm6, %zmm6

// CHECK: vpmaxsq -1024(%rdx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x58,0x3d,0x72,0x80]
          vpmaxsq -1024(%rdx){1to8}, %zmm6, %zmm6

// CHECK: vpmaxsq -1032(%rdx){1to8}, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xf2,0xcd,0x58,0x3d,0xb2,0xf8,0xfb,0xff,0xff]
          vpmaxsq -1032(%rdx){1to8}, %zmm6, %zmm6

// CHECK: vpmaxud %zmm25, %zmm7, %zmm17
// CHECK:  encoding: [0x62,0x82,0x45,0x48,0x3f,0xc9]
          vpmaxud %zmm25, %zmm7, %zmm17

// CHECK: vpmaxud %zmm25, %zmm7, %zmm17 {%k5}
// CHECK:  encoding: [0x62,0x82,0x45,0x4d,0x3f,0xc9]
          vpmaxud %zmm25, %zmm7, %zmm17 {%k5}

// CHECK: vpmaxud %zmm25, %zmm7, %zmm17 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0x45,0xcd,0x3f,0xc9]
          vpmaxud %zmm25, %zmm7, %zmm17 {%k5} {z}

// CHECK: vpmaxud (%rcx), %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x48,0x3f,0x09]
          vpmaxud (%rcx), %zmm7, %zmm17

// CHECK: vpmaxud 291(%rax,%r14,8), %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xa2,0x45,0x48,0x3f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmaxud 291(%rax,%r14,8), %zmm7, %zmm17

// CHECK: vpmaxud (%rcx){1to16}, %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x58,0x3f,0x09]
          vpmaxud (%rcx){1to16}, %zmm7, %zmm17

// CHECK: vpmaxud 8128(%rdx), %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x48,0x3f,0x4a,0x7f]
          vpmaxud 8128(%rdx), %zmm7, %zmm17

// CHECK: vpmaxud 8192(%rdx), %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x48,0x3f,0x8a,0x00,0x20,0x00,0x00]
          vpmaxud 8192(%rdx), %zmm7, %zmm17

// CHECK: vpmaxud -8192(%rdx), %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x48,0x3f,0x4a,0x80]
          vpmaxud -8192(%rdx), %zmm7, %zmm17

// CHECK: vpmaxud -8256(%rdx), %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x48,0x3f,0x8a,0xc0,0xdf,0xff,0xff]
          vpmaxud -8256(%rdx), %zmm7, %zmm17

// CHECK: vpmaxud 508(%rdx){1to16}, %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x58,0x3f,0x4a,0x7f]
          vpmaxud 508(%rdx){1to16}, %zmm7, %zmm17

// CHECK: vpmaxud 512(%rdx){1to16}, %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x58,0x3f,0x8a,0x00,0x02,0x00,0x00]
          vpmaxud 512(%rdx){1to16}, %zmm7, %zmm17

// CHECK: vpmaxud -512(%rdx){1to16}, %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x58,0x3f,0x4a,0x80]
          vpmaxud -512(%rdx){1to16}, %zmm7, %zmm17

// CHECK: vpmaxud -516(%rdx){1to16}, %zmm7, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x45,0x58,0x3f,0x8a,0xfc,0xfd,0xff,0xff]
          vpmaxud -516(%rdx){1to16}, %zmm7, %zmm17

// CHECK: vpmaxuq %zmm25, %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x02,0xcd,0x40,0x3f,0xf1]
          vpmaxuq %zmm25, %zmm22, %zmm30

// CHECK: vpmaxuq %zmm25, %zmm22, %zmm30 {%k1}
// CHECK:  encoding: [0x62,0x02,0xcd,0x41,0x3f,0xf1]
          vpmaxuq %zmm25, %zmm22, %zmm30 {%k1}

// CHECK: vpmaxuq %zmm25, %zmm22, %zmm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0xcd,0xc1,0x3f,0xf1]
          vpmaxuq %zmm25, %zmm22, %zmm30 {%k1} {z}

// CHECK: vpmaxuq (%rcx), %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x40,0x3f,0x31]
          vpmaxuq (%rcx), %zmm22, %zmm30

// CHECK: vpmaxuq 291(%rax,%r14,8), %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x22,0xcd,0x40,0x3f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmaxuq 291(%rax,%r14,8), %zmm22, %zmm30

// CHECK: vpmaxuq (%rcx){1to8}, %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x50,0x3f,0x31]
          vpmaxuq (%rcx){1to8}, %zmm22, %zmm30

// CHECK: vpmaxuq 8128(%rdx), %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x40,0x3f,0x72,0x7f]
          vpmaxuq 8128(%rdx), %zmm22, %zmm30

// CHECK: vpmaxuq 8192(%rdx), %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x40,0x3f,0xb2,0x00,0x20,0x00,0x00]
          vpmaxuq 8192(%rdx), %zmm22, %zmm30

// CHECK: vpmaxuq -8192(%rdx), %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x40,0x3f,0x72,0x80]
          vpmaxuq -8192(%rdx), %zmm22, %zmm30

// CHECK: vpmaxuq -8256(%rdx), %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x40,0x3f,0xb2,0xc0,0xdf,0xff,0xff]
          vpmaxuq -8256(%rdx), %zmm22, %zmm30

// CHECK: vpmaxuq 1016(%rdx){1to8}, %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x50,0x3f,0x72,0x7f]
          vpmaxuq 1016(%rdx){1to8}, %zmm22, %zmm30

// CHECK: vpmaxuq 1024(%rdx){1to8}, %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x50,0x3f,0xb2,0x00,0x04,0x00,0x00]
          vpmaxuq 1024(%rdx){1to8}, %zmm22, %zmm30

// CHECK: vpmaxuq -1024(%rdx){1to8}, %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x50,0x3f,0x72,0x80]
          vpmaxuq -1024(%rdx){1to8}, %zmm22, %zmm30

// CHECK: vpmaxuq -1032(%rdx){1to8}, %zmm22, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x50,0x3f,0xb2,0xf8,0xfb,0xff,0xff]
          vpmaxuq -1032(%rdx){1to8}, %zmm22, %zmm30

// CHECK: vpminsd %zmm24, %zmm16, %zmm2
// CHECK:  encoding: [0x62,0x92,0x7d,0x40,0x39,0xd0]
          vpminsd %zmm24, %zmm16, %zmm2

// CHECK: vpminsd %zmm24, %zmm16, %zmm2 {%k3}
// CHECK:  encoding: [0x62,0x92,0x7d,0x43,0x39,0xd0]
          vpminsd %zmm24, %zmm16, %zmm2 {%k3}

// CHECK: vpminsd %zmm24, %zmm16, %zmm2 {%k3} {z}
// CHECK:  encoding: [0x62,0x92,0x7d,0xc3,0x39,0xd0]
          vpminsd %zmm24, %zmm16, %zmm2 {%k3} {z}

// CHECK: vpminsd (%rcx), %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x40,0x39,0x11]
          vpminsd (%rcx), %zmm16, %zmm2

// CHECK: vpminsd 291(%rax,%r14,8), %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xb2,0x7d,0x40,0x39,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpminsd 291(%rax,%r14,8), %zmm16, %zmm2

// CHECK: vpminsd (%rcx){1to16}, %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x50,0x39,0x11]
          vpminsd (%rcx){1to16}, %zmm16, %zmm2

// CHECK: vpminsd 8128(%rdx), %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x40,0x39,0x52,0x7f]
          vpminsd 8128(%rdx), %zmm16, %zmm2

// CHECK: vpminsd 8192(%rdx), %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x40,0x39,0x92,0x00,0x20,0x00,0x00]
          vpminsd 8192(%rdx), %zmm16, %zmm2

// CHECK: vpminsd -8192(%rdx), %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x40,0x39,0x52,0x80]
          vpminsd -8192(%rdx), %zmm16, %zmm2

// CHECK: vpminsd -8256(%rdx), %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x40,0x39,0x92,0xc0,0xdf,0xff,0xff]
          vpminsd -8256(%rdx), %zmm16, %zmm2

// CHECK: vpminsd 508(%rdx){1to16}, %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x50,0x39,0x52,0x7f]
          vpminsd 508(%rdx){1to16}, %zmm16, %zmm2

// CHECK: vpminsd 512(%rdx){1to16}, %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x50,0x39,0x92,0x00,0x02,0x00,0x00]
          vpminsd 512(%rdx){1to16}, %zmm16, %zmm2

// CHECK: vpminsd -512(%rdx){1to16}, %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x50,0x39,0x52,0x80]
          vpminsd -512(%rdx){1to16}, %zmm16, %zmm2

// CHECK: vpminsd -516(%rdx){1to16}, %zmm16, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x7d,0x50,0x39,0x92,0xfc,0xfd,0xff,0xff]
          vpminsd -516(%rdx){1to16}, %zmm16, %zmm2

// CHECK: vpminsq %zmm17, %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xfd,0x40,0x39,0xe1]
          vpminsq %zmm17, %zmm16, %zmm20

// CHECK: vpminsq %zmm17, %zmm16, %zmm20 {%k6}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x46,0x39,0xe1]
          vpminsq %zmm17, %zmm16, %zmm20 {%k6}

// CHECK: vpminsq %zmm17, %zmm16, %zmm20 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0xc6,0x39,0xe1]
          vpminsq %zmm17, %zmm16, %zmm20 {%k6} {z}

// CHECK: vpminsq (%rcx), %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0x39,0x21]
          vpminsq (%rcx), %zmm16, %zmm20

// CHECK: vpminsq 291(%rax,%r14,8), %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xfd,0x40,0x39,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpminsq 291(%rax,%r14,8), %zmm16, %zmm20

// CHECK: vpminsq (%rcx){1to8}, %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0x39,0x21]
          vpminsq (%rcx){1to8}, %zmm16, %zmm20

// CHECK: vpminsq 8128(%rdx), %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0x39,0x62,0x7f]
          vpminsq 8128(%rdx), %zmm16, %zmm20

// CHECK: vpminsq 8192(%rdx), %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0x39,0xa2,0x00,0x20,0x00,0x00]
          vpminsq 8192(%rdx), %zmm16, %zmm20

// CHECK: vpminsq -8192(%rdx), %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0x39,0x62,0x80]
          vpminsq -8192(%rdx), %zmm16, %zmm20

// CHECK: vpminsq -8256(%rdx), %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0x39,0xa2,0xc0,0xdf,0xff,0xff]
          vpminsq -8256(%rdx), %zmm16, %zmm20

// CHECK: vpminsq 1016(%rdx){1to8}, %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0x39,0x62,0x7f]
          vpminsq 1016(%rdx){1to8}, %zmm16, %zmm20

// CHECK: vpminsq 1024(%rdx){1to8}, %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0x39,0xa2,0x00,0x04,0x00,0x00]
          vpminsq 1024(%rdx){1to8}, %zmm16, %zmm20

// CHECK: vpminsq -1024(%rdx){1to8}, %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0x39,0x62,0x80]
          vpminsq -1024(%rdx){1to8}, %zmm16, %zmm20

// CHECK: vpminsq -1032(%rdx){1to8}, %zmm16, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0x39,0xa2,0xf8,0xfb,0xff,0xff]
          vpminsq -1032(%rdx){1to8}, %zmm16, %zmm20

// CHECK: vpminud %zmm20, %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xb2,0x45,0x40,0x3b,0xdc]
          vpminud %zmm20, %zmm23, %zmm3

// CHECK: vpminud %zmm20, %zmm23, %zmm3 {%k3}
// CHECK:  encoding: [0x62,0xb2,0x45,0x43,0x3b,0xdc]
          vpminud %zmm20, %zmm23, %zmm3 {%k3}

// CHECK: vpminud %zmm20, %zmm23, %zmm3 {%k3} {z}
// CHECK:  encoding: [0x62,0xb2,0x45,0xc3,0x3b,0xdc]
          vpminud %zmm20, %zmm23, %zmm3 {%k3} {z}

// CHECK: vpminud (%rcx), %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x40,0x3b,0x19]
          vpminud (%rcx), %zmm23, %zmm3

// CHECK: vpminud 291(%rax,%r14,8), %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xb2,0x45,0x40,0x3b,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpminud 291(%rax,%r14,8), %zmm23, %zmm3

// CHECK: vpminud (%rcx){1to16}, %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x50,0x3b,0x19]
          vpminud (%rcx){1to16}, %zmm23, %zmm3

// CHECK: vpminud 8128(%rdx), %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x40,0x3b,0x5a,0x7f]
          vpminud 8128(%rdx), %zmm23, %zmm3

// CHECK: vpminud 8192(%rdx), %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x40,0x3b,0x9a,0x00,0x20,0x00,0x00]
          vpminud 8192(%rdx), %zmm23, %zmm3

// CHECK: vpminud -8192(%rdx), %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x40,0x3b,0x5a,0x80]
          vpminud -8192(%rdx), %zmm23, %zmm3

// CHECK: vpminud -8256(%rdx), %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x40,0x3b,0x9a,0xc0,0xdf,0xff,0xff]
          vpminud -8256(%rdx), %zmm23, %zmm3

// CHECK: vpminud 508(%rdx){1to16}, %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x50,0x3b,0x5a,0x7f]
          vpminud 508(%rdx){1to16}, %zmm23, %zmm3

// CHECK: vpminud 512(%rdx){1to16}, %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x50,0x3b,0x9a,0x00,0x02,0x00,0x00]
          vpminud 512(%rdx){1to16}, %zmm23, %zmm3

// CHECK: vpminud -512(%rdx){1to16}, %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x50,0x3b,0x5a,0x80]
          vpminud -512(%rdx){1to16}, %zmm23, %zmm3

// CHECK: vpminud -516(%rdx){1to16}, %zmm23, %zmm3
// CHECK:  encoding: [0x62,0xf2,0x45,0x50,0x3b,0x9a,0xfc,0xfd,0xff,0xff]
          vpminud -516(%rdx){1to16}, %zmm23, %zmm3

// CHECK: vpminuq %zmm7, %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x40,0x3b,0xdf]
          vpminuq %zmm7, %zmm26, %zmm11

// CHECK: vpminuq %zmm7, %zmm26, %zmm11 {%k5}
// CHECK:  encoding: [0x62,0x72,0xad,0x45,0x3b,0xdf]
          vpminuq %zmm7, %zmm26, %zmm11 {%k5}

// CHECK: vpminuq %zmm7, %zmm26, %zmm11 {%k5} {z}
// CHECK:  encoding: [0x62,0x72,0xad,0xc5,0x3b,0xdf]
          vpminuq %zmm7, %zmm26, %zmm11 {%k5} {z}

// CHECK: vpminuq (%rcx), %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x40,0x3b,0x19]
          vpminuq (%rcx), %zmm26, %zmm11

// CHECK: vpminuq 291(%rax,%r14,8), %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x32,0xad,0x40,0x3b,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpminuq 291(%rax,%r14,8), %zmm26, %zmm11

// CHECK: vpminuq (%rcx){1to8}, %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x50,0x3b,0x19]
          vpminuq (%rcx){1to8}, %zmm26, %zmm11

// CHECK: vpminuq 8128(%rdx), %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x40,0x3b,0x5a,0x7f]
          vpminuq 8128(%rdx), %zmm26, %zmm11

// CHECK: vpminuq 8192(%rdx), %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x40,0x3b,0x9a,0x00,0x20,0x00,0x00]
          vpminuq 8192(%rdx), %zmm26, %zmm11

// CHECK: vpminuq -8192(%rdx), %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x40,0x3b,0x5a,0x80]
          vpminuq -8192(%rdx), %zmm26, %zmm11

// CHECK: vpminuq -8256(%rdx), %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x40,0x3b,0x9a,0xc0,0xdf,0xff,0xff]
          vpminuq -8256(%rdx), %zmm26, %zmm11

// CHECK: vpminuq 1016(%rdx){1to8}, %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x50,0x3b,0x5a,0x7f]
          vpminuq 1016(%rdx){1to8}, %zmm26, %zmm11

// CHECK: vpminuq 1024(%rdx){1to8}, %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x50,0x3b,0x9a,0x00,0x04,0x00,0x00]
          vpminuq 1024(%rdx){1to8}, %zmm26, %zmm11

// CHECK: vpminuq -1024(%rdx){1to8}, %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x50,0x3b,0x5a,0x80]
          vpminuq -1024(%rdx){1to8}, %zmm26, %zmm11

// CHECK: vpminuq -1032(%rdx){1to8}, %zmm26, %zmm11
// CHECK:  encoding: [0x62,0x72,0xad,0x50,0x3b,0x9a,0xf8,0xfb,0xff,0xff]
          vpminuq -1032(%rdx){1to8}, %zmm26, %zmm11

// CHECK: vpmovsxbd %xmm7, %zmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x21,0xdf]
          vpmovsxbd %xmm7, %zmm27

// CHECK: vpmovsxbd %xmm7, %zmm27 {%k5}
// CHECK:  encoding: [0x62,0x62,0x7d,0x4d,0x21,0xdf]
          vpmovsxbd %xmm7, %zmm27 {%k5}

// CHECK: vpmovsxbd %xmm7, %zmm27 {%k5} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xcd,0x21,0xdf]
          vpmovsxbd %xmm7, %zmm27 {%k5} {z}

// CHECK: vpmovsxbd (%rcx), %zmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x21,0x19]
          vpmovsxbd (%rcx), %zmm27

// CHECK: vpmovsxbd 291(%rax,%r14,8), %zmm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x48,0x21,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxbd 291(%rax,%r14,8), %zmm27

// CHECK: vpmovsxbd 2032(%rdx), %zmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x21,0x5a,0x7f]
          vpmovsxbd 2032(%rdx), %zmm27

// CHECK: vpmovsxbd 2048(%rdx), %zmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x21,0x9a,0x00,0x08,0x00,0x00]
          vpmovsxbd 2048(%rdx), %zmm27

// CHECK: vpmovsxbd -2048(%rdx), %zmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x21,0x5a,0x80]
          vpmovsxbd -2048(%rdx), %zmm27

// CHECK: vpmovsxbd -2064(%rdx), %zmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x21,0x9a,0xf0,0xf7,0xff,0xff]
          vpmovsxbd -2064(%rdx), %zmm27

// CHECK: vpmovsxbd (%rcx), %zmm27 {%k1}
// CHECK:  encoding: [0x62,0x62,0x7d,0x49,0x21,0x19]
          vpmovsxbd (%rcx), %zmm27 {%k1}

// CHECK: vpmovsxbd (%rcx), %zmm27 {%k2} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xca,0x21,0x19]
          vpmovsxbd (%rcx), %zmm27 {%k2} {z}

// CHECK: vpmovsxbq %xmm11, %zmm11
// CHECK:  encoding: [0x62,0x52,0x7d,0x48,0x22,0xdb]
          vpmovsxbq %xmm11, %zmm11

// CHECK: vpmovsxbq %xmm11, %zmm11 {%k5}
// CHECK:  encoding: [0x62,0x52,0x7d,0x4d,0x22,0xdb]
          vpmovsxbq %xmm11, %zmm11 {%k5}

// CHECK: vpmovsxbq %xmm11, %zmm11 {%k5} {z}
// CHECK:  encoding: [0x62,0x52,0x7d,0xcd,0x22,0xdb]
          vpmovsxbq %xmm11, %zmm11 {%k5} {z}

// CHECK: vpmovsxbq (%rcx), %zmm11
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x22,0x19]
          vpmovsxbq (%rcx), %zmm11

// CHECK: vpmovsxbq 291(%rax,%r14,8), %zmm11
// CHECK:  encoding: [0x62,0x32,0x7d,0x48,0x22,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxbq 291(%rax,%r14,8), %zmm11

// CHECK: vpmovsxbq 1016(%rdx), %zmm11
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x22,0x5a,0x7f]
          vpmovsxbq 1016(%rdx), %zmm11

// CHECK: vpmovsxbq 1024(%rdx), %zmm11
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x22,0x9a,0x00,0x04,0x00,0x00]
          vpmovsxbq 1024(%rdx), %zmm11

// CHECK: vpmovsxbq -1024(%rdx), %zmm11
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x22,0x5a,0x80]
          vpmovsxbq -1024(%rdx), %zmm11

// CHECK: vpmovsxbq -1032(%rdx), %zmm11
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x22,0x9a,0xf8,0xfb,0xff,0xff]
          vpmovsxbq -1032(%rdx), %zmm11

// CHECK: vpmovsxdq %ymm29, %zmm26
// CHECK:  encoding: [0x62,0x02,0x7d,0x48,0x25,0xd5]
          vpmovsxdq %ymm29, %zmm26

// CHECK: vpmovsxdq %ymm29, %zmm26 {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x49,0x25,0xd5]
          vpmovsxdq %ymm29, %zmm26 {%k1}

// CHECK: vpmovsxdq %ymm29, %zmm26 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0xc9,0x25,0xd5]
          vpmovsxdq %ymm29, %zmm26 {%k1} {z}

// CHECK: vpmovsxdq (%rcx), %zmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x25,0x11]
          vpmovsxdq (%rcx), %zmm26

// CHECK: vpmovsxdq 291(%rax,%r14,8), %zmm26
// CHECK:  encoding: [0x62,0x22,0x7d,0x48,0x25,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxdq 291(%rax,%r14,8), %zmm26

// CHECK: vpmovsxdq 4064(%rdx), %zmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x25,0x52,0x7f]
          vpmovsxdq 4064(%rdx), %zmm26

// CHECK: vpmovsxdq 4096(%rdx), %zmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x25,0x92,0x00,0x10,0x00,0x00]
          vpmovsxdq 4096(%rdx), %zmm26

// CHECK: vpmovsxdq -4096(%rdx), %zmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x25,0x52,0x80]
          vpmovsxdq -4096(%rdx), %zmm26

// CHECK: vpmovsxdq -4128(%rdx), %zmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x25,0x92,0xe0,0xef,0xff,0xff]
          vpmovsxdq -4128(%rdx), %zmm26

// CHECK: vpmovsxwd %ymm11, %zmm23
// CHECK:  encoding: [0x62,0xc2,0x7d,0x48,0x23,0xfb]
          vpmovsxwd %ymm11, %zmm23

// CHECK: vpmovsxwd %ymm11, %zmm23 {%k2}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x4a,0x23,0xfb]
          vpmovsxwd %ymm11, %zmm23 {%k2}

// CHECK: vpmovsxwd %ymm11, %zmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0xc2,0x7d,0xca,0x23,0xfb]
          vpmovsxwd %ymm11, %zmm23 {%k2} {z}

// CHECK: vpmovsxwd (%rcx), %zmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x23,0x39]
          vpmovsxwd (%rcx), %zmm23

// CHECK: vpmovsxwd 291(%rax,%r14,8), %zmm23
// CHECK:  encoding: [0x62,0xa2,0x7d,0x48,0x23,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxwd 291(%rax,%r14,8), %zmm23

// CHECK: vpmovsxwd 4064(%rdx), %zmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x23,0x7a,0x7f]
          vpmovsxwd 4064(%rdx), %zmm23

// CHECK: vpmovsxwd 4096(%rdx), %zmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x23,0xba,0x00,0x10,0x00,0x00]
          vpmovsxwd 4096(%rdx), %zmm23

// CHECK: vpmovsxwd -4096(%rdx), %zmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x23,0x7a,0x80]
          vpmovsxwd -4096(%rdx), %zmm23

// CHECK: vpmovsxwd -4128(%rdx), %zmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x23,0xba,0xe0,0xef,0xff,0xff]
          vpmovsxwd -4128(%rdx), %zmm23

// CHECK: vpmovsxwq %xmm25, %zmm25
// CHECK:  encoding: [0x62,0x02,0x7d,0x48,0x24,0xc9]
          vpmovsxwq %xmm25, %zmm25

// CHECK: vpmovsxwq %xmm25, %zmm25 {%k4}
// CHECK:  encoding: [0x62,0x02,0x7d,0x4c,0x24,0xc9]
          vpmovsxwq %xmm25, %zmm25 {%k4}

// CHECK: vpmovsxwq %xmm25, %zmm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0xcc,0x24,0xc9]
          vpmovsxwq %xmm25, %zmm25 {%k4} {z}

// CHECK: vpmovsxwq (%rcx), %zmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x24,0x09]
          vpmovsxwq (%rcx), %zmm25

// CHECK: vpmovsxwq 291(%rax,%r14,8), %zmm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x48,0x24,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxwq 291(%rax,%r14,8), %zmm25

// CHECK: vpmovsxwq 2032(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x24,0x4a,0x7f]
          vpmovsxwq 2032(%rdx), %zmm25

// CHECK: vpmovsxwq 2048(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x24,0x8a,0x00,0x08,0x00,0x00]
          vpmovsxwq 2048(%rdx), %zmm25

// CHECK: vpmovsxwq -2048(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x24,0x4a,0x80]
          vpmovsxwq -2048(%rdx), %zmm25

// CHECK: vpmovsxwq -2064(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x24,0x8a,0xf0,0xf7,0xff,0xff]
          vpmovsxwq -2064(%rdx), %zmm25

// CHECK: vpmovzxbd %xmm25, %zmm18
// CHECK:  encoding: [0x62,0x82,0x7d,0x48,0x31,0xd1]
          vpmovzxbd %xmm25, %zmm18

// CHECK: vpmovzxbd %xmm25, %zmm18 {%k7}
// CHECK:  encoding: [0x62,0x82,0x7d,0x4f,0x31,0xd1]
          vpmovzxbd %xmm25, %zmm18 {%k7}

// CHECK: vpmovzxbd %xmm25, %zmm18 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0xcf,0x31,0xd1]
          vpmovzxbd %xmm25, %zmm18 {%k7} {z}

// CHECK: vpmovzxbd (%rcx), %zmm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x31,0x11]
          vpmovzxbd (%rcx), %zmm18

// CHECK: vpmovzxbd 291(%rax,%r14,8), %zmm18
// CHECK:  encoding: [0x62,0xa2,0x7d,0x48,0x31,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxbd 291(%rax,%r14,8), %zmm18

// CHECK: vpmovzxbd 2032(%rdx), %zmm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x31,0x52,0x7f]
          vpmovzxbd 2032(%rdx), %zmm18

// CHECK: vpmovzxbd 2048(%rdx), %zmm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x31,0x92,0x00,0x08,0x00,0x00]
          vpmovzxbd 2048(%rdx), %zmm18

// CHECK: vpmovzxbd -2048(%rdx), %zmm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x31,0x52,0x80]
          vpmovzxbd -2048(%rdx), %zmm18

// CHECK: vpmovzxbd -2064(%rdx), %zmm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x31,0x92,0xf0,0xf7,0xff,0xff]
          vpmovzxbd -2064(%rdx), %zmm18

// CHECK: vpmovzxbq %xmm15, %zmm5
// CHECK:  encoding: [0x62,0xd2,0x7d,0x48,0x32,0xef]
          vpmovzxbq %xmm15, %zmm5

// CHECK: vpmovzxbq %xmm15, %zmm5 {%k1}
// CHECK:  encoding: [0x62,0xd2,0x7d,0x49,0x32,0xef]
          vpmovzxbq %xmm15, %zmm5 {%k1}

// CHECK: vpmovzxbq %xmm15, %zmm5 {%k1} {z}
// CHECK:  encoding: [0x62,0xd2,0x7d,0xc9,0x32,0xef]
          vpmovzxbq %xmm15, %zmm5 {%k1} {z}

// CHECK: vpmovzxbq (%rcx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x32,0x29]
          vpmovzxbq (%rcx), %zmm5

// CHECK: vpmovzxbq 291(%rax,%r14,8), %zmm5
// CHECK:  encoding: [0x62,0xb2,0x7d,0x48,0x32,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxbq 291(%rax,%r14,8), %zmm5

// CHECK: vpmovzxbq 1016(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x32,0x6a,0x7f]
          vpmovzxbq 1016(%rdx), %zmm5

// CHECK: vpmovzxbq 1024(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x32,0xaa,0x00,0x04,0x00,0x00]
          vpmovzxbq 1024(%rdx), %zmm5

// CHECK: vpmovzxbq -1024(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x32,0x6a,0x80]
          vpmovzxbq -1024(%rdx), %zmm5

// CHECK: vpmovzxbq -1032(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x32,0xaa,0xf8,0xfb,0xff,0xff]
          vpmovzxbq -1032(%rdx), %zmm5

// CHECK: vpmovzxdq %ymm4, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x35,0xe4]
          vpmovzxdq %ymm4, %zmm20

// CHECK: vpmovzxdq %ymm4, %zmm20 {%k3}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x4b,0x35,0xe4]
          vpmovzxdq %ymm4, %zmm20 {%k3}

// CHECK: vpmovzxdq %ymm4, %zmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0xcb,0x35,0xe4]
          vpmovzxdq %ymm4, %zmm20 {%k3} {z}

// CHECK: vpmovzxdq (%rcx), %zmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x35,0x21]
          vpmovzxdq (%rcx), %zmm20

// CHECK: vpmovzxdq 291(%rax,%r14,8), %zmm20
// CHECK:  encoding: [0x62,0xa2,0x7d,0x48,0x35,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxdq 291(%rax,%r14,8), %zmm20

// CHECK: vpmovzxdq 4064(%rdx), %zmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x35,0x62,0x7f]
          vpmovzxdq 4064(%rdx), %zmm20

// CHECK: vpmovzxdq 4096(%rdx), %zmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x35,0xa2,0x00,0x10,0x00,0x00]
          vpmovzxdq 4096(%rdx), %zmm20

// CHECK: vpmovzxdq -4096(%rdx), %zmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x35,0x62,0x80]
          vpmovzxdq -4096(%rdx), %zmm20

// CHECK: vpmovzxdq -4128(%rdx), %zmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x35,0xa2,0xe0,0xef,0xff,0xff]
          vpmovzxdq -4128(%rdx), %zmm20

// CHECK: vpmovzxwd %ymm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x33,0xc6]
          vpmovzxwd %ymm6, %zmm8

// CHECK: vpmovzxwd %ymm6, %zmm8 {%k7}
// CHECK:  encoding: [0x62,0x72,0x7d,0x4f,0x33,0xc6]
          vpmovzxwd %ymm6, %zmm8 {%k7}

// CHECK: vpmovzxwd %ymm6, %zmm8 {%k7} {z}
// CHECK:  encoding: [0x62,0x72,0x7d,0xcf,0x33,0xc6]
          vpmovzxwd %ymm6, %zmm8 {%k7} {z}

// CHECK: vpmovzxwd (%rcx), %zmm8
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x33,0x01]
          vpmovzxwd (%rcx), %zmm8

// CHECK: vpmovzxwd 291(%rax,%r14,8), %zmm8
// CHECK:  encoding: [0x62,0x32,0x7d,0x48,0x33,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxwd 291(%rax,%r14,8), %zmm8

// CHECK: vpmovzxwd 4064(%rdx), %zmm8
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x33,0x42,0x7f]
          vpmovzxwd 4064(%rdx), %zmm8

// CHECK: vpmovzxwd 4096(%rdx), %zmm8
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x33,0x82,0x00,0x10,0x00,0x00]
          vpmovzxwd 4096(%rdx), %zmm8

// CHECK: vpmovzxwd -4096(%rdx), %zmm8
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x33,0x42,0x80]
          vpmovzxwd -4096(%rdx), %zmm8

// CHECK: vpmovzxwd -4128(%rdx), %zmm8
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x33,0x82,0xe0,0xef,0xff,0xff]
          vpmovzxwd -4128(%rdx), %zmm8

// CHECK: vpmovzxwq %xmm15, %zmm5
// CHECK:  encoding: [0x62,0xd2,0x7d,0x48,0x34,0xef]
          vpmovzxwq %xmm15, %zmm5

// CHECK: vpmovzxwq %xmm15, %zmm5 {%k7}
// CHECK:  encoding: [0x62,0xd2,0x7d,0x4f,0x34,0xef]
          vpmovzxwq %xmm15, %zmm5 {%k7}

// CHECK: vpmovzxwq %xmm15, %zmm5 {%k7} {z}
// CHECK:  encoding: [0x62,0xd2,0x7d,0xcf,0x34,0xef]
          vpmovzxwq %xmm15, %zmm5 {%k7} {z}

// CHECK: vpmovzxwq (%rcx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x34,0x29]
          vpmovzxwq (%rcx), %zmm5

// CHECK: vpmovzxwq 291(%rax,%r14,8), %zmm5
// CHECK:  encoding: [0x62,0xb2,0x7d,0x48,0x34,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxwq 291(%rax,%r14,8), %zmm5

// CHECK: vpmovzxwq 2032(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x34,0x6a,0x7f]
          vpmovzxwq 2032(%rdx), %zmm5

// CHECK: vpmovzxwq 2048(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x34,0xaa,0x00,0x08,0x00,0x00]
          vpmovzxwq 2048(%rdx), %zmm5

// CHECK: vpmovzxwq -2048(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x34,0x6a,0x80]
          vpmovzxwq -2048(%rdx), %zmm5

// CHECK: vpmovzxwq -2064(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x34,0xaa,0xf0,0xf7,0xff,0xff]
          vpmovzxwq -2064(%rdx), %zmm5

// CHECK: vpmuldq %zmm9, %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x42,0xb5,0x48,0x28,0xe9]
          vpmuldq %zmm9, %zmm9, %zmm29

// CHECK: vpmuldq %zmm9, %zmm9, %zmm29 {%k5}
// CHECK:  encoding: [0x62,0x42,0xb5,0x4d,0x28,0xe9]
          vpmuldq %zmm9, %zmm9, %zmm29 {%k5}

// CHECK: vpmuldq %zmm9, %zmm9, %zmm29 {%k5} {z}
// CHECK:  encoding: [0x62,0x42,0xb5,0xcd,0x28,0xe9]
          vpmuldq %zmm9, %zmm9, %zmm29 {%k5} {z}

// CHECK: vpmuldq (%rcx), %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x48,0x28,0x29]
          vpmuldq (%rcx), %zmm9, %zmm29

// CHECK: vpmuldq (%rcx), %zmm9, %zmm29 {%k6}
// CHECK:  encoding: [0x62,0x62,0xb5,0x4e,0x28,0x29]
          vpmuldq (%rcx), %zmm9, %zmm29 {%k6}

// CHECK: vpmuldq (%rcx), %zmm9, %zmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x62,0xb5,0xce,0x28,0x29]
          vpmuldq (%rcx), %zmm9, %zmm29 {%k6} {z}

// CHECK: vpmuldq 291(%rax,%r14,8), %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x22,0xb5,0x48,0x28,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmuldq 291(%rax,%r14,8), %zmm9, %zmm29

// CHECK: vpmuldq (%rcx){1to8}, %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x58,0x28,0x29]
          vpmuldq (%rcx){1to8}, %zmm9, %zmm29

// CHECK: vpmuldq (%rcx){1to8}, %zmm9, %zmm29 {%k3}
// CHECK:  encoding: [0x62,0x62,0xb5,0x5b,0x28,0x29]
          vpmuldq (%rcx){1to8}, %zmm9, %zmm29 {%k3}

// CHECK: vpmuldq (%rcx){1to8}, %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0xdb,0x28,0x29]
          vpmuldq (%rcx){1to8}, %zmm9, %zmm29 {%k3} {z}

// CHECK: vpmuldq 8128(%rdx), %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x48,0x28,0x6a,0x7f]
          vpmuldq 8128(%rdx), %zmm9, %zmm29

// CHECK: vpmuldq 8192(%rdx), %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x48,0x28,0xaa,0x00,0x20,0x00,0x00]
          vpmuldq 8192(%rdx), %zmm9, %zmm29

// CHECK: vpmuldq -8192(%rdx), %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x48,0x28,0x6a,0x80]
          vpmuldq -8192(%rdx), %zmm9, %zmm29

// CHECK: vpmuldq -8256(%rdx), %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x48,0x28,0xaa,0xc0,0xdf,0xff,0xff]
          vpmuldq -8256(%rdx), %zmm9, %zmm29

// CHECK: vpmuldq 1016(%rdx){1to8}, %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x58,0x28,0x6a,0x7f]
          vpmuldq 1016(%rdx){1to8}, %zmm9, %zmm29

// CHECK: vpmuldq 1024(%rdx){1to8}, %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x58,0x28,0xaa,0x00,0x04,0x00,0x00]
          vpmuldq 1024(%rdx){1to8}, %zmm9, %zmm29

// CHECK: vpmuldq -1024(%rdx){1to8}, %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x58,0x28,0x6a,0x80]
          vpmuldq -1024(%rdx){1to8}, %zmm9, %zmm29

// CHECK: vpmuldq -1032(%rdx){1to8}, %zmm9, %zmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x58,0x28,0xaa,0xf8,0xfb,0xff,0xff]
          vpmuldq -1032(%rdx){1to8}, %zmm9, %zmm29

// CHECK: vpmulld %zmm2, %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x48,0x40,0xe2]
          vpmulld %zmm2, %zmm3, %zmm12

// CHECK: vpmulld %zmm2, %zmm3, %zmm12 {%k6}
// CHECK:  encoding: [0x62,0x72,0x65,0x4e,0x40,0xe2]
          vpmulld %zmm2, %zmm3, %zmm12 {%k6}

// CHECK: vpmulld %zmm2, %zmm3, %zmm12 {%k6} {z}
// CHECK:  encoding: [0x62,0x72,0x65,0xce,0x40,0xe2]
          vpmulld %zmm2, %zmm3, %zmm12 {%k6} {z}

// CHECK: vpmulld (%rcx), %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x48,0x40,0x21]
          vpmulld (%rcx), %zmm3, %zmm12

// CHECK: vpmulld 291(%rax,%r14,8), %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x32,0x65,0x48,0x40,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmulld 291(%rax,%r14,8), %zmm3, %zmm12

// CHECK: vpmulld (%rcx){1to16}, %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x58,0x40,0x21]
          vpmulld (%rcx){1to16}, %zmm3, %zmm12

// CHECK: vpmulld 8128(%rdx), %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x48,0x40,0x62,0x7f]
          vpmulld 8128(%rdx), %zmm3, %zmm12

// CHECK: vpmulld 8192(%rdx), %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x48,0x40,0xa2,0x00,0x20,0x00,0x00]
          vpmulld 8192(%rdx), %zmm3, %zmm12

// CHECK: vpmulld -8192(%rdx), %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x48,0x40,0x62,0x80]
          vpmulld -8192(%rdx), %zmm3, %zmm12

// CHECK: vpmulld -8256(%rdx), %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x48,0x40,0xa2,0xc0,0xdf,0xff,0xff]
          vpmulld -8256(%rdx), %zmm3, %zmm12

// CHECK: vpmulld 508(%rdx){1to16}, %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x58,0x40,0x62,0x7f]
          vpmulld 508(%rdx){1to16}, %zmm3, %zmm12

// CHECK: vpmulld 512(%rdx){1to16}, %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x58,0x40,0xa2,0x00,0x02,0x00,0x00]
          vpmulld 512(%rdx){1to16}, %zmm3, %zmm12

// CHECK: vpmulld -512(%rdx){1to16}, %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x58,0x40,0x62,0x80]
          vpmulld -512(%rdx){1to16}, %zmm3, %zmm12

// CHECK: vpmulld -516(%rdx){1to16}, %zmm3, %zmm12
// CHECK:  encoding: [0x62,0x72,0x65,0x58,0x40,0xa2,0xfc,0xfd,0xff,0xff]
          vpmulld -516(%rdx){1to16}, %zmm3, %zmm12

// CHECK: vpmuludq %zmm9, %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xc1,0xd5,0x48,0xf4,0xf9]
          vpmuludq %zmm9, %zmm5, %zmm23

// CHECK: vpmuludq %zmm9, %zmm5, %zmm23 {%k4}
// CHECK:  encoding: [0x62,0xc1,0xd5,0x4c,0xf4,0xf9]
          vpmuludq %zmm9, %zmm5, %zmm23 {%k4}

// CHECK: vpmuludq %zmm9, %zmm5, %zmm23 {%k4} {z}
// CHECK:  encoding: [0x62,0xc1,0xd5,0xcc,0xf4,0xf9]
          vpmuludq %zmm9, %zmm5, %zmm23 {%k4} {z}

// CHECK: vpmuludq (%rcx), %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x48,0xf4,0x39]
          vpmuludq (%rcx), %zmm5, %zmm23

// CHECK: vpmuludq 291(%rax,%r14,8), %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xa1,0xd5,0x48,0xf4,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmuludq 291(%rax,%r14,8), %zmm5, %zmm23

// CHECK: vpmuludq (%rcx){1to8}, %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x58,0xf4,0x39]
          vpmuludq (%rcx){1to8}, %zmm5, %zmm23

// CHECK: vpmuludq 8128(%rdx), %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x48,0xf4,0x7a,0x7f]
          vpmuludq 8128(%rdx), %zmm5, %zmm23

// CHECK: vpmuludq 8192(%rdx), %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x48,0xf4,0xba,0x00,0x20,0x00,0x00]
          vpmuludq 8192(%rdx), %zmm5, %zmm23

// CHECK: vpmuludq -8192(%rdx), %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x48,0xf4,0x7a,0x80]
          vpmuludq -8192(%rdx), %zmm5, %zmm23

// CHECK: vpmuludq -8256(%rdx), %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x48,0xf4,0xba,0xc0,0xdf,0xff,0xff]
          vpmuludq -8256(%rdx), %zmm5, %zmm23

// CHECK: vpmuludq 1016(%rdx){1to8}, %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x58,0xf4,0x7a,0x7f]
          vpmuludq 1016(%rdx){1to8}, %zmm5, %zmm23

// CHECK: vpmuludq 1024(%rdx){1to8}, %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x58,0xf4,0xba,0x00,0x04,0x00,0x00]
          vpmuludq 1024(%rdx){1to8}, %zmm5, %zmm23

// CHECK: vpmuludq -1024(%rdx){1to8}, %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x58,0xf4,0x7a,0x80]
          vpmuludq -1024(%rdx){1to8}, %zmm5, %zmm23

// CHECK: vpmuludq -1032(%rdx){1to8}, %zmm5, %zmm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x58,0xf4,0xba,0xf8,0xfb,0xff,0xff]
          vpmuludq -1032(%rdx){1to8}, %zmm5, %zmm23

// CHECK: vpord  %zmm20, %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xa1,0x6d,0x48,0xeb,0xfc]
          vpord  %zmm20, %zmm2, %zmm23

// CHECK: vpord  %zmm20, %zmm2, %zmm23 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x6d,0x4a,0xeb,0xfc]
          vpord  %zmm20, %zmm2, %zmm23 {%k2}

// CHECK: vpord  %zmm20, %zmm2, %zmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x6d,0xca,0xeb,0xfc]
          vpord  %zmm20, %zmm2, %zmm23 {%k2} {z}

// CHECK: vpord  (%rcx), %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x48,0xeb,0x39]
          vpord  (%rcx), %zmm2, %zmm23

// CHECK: vpord  291(%rax,%r14,8), %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xa1,0x6d,0x48,0xeb,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpord  291(%rax,%r14,8), %zmm2, %zmm23

// CHECK: vpord  (%rcx){1to16}, %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x58,0xeb,0x39]
          vpord  (%rcx){1to16}, %zmm2, %zmm23

// CHECK: vpord  8128(%rdx), %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x48,0xeb,0x7a,0x7f]
          vpord  8128(%rdx), %zmm2, %zmm23

// CHECK: vpord  8192(%rdx), %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x48,0xeb,0xba,0x00,0x20,0x00,0x00]
          vpord  8192(%rdx), %zmm2, %zmm23

// CHECK: vpord  -8192(%rdx), %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x48,0xeb,0x7a,0x80]
          vpord  -8192(%rdx), %zmm2, %zmm23

// CHECK: vpord  -8256(%rdx), %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x48,0xeb,0xba,0xc0,0xdf,0xff,0xff]
          vpord  -8256(%rdx), %zmm2, %zmm23

// CHECK: vpord  508(%rdx){1to16}, %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x58,0xeb,0x7a,0x7f]
          vpord  508(%rdx){1to16}, %zmm2, %zmm23

// CHECK: vpord  512(%rdx){1to16}, %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x58,0xeb,0xba,0x00,0x02,0x00,0x00]
          vpord  512(%rdx){1to16}, %zmm2, %zmm23

// CHECK: vpord  -512(%rdx){1to16}, %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x58,0xeb,0x7a,0x80]
          vpord  -512(%rdx){1to16}, %zmm2, %zmm23

// CHECK: vpord  -516(%rdx){1to16}, %zmm2, %zmm23
// CHECK:  encoding: [0x62,0xe1,0x6d,0x58,0xeb,0xba,0xfc,0xfd,0xff,0xff]
          vpord  -516(%rdx){1to16}, %zmm2, %zmm23

// CHECK: vporq  %zmm6, %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x48,0xeb,0xce]
          vporq  %zmm6, %zmm10, %zmm1

// CHECK: vporq  %zmm6, %zmm10, %zmm1 {%k2}
// CHECK:  encoding: [0x62,0xf1,0xad,0x4a,0xeb,0xce]
          vporq  %zmm6, %zmm10, %zmm1 {%k2}

// CHECK: vporq  %zmm6, %zmm10, %zmm1 {%k2} {z}
// CHECK:  encoding: [0x62,0xf1,0xad,0xca,0xeb,0xce]
          vporq  %zmm6, %zmm10, %zmm1 {%k2} {z}

// CHECK: vporq  (%rcx), %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x48,0xeb,0x09]
          vporq  (%rcx), %zmm10, %zmm1

// CHECK: vporq  291(%rax,%r14,8), %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xb1,0xad,0x48,0xeb,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vporq  291(%rax,%r14,8), %zmm10, %zmm1

// CHECK: vporq  (%rcx){1to8}, %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x58,0xeb,0x09]
          vporq  (%rcx){1to8}, %zmm10, %zmm1

// CHECK: vporq  8128(%rdx), %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x48,0xeb,0x4a,0x7f]
          vporq  8128(%rdx), %zmm10, %zmm1

// CHECK: vporq  8192(%rdx), %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x48,0xeb,0x8a,0x00,0x20,0x00,0x00]
          vporq  8192(%rdx), %zmm10, %zmm1

// CHECK: vporq  -8192(%rdx), %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x48,0xeb,0x4a,0x80]
          vporq  -8192(%rdx), %zmm10, %zmm1

// CHECK: vporq  -8256(%rdx), %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x48,0xeb,0x8a,0xc0,0xdf,0xff,0xff]
          vporq  -8256(%rdx), %zmm10, %zmm1

// CHECK: vporq  1016(%rdx){1to8}, %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x58,0xeb,0x4a,0x7f]
          vporq  1016(%rdx){1to8}, %zmm10, %zmm1

// CHECK: vporq  1024(%rdx){1to8}, %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x58,0xeb,0x8a,0x00,0x04,0x00,0x00]
          vporq  1024(%rdx){1to8}, %zmm10, %zmm1

// CHECK: vporq  -1024(%rdx){1to8}, %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x58,0xeb,0x4a,0x80]
          vporq  -1024(%rdx){1to8}, %zmm10, %zmm1

// CHECK: vporq  -1032(%rdx){1to8}, %zmm10, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xad,0x58,0xeb,0x8a,0xf8,0xfb,0xff,0xff]
          vporq  -1032(%rdx){1to8}, %zmm10, %zmm1

// CHECK: vpsubd %zmm7, %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x40,0xfa,0xff]
          vpsubd %zmm7, %zmm28, %zmm7

// CHECK: vpsubd %zmm7, %zmm28, %zmm7 {%k3}
// CHECK:  encoding: [0x62,0xf1,0x1d,0x43,0xfa,0xff]
          vpsubd %zmm7, %zmm28, %zmm7 {%k3}

// CHECK: vpsubd %zmm7, %zmm28, %zmm7 {%k3} {z}
// CHECK:  encoding: [0x62,0xf1,0x1d,0xc3,0xfa,0xff]
          vpsubd %zmm7, %zmm28, %zmm7 {%k3} {z}

// CHECK: vpsubd (%rcx), %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x40,0xfa,0x39]
          vpsubd (%rcx), %zmm28, %zmm7

// CHECK: vpsubd 291(%rax,%r14,8), %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xb1,0x1d,0x40,0xfa,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpsubd 291(%rax,%r14,8), %zmm28, %zmm7

// CHECK: vpsubd (%rcx){1to16}, %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x50,0xfa,0x39]
          vpsubd (%rcx){1to16}, %zmm28, %zmm7

// CHECK: vpsubd 8128(%rdx), %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x40,0xfa,0x7a,0x7f]
          vpsubd 8128(%rdx), %zmm28, %zmm7

// CHECK: vpsubd 8192(%rdx), %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x40,0xfa,0xba,0x00,0x20,0x00,0x00]
          vpsubd 8192(%rdx), %zmm28, %zmm7

// CHECK: vpsubd -8192(%rdx), %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x40,0xfa,0x7a,0x80]
          vpsubd -8192(%rdx), %zmm28, %zmm7

// CHECK: vpsubd -8256(%rdx), %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x40,0xfa,0xba,0xc0,0xdf,0xff,0xff]
          vpsubd -8256(%rdx), %zmm28, %zmm7

// CHECK: vpsubd 508(%rdx){1to16}, %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x50,0xfa,0x7a,0x7f]
          vpsubd 508(%rdx){1to16}, %zmm28, %zmm7

// CHECK: vpsubd 512(%rdx){1to16}, %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x50,0xfa,0xba,0x00,0x02,0x00,0x00]
          vpsubd 512(%rdx){1to16}, %zmm28, %zmm7

// CHECK: vpsubd -512(%rdx){1to16}, %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x50,0xfa,0x7a,0x80]
          vpsubd -512(%rdx){1to16}, %zmm28, %zmm7

// CHECK: vpsubd -516(%rdx){1to16}, %zmm28, %zmm7
// CHECK:  encoding: [0x62,0xf1,0x1d,0x50,0xfa,0xba,0xfc,0xfd,0xff,0xff]
          vpsubd -516(%rdx){1to16}, %zmm28, %zmm7

// CHECK: vpsubq %zmm17, %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x21,0x9d,0x40,0xfb,0xe9]
          vpsubq %zmm17, %zmm28, %zmm29

// CHECK: vpsubq %zmm17, %zmm28, %zmm29 {%k2}
// CHECK:  encoding: [0x62,0x21,0x9d,0x42,0xfb,0xe9]
          vpsubq %zmm17, %zmm28, %zmm29 {%k2}

// CHECK: vpsubq %zmm17, %zmm28, %zmm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x9d,0xc2,0xfb,0xe9]
          vpsubq %zmm17, %zmm28, %zmm29 {%k2} {z}

// CHECK: vpsubq (%rcx), %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0xfb,0x29]
          vpsubq (%rcx), %zmm28, %zmm29

// CHECK: vpsubq 291(%rax,%r14,8), %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x21,0x9d,0x40,0xfb,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpsubq 291(%rax,%r14,8), %zmm28, %zmm29

// CHECK: vpsubq (%rcx){1to8}, %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0xfb,0x29]
          vpsubq (%rcx){1to8}, %zmm28, %zmm29

// CHECK: vpsubq 8128(%rdx), %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0xfb,0x6a,0x7f]
          vpsubq 8128(%rdx), %zmm28, %zmm29

// CHECK: vpsubq 8192(%rdx), %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0xfb,0xaa,0x00,0x20,0x00,0x00]
          vpsubq 8192(%rdx), %zmm28, %zmm29

// CHECK: vpsubq -8192(%rdx), %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0xfb,0x6a,0x80]
          vpsubq -8192(%rdx), %zmm28, %zmm29

// CHECK: vpsubq -8256(%rdx), %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x40,0xfb,0xaa,0xc0,0xdf,0xff,0xff]
          vpsubq -8256(%rdx), %zmm28, %zmm29

// CHECK: vpsubq 1016(%rdx){1to8}, %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0xfb,0x6a,0x7f]
          vpsubq 1016(%rdx){1to8}, %zmm28, %zmm29

// CHECK: vpsubq 1024(%rdx){1to8}, %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0xfb,0xaa,0x00,0x04,0x00,0x00]
          vpsubq 1024(%rdx){1to8}, %zmm28, %zmm29

// CHECK: vpsubq -1024(%rdx){1to8}, %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0xfb,0x6a,0x80]
          vpsubq -1024(%rdx){1to8}, %zmm28, %zmm29

// CHECK: vpsubq -1032(%rdx){1to8}, %zmm28, %zmm29
// CHECK:  encoding: [0x62,0x61,0x9d,0x50,0xfb,0xaa,0xf8,0xfb,0xff,0xff]
          vpsubq -1032(%rdx){1to8}, %zmm28, %zmm29

// CHECK: vpxord %zmm24, %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x11,0x1d,0x48,0xef,0xc0]
          vpxord %zmm24, %zmm12, %zmm8

// CHECK: vpxord %zmm24, %zmm12, %zmm8 {%k6}
// CHECK:  encoding: [0x62,0x11,0x1d,0x4e,0xef,0xc0]
          vpxord %zmm24, %zmm12, %zmm8 {%k6}

// CHECK: vpxord %zmm24, %zmm12, %zmm8 {%k6} {z}
// CHECK:  encoding: [0x62,0x11,0x1d,0xce,0xef,0xc0]
          vpxord %zmm24, %zmm12, %zmm8 {%k6} {z}

// CHECK: vpxord (%rcx), %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x48,0xef,0x01]
          vpxord (%rcx), %zmm12, %zmm8

// CHECK: vpxord 291(%rax,%r14,8), %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x31,0x1d,0x48,0xef,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpxord 291(%rax,%r14,8), %zmm12, %zmm8

// CHECK: vpxord (%rcx){1to16}, %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x58,0xef,0x01]
          vpxord (%rcx){1to16}, %zmm12, %zmm8

// CHECK: vpxord 8128(%rdx), %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x48,0xef,0x42,0x7f]
          vpxord 8128(%rdx), %zmm12, %zmm8

// CHECK: vpxord 8192(%rdx), %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x48,0xef,0x82,0x00,0x20,0x00,0x00]
          vpxord 8192(%rdx), %zmm12, %zmm8

// CHECK: vpxord -8192(%rdx), %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x48,0xef,0x42,0x80]
          vpxord -8192(%rdx), %zmm12, %zmm8

// CHECK: vpxord -8256(%rdx), %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x48,0xef,0x82,0xc0,0xdf,0xff,0xff]
          vpxord -8256(%rdx), %zmm12, %zmm8

// CHECK: vpxord 508(%rdx){1to16}, %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x58,0xef,0x42,0x7f]
          vpxord 508(%rdx){1to16}, %zmm12, %zmm8

// CHECK: vpxord 512(%rdx){1to16}, %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x58,0xef,0x82,0x00,0x02,0x00,0x00]
          vpxord 512(%rdx){1to16}, %zmm12, %zmm8

// CHECK: vpxord -512(%rdx){1to16}, %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x58,0xef,0x42,0x80]
          vpxord -512(%rdx){1to16}, %zmm12, %zmm8

// CHECK: vpxord -516(%rdx){1to16}, %zmm12, %zmm8
// CHECK:  encoding: [0x62,0x71,0x1d,0x58,0xef,0x82,0xfc,0xfd,0xff,0xff]
          vpxord -516(%rdx){1to16}, %zmm12, %zmm8

// CHECK: vpxorq %zmm10, %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xd1,0xcd,0x40,0xef,0xfa]
          vpxorq %zmm10, %zmm22, %zmm7

// CHECK: vpxorq %zmm10, %zmm22, %zmm7 {%k6}
// CHECK:  encoding: [0x62,0xd1,0xcd,0x46,0xef,0xfa]
          vpxorq %zmm10, %zmm22, %zmm7 {%k6}

// CHECK: vpxorq %zmm10, %zmm22, %zmm7 {%k6} {z}
// CHECK:  encoding: [0x62,0xd1,0xcd,0xc6,0xef,0xfa]
          vpxorq %zmm10, %zmm22, %zmm7 {%k6} {z}

// CHECK: vpxorq (%rcx), %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x40,0xef,0x39]
          vpxorq (%rcx), %zmm22, %zmm7

// CHECK: vpxorq 291(%rax,%r14,8), %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xb1,0xcd,0x40,0xef,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpxorq 291(%rax,%r14,8), %zmm22, %zmm7

// CHECK: vpxorq (%rcx){1to8}, %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x50,0xef,0x39]
          vpxorq (%rcx){1to8}, %zmm22, %zmm7

// CHECK: vpxorq 8128(%rdx), %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x40,0xef,0x7a,0x7f]
          vpxorq 8128(%rdx), %zmm22, %zmm7

// CHECK: vpxorq 8192(%rdx), %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x40,0xef,0xba,0x00,0x20,0x00,0x00]
          vpxorq 8192(%rdx), %zmm22, %zmm7

// CHECK: vpxorq -8192(%rdx), %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x40,0xef,0x7a,0x80]
          vpxorq -8192(%rdx), %zmm22, %zmm7

// CHECK: vpxorq -8256(%rdx), %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x40,0xef,0xba,0xc0,0xdf,0xff,0xff]
          vpxorq -8256(%rdx), %zmm22, %zmm7

// CHECK: vpxorq 1016(%rdx){1to8}, %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x50,0xef,0x7a,0x7f]
          vpxorq 1016(%rdx){1to8}, %zmm22, %zmm7

// CHECK: vpxorq 1024(%rdx){1to8}, %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x50,0xef,0xba,0x00,0x04,0x00,0x00]
          vpxorq 1024(%rdx){1to8}, %zmm22, %zmm7

// CHECK: vpxorq -1024(%rdx){1to8}, %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x50,0xef,0x7a,0x80]
          vpxorq -1024(%rdx){1to8}, %zmm22, %zmm7

// CHECK: vpxorq -1032(%rdx){1to8}, %zmm22, %zmm7
// CHECK:  encoding: [0x62,0xf1,0xcd,0x50,0xef,0xba,0xf8,0xfb,0xff,0xff]
          vpxorq -1032(%rdx){1to8}, %zmm22, %zmm7

// CHECK: vrcp14pd %zmm4, %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x4c,0xec]
          vrcp14pd %zmm4, %zmm13

// CHECK: vrcp14pd %zmm4, %zmm13 {%k5}
// CHECK:  encoding: [0x62,0x72,0xfd,0x4d,0x4c,0xec]
          vrcp14pd %zmm4, %zmm13 {%k5}

// CHECK: vrcp14pd %zmm4, %zmm13 {%k5} {z}
// CHECK:  encoding: [0x62,0x72,0xfd,0xcd,0x4c,0xec]
          vrcp14pd %zmm4, %zmm13 {%k5} {z}

// CHECK: vrcp14pd (%rcx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x4c,0x29]
          vrcp14pd (%rcx), %zmm13

// CHECK: vrcp14pd 291(%rax,%r14,8), %zmm13
// CHECK:  encoding: [0x62,0x32,0xfd,0x48,0x4c,0xac,0xf0,0x23,0x01,0x00,0x00]
          vrcp14pd 291(%rax,%r14,8), %zmm13

// CHECK: vrcp14pd (%rcx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x4c,0x29]
          vrcp14pd (%rcx){1to8}, %zmm13

// CHECK: vrcp14pd 8128(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x4c,0x6a,0x7f]
          vrcp14pd 8128(%rdx), %zmm13

// CHECK: vrcp14pd 8192(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x4c,0xaa,0x00,0x20,0x00,0x00]
          vrcp14pd 8192(%rdx), %zmm13

// CHECK: vrcp14pd -8192(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x4c,0x6a,0x80]
          vrcp14pd -8192(%rdx), %zmm13

// CHECK: vrcp14pd -8256(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x4c,0xaa,0xc0,0xdf,0xff,0xff]
          vrcp14pd -8256(%rdx), %zmm13

// CHECK: vrcp14pd 1016(%rdx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x4c,0x6a,0x7f]
          vrcp14pd 1016(%rdx){1to8}, %zmm13

// CHECK: vrcp14pd 1024(%rdx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x4c,0xaa,0x00,0x04,0x00,0x00]
          vrcp14pd 1024(%rdx){1to8}, %zmm13

// CHECK: vrcp14pd -1024(%rdx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x4c,0x6a,0x80]
          vrcp14pd -1024(%rdx){1to8}, %zmm13

// CHECK: vrcp14pd -1032(%rdx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x4c,0xaa,0xf8,0xfb,0xff,0xff]
          vrcp14pd -1032(%rdx){1to8}, %zmm13

// CHECK: vrcp14ps %zmm25, %zmm10
// CHECK:  encoding: [0x62,0x12,0x7d,0x48,0x4c,0xd1]
          vrcp14ps %zmm25, %zmm10

// CHECK: vrcp14ps %zmm25, %zmm10 {%k1}
// CHECK:  encoding: [0x62,0x12,0x7d,0x49,0x4c,0xd1]
          vrcp14ps %zmm25, %zmm10 {%k1}

// CHECK: vrcp14ps %zmm25, %zmm10 {%k1} {z}
// CHECK:  encoding: [0x62,0x12,0x7d,0xc9,0x4c,0xd1]
          vrcp14ps %zmm25, %zmm10 {%k1} {z}

// CHECK: vrcp14ps (%rcx), %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x4c,0x11]
          vrcp14ps (%rcx), %zmm10

// CHECK: vrcp14ps 291(%rax,%r14,8), %zmm10
// CHECK:  encoding: [0x62,0x32,0x7d,0x48,0x4c,0x94,0xf0,0x23,0x01,0x00,0x00]
          vrcp14ps 291(%rax,%r14,8), %zmm10

// CHECK: vrcp14ps (%rcx){1to16}, %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x4c,0x11]
          vrcp14ps (%rcx){1to16}, %zmm10

// CHECK: vrcp14ps 8128(%rdx), %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x4c,0x52,0x7f]
          vrcp14ps 8128(%rdx), %zmm10

// CHECK: vrcp14ps 8192(%rdx), %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x4c,0x92,0x00,0x20,0x00,0x00]
          vrcp14ps 8192(%rdx), %zmm10

// CHECK: vrcp14ps -8192(%rdx), %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x4c,0x52,0x80]
          vrcp14ps -8192(%rdx), %zmm10

// CHECK: vrcp14ps -8256(%rdx), %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x4c,0x92,0xc0,0xdf,0xff,0xff]
          vrcp14ps -8256(%rdx), %zmm10

// CHECK: vrcp14ps 508(%rdx){1to16}, %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x4c,0x52,0x7f]
          vrcp14ps 508(%rdx){1to16}, %zmm10

// CHECK: vrcp14ps 512(%rdx){1to16}, %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x4c,0x92,0x00,0x02,0x00,0x00]
          vrcp14ps 512(%rdx){1to16}, %zmm10

// CHECK: vrcp14ps -512(%rdx){1to16}, %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x4c,0x52,0x80]
          vrcp14ps -512(%rdx){1to16}, %zmm10

// CHECK: vrcp14ps -516(%rdx){1to16}, %zmm10
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x4c,0x92,0xfc,0xfd,0xff,0xff]
          vrcp14ps -516(%rdx){1to16}, %zmm10

// CHECK: vrsqrt14pd %zmm14, %zmm19
// CHECK:  encoding: [0x62,0xc2,0xfd,0x48,0x4e,0xde]
          vrsqrt14pd %zmm14, %zmm19

// CHECK: vrsqrt14pd %zmm14, %zmm19 {%k1}
// CHECK:  encoding: [0x62,0xc2,0xfd,0x49,0x4e,0xde]
          vrsqrt14pd %zmm14, %zmm19 {%k1}

// CHECK: vrsqrt14pd %zmm14, %zmm19 {%k1} {z}
// CHECK:  encoding: [0x62,0xc2,0xfd,0xc9,0x4e,0xde]
          vrsqrt14pd %zmm14, %zmm19 {%k1} {z}

// CHECK: vrsqrt14pd (%rcx), %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x48,0x4e,0x19]
          vrsqrt14pd (%rcx), %zmm19

// CHECK: vrsqrt14pd 291(%rax,%r14,8), %zmm19
// CHECK:  encoding: [0x62,0xa2,0xfd,0x48,0x4e,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vrsqrt14pd 291(%rax,%r14,8), %zmm19

// CHECK: vrsqrt14pd (%rcx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x58,0x4e,0x19]
          vrsqrt14pd (%rcx){1to8}, %zmm19

// CHECK: vrsqrt14pd 8128(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x48,0x4e,0x5a,0x7f]
          vrsqrt14pd 8128(%rdx), %zmm19

// CHECK: vrsqrt14pd 8192(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x48,0x4e,0x9a,0x00,0x20,0x00,0x00]
          vrsqrt14pd 8192(%rdx), %zmm19

// CHECK: vrsqrt14pd -8192(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x48,0x4e,0x5a,0x80]
          vrsqrt14pd -8192(%rdx), %zmm19

// CHECK: vrsqrt14pd -8256(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x48,0x4e,0x9a,0xc0,0xdf,0xff,0xff]
          vrsqrt14pd -8256(%rdx), %zmm19

// CHECK: vrsqrt14pd 1016(%rdx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x58,0x4e,0x5a,0x7f]
          vrsqrt14pd 1016(%rdx){1to8}, %zmm19

// CHECK: vrsqrt14pd 1024(%rdx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x58,0x4e,0x9a,0x00,0x04,0x00,0x00]
          vrsqrt14pd 1024(%rdx){1to8}, %zmm19

// CHECK: vrsqrt14pd -1024(%rdx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x58,0x4e,0x5a,0x80]
          vrsqrt14pd -1024(%rdx){1to8}, %zmm19

// CHECK: vrsqrt14pd -1032(%rdx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x58,0x4e,0x9a,0xf8,0xfb,0xff,0xff]
          vrsqrt14pd -1032(%rdx){1to8}, %zmm19

// CHECK: vrsqrt14ps %zmm9, %zmm16
// CHECK:  encoding: [0x62,0xc2,0x7d,0x48,0x4e,0xc1]
          vrsqrt14ps %zmm9, %zmm16

// CHECK: vrsqrt14ps %zmm9, %zmm16 {%k5}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x4d,0x4e,0xc1]
          vrsqrt14ps %zmm9, %zmm16 {%k5}

// CHECK: vrsqrt14ps %zmm9, %zmm16 {%k5} {z}
// CHECK:  encoding: [0x62,0xc2,0x7d,0xcd,0x4e,0xc1]
          vrsqrt14ps %zmm9, %zmm16 {%k5} {z}

// CHECK: vrsqrt14ps (%rcx), %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x4e,0x01]
          vrsqrt14ps (%rcx), %zmm16

// CHECK: vrsqrt14ps 291(%rax,%r14,8), %zmm16
// CHECK:  encoding: [0x62,0xa2,0x7d,0x48,0x4e,0x84,0xf0,0x23,0x01,0x00,0x00]
          vrsqrt14ps 291(%rax,%r14,8), %zmm16

// CHECK: vrsqrt14ps (%rcx){1to16}, %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x58,0x4e,0x01]
          vrsqrt14ps (%rcx){1to16}, %zmm16

// CHECK: vrsqrt14ps 8128(%rdx), %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x4e,0x42,0x7f]
          vrsqrt14ps 8128(%rdx), %zmm16

// CHECK: vrsqrt14ps 8192(%rdx), %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x4e,0x82,0x00,0x20,0x00,0x00]
          vrsqrt14ps 8192(%rdx), %zmm16

// CHECK: vrsqrt14ps -8192(%rdx), %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x4e,0x42,0x80]
          vrsqrt14ps -8192(%rdx), %zmm16

// CHECK: vrsqrt14ps -8256(%rdx), %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x48,0x4e,0x82,0xc0,0xdf,0xff,0xff]
          vrsqrt14ps -8256(%rdx), %zmm16

// CHECK: vrsqrt14ps 508(%rdx){1to16}, %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x58,0x4e,0x42,0x7f]
          vrsqrt14ps 508(%rdx){1to16}, %zmm16

// CHECK: vrsqrt14ps 512(%rdx){1to16}, %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x58,0x4e,0x82,0x00,0x02,0x00,0x00]
          vrsqrt14ps 512(%rdx){1to16}, %zmm16

// CHECK: vrsqrt14ps -512(%rdx){1to16}, %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x58,0x4e,0x42,0x80]
          vrsqrt14ps -512(%rdx){1to16}, %zmm16

// CHECK: vrsqrt14ps -516(%rdx){1to16}, %zmm16
// CHECK:  encoding: [0x62,0xe2,0x7d,0x58,0x4e,0x82,0xfc,0xfd,0xff,0xff]
          vrsqrt14ps -516(%rdx){1to16}, %zmm16

// CHECK: vsqrtpd %zmm19, %zmm19
// CHECK:  encoding: [0x62,0xa1,0xfd,0x48,0x51,0xdb]
          vsqrtpd %zmm19, %zmm19

// CHECK: vsqrtpd %zmm19, %zmm19 {%k5}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x4d,0x51,0xdb]
          vsqrtpd %zmm19, %zmm19 {%k5}

// CHECK: vsqrtpd %zmm19, %zmm19 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xcd,0x51,0xdb]
          vsqrtpd %zmm19, %zmm19 {%k5} {z}

// CHECK: vsqrtpd (%rcx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x51,0x19]
          vsqrtpd (%rcx), %zmm19

// CHECK: vsqrtpd 291(%rax,%r14,8), %zmm19
// CHECK:  encoding: [0x62,0xa1,0xfd,0x48,0x51,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vsqrtpd 291(%rax,%r14,8), %zmm19

// CHECK: vsqrtpd (%rcx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x58,0x51,0x19]
          vsqrtpd (%rcx){1to8}, %zmm19

// CHECK: vsqrtpd 8128(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x51,0x5a,0x7f]
          vsqrtpd 8128(%rdx), %zmm19

// CHECK: vsqrtpd 8192(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x51,0x9a,0x00,0x20,0x00,0x00]
          vsqrtpd 8192(%rdx), %zmm19

// CHECK: vsqrtpd -8192(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x51,0x5a,0x80]
          vsqrtpd -8192(%rdx), %zmm19

// CHECK: vsqrtpd -8256(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x51,0x9a,0xc0,0xdf,0xff,0xff]
          vsqrtpd -8256(%rdx), %zmm19

// CHECK: vsqrtpd 1016(%rdx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x58,0x51,0x5a,0x7f]
          vsqrtpd 1016(%rdx){1to8}, %zmm19

// CHECK: vsqrtpd 1024(%rdx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x58,0x51,0x9a,0x00,0x04,0x00,0x00]
          vsqrtpd 1024(%rdx){1to8}, %zmm19

// CHECK: vsqrtpd -1024(%rdx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x58,0x51,0x5a,0x80]
          vsqrtpd -1024(%rdx){1to8}, %zmm19

// CHECK: vsqrtpd -1032(%rdx){1to8}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0xfd,0x58,0x51,0x9a,0xf8,0xfb,0xff,0xff]
          vsqrtpd -1032(%rdx){1to8}, %zmm19

// CHECK: vsqrtps %zmm29, %zmm28
// CHECK:  encoding: [0x62,0x01,0x7c,0x48,0x51,0xe5]
          vsqrtps %zmm29, %zmm28

// CHECK: vsqrtps %zmm29, %zmm28 {%k3}
// CHECK:  encoding: [0x62,0x01,0x7c,0x4b,0x51,0xe5]
          vsqrtps %zmm29, %zmm28 {%k3}

// CHECK: vsqrtps %zmm29, %zmm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x7c,0xcb,0x51,0xe5]
          vsqrtps %zmm29, %zmm28 {%k3} {z}

// CHECK: vsqrtps (%rcx), %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x51,0x21]
          vsqrtps (%rcx), %zmm28

// CHECK: vsqrtps 291(%rax,%r14,8), %zmm28
// CHECK:  encoding: [0x62,0x21,0x7c,0x48,0x51,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vsqrtps 291(%rax,%r14,8), %zmm28

// CHECK: vsqrtps (%rcx){1to16}, %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x58,0x51,0x21]
          vsqrtps (%rcx){1to16}, %zmm28

// CHECK: vsqrtps 8128(%rdx), %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x51,0x62,0x7f]
          vsqrtps 8128(%rdx), %zmm28

// CHECK: vsqrtps 8192(%rdx), %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x51,0xa2,0x00,0x20,0x00,0x00]
          vsqrtps 8192(%rdx), %zmm28

// CHECK: vsqrtps -8192(%rdx), %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x51,0x62,0x80]
          vsqrtps -8192(%rdx), %zmm28

// CHECK: vsqrtps -8256(%rdx), %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x51,0xa2,0xc0,0xdf,0xff,0xff]
          vsqrtps -8256(%rdx), %zmm28

// CHECK: vsqrtps 508(%rdx){1to16}, %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x58,0x51,0x62,0x7f]
          vsqrtps 508(%rdx){1to16}, %zmm28

// CHECK: vsqrtps 512(%rdx){1to16}, %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x58,0x51,0xa2,0x00,0x02,0x00,0x00]
          vsqrtps 512(%rdx){1to16}, %zmm28

// CHECK: vsqrtps -512(%rdx){1to16}, %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x58,0x51,0x62,0x80]
          vsqrtps -512(%rdx){1to16}, %zmm28

// CHECK: vsqrtps -516(%rdx){1to16}, %zmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x58,0x51,0xa2,0xfc,0xfd,0xff,0xff]
          vsqrtps -516(%rdx){1to16}, %zmm28

// CHECK: vsqrtpd {rn-sae}, %zmm19, %zmm19
// CHECK:  encoding: [0x62,0xa1,0xfd,0x18,0x51,0xdb]
          vsqrtpd {rn-sae}, %zmm19, %zmm19

// CHECK: vsqrtpd {ru-sae}, %zmm19, %zmm19
// CHECK:  encoding: [0x62,0xa1,0xfd,0x58,0x51,0xdb]
          vsqrtpd {ru-sae}, %zmm19, %zmm19

// CHECK: vsqrtpd {rd-sae}, %zmm19, %zmm19
// CHECK:  encoding: [0x62,0xa1,0xfd,0x38,0x51,0xdb]
          vsqrtpd {rd-sae}, %zmm19, %zmm19

// CHECK: vsqrtpd {rz-sae}, %zmm19, %zmm19
// CHECK:  encoding: [0x62,0xa1,0xfd,0x78,0x51,0xdb]
          vsqrtpd {rz-sae}, %zmm19, %zmm19

// CHECK: vsqrtps {rn-sae}, %zmm29, %zmm28
// CHECK:  encoding: [0x62,0x01,0x7c,0x18,0x51,0xe5]
          vsqrtps {rn-sae}, %zmm29, %zmm28

// CHECK: vsqrtps {ru-sae}, %zmm29, %zmm28
// CHECK:  encoding: [0x62,0x01,0x7c,0x58,0x51,0xe5]
          vsqrtps {ru-sae}, %zmm29, %zmm28

// CHECK: vsqrtps {rd-sae}, %zmm29, %zmm28
// CHECK:  encoding: [0x62,0x01,0x7c,0x38,0x51,0xe5]
          vsqrtps {rd-sae}, %zmm29, %zmm28

// CHECK: vsqrtps {rz-sae}, %zmm29, %zmm28
// CHECK:  encoding: [0x62,0x01,0x7c,0x78,0x51,0xe5]
          vsqrtps {rz-sae}, %zmm29, %zmm28

// CHECK: vsubpd %zmm9, %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x51,0x9d,0x48,0x5c,0xc9]
          vsubpd %zmm9, %zmm12, %zmm9

// CHECK: vsubpd %zmm9, %zmm12, %zmm9 {%k7}
// CHECK:  encoding: [0x62,0x51,0x9d,0x4f,0x5c,0xc9]
          vsubpd %zmm9, %zmm12, %zmm9 {%k7}

// CHECK: vsubpd %zmm9, %zmm12, %zmm9 {%k7} {z}
// CHECK:  encoding: [0x62,0x51,0x9d,0xcf,0x5c,0xc9]
          vsubpd %zmm9, %zmm12, %zmm9 {%k7} {z}

// CHECK: vsubpd (%rcx), %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x48,0x5c,0x09]
          vsubpd (%rcx), %zmm12, %zmm9

// CHECK: vsubpd 291(%rax,%r14,8), %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x31,0x9d,0x48,0x5c,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vsubpd 291(%rax,%r14,8), %zmm12, %zmm9

// CHECK: vsubpd (%rcx){1to8}, %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x58,0x5c,0x09]
          vsubpd (%rcx){1to8}, %zmm12, %zmm9

// CHECK: vsubpd 8128(%rdx), %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x48,0x5c,0x4a,0x7f]
          vsubpd 8128(%rdx), %zmm12, %zmm9

// CHECK: vsubpd 8192(%rdx), %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x48,0x5c,0x8a,0x00,0x20,0x00,0x00]
          vsubpd 8192(%rdx), %zmm12, %zmm9

// CHECK: vsubpd -8192(%rdx), %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x48,0x5c,0x4a,0x80]
          vsubpd -8192(%rdx), %zmm12, %zmm9

// CHECK: vsubpd -8256(%rdx), %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x48,0x5c,0x8a,0xc0,0xdf,0xff,0xff]
          vsubpd -8256(%rdx), %zmm12, %zmm9

// CHECK: vsubpd 1016(%rdx){1to8}, %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x58,0x5c,0x4a,0x7f]
          vsubpd 1016(%rdx){1to8}, %zmm12, %zmm9

// CHECK: vsubpd 1024(%rdx){1to8}, %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x58,0x5c,0x8a,0x00,0x04,0x00,0x00]
          vsubpd 1024(%rdx){1to8}, %zmm12, %zmm9

// CHECK: vsubpd -1024(%rdx){1to8}, %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x58,0x5c,0x4a,0x80]
          vsubpd -1024(%rdx){1to8}, %zmm12, %zmm9

// CHECK: vsubpd -1032(%rdx){1to8}, %zmm12, %zmm9
// CHECK:  encoding: [0x62,0x71,0x9d,0x58,0x5c,0x8a,0xf8,0xfb,0xff,0xff]
          vsubpd -1032(%rdx){1to8}, %zmm12, %zmm9

// CHECK: vsubps %zmm21, %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x31,0x24,0x40,0x5c,0xf5]
          vsubps %zmm21, %zmm27, %zmm14

// CHECK: vsubps %zmm21, %zmm27, %zmm14 {%k5}
// CHECK:  encoding: [0x62,0x31,0x24,0x45,0x5c,0xf5]
          vsubps %zmm21, %zmm27, %zmm14 {%k5}

// CHECK: vsubps %zmm21, %zmm27, %zmm14 {%k5} {z}
// CHECK:  encoding: [0x62,0x31,0x24,0xc5,0x5c,0xf5]
          vsubps %zmm21, %zmm27, %zmm14 {%k5} {z}

// CHECK: vsubps (%rcx), %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x40,0x5c,0x31]
          vsubps (%rcx), %zmm27, %zmm14

// CHECK: vsubps 291(%rax,%r14,8), %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x31,0x24,0x40,0x5c,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vsubps 291(%rax,%r14,8), %zmm27, %zmm14

// CHECK: vsubps (%rcx){1to16}, %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x50,0x5c,0x31]
          vsubps (%rcx){1to16}, %zmm27, %zmm14

// CHECK: vsubps 8128(%rdx), %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x40,0x5c,0x72,0x7f]
          vsubps 8128(%rdx), %zmm27, %zmm14

// CHECK: vsubps 8192(%rdx), %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x40,0x5c,0xb2,0x00,0x20,0x00,0x00]
          vsubps 8192(%rdx), %zmm27, %zmm14

// CHECK: vsubps -8192(%rdx), %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x40,0x5c,0x72,0x80]
          vsubps -8192(%rdx), %zmm27, %zmm14

// CHECK: vsubps -8256(%rdx), %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x40,0x5c,0xb2,0xc0,0xdf,0xff,0xff]
          vsubps -8256(%rdx), %zmm27, %zmm14

// CHECK: vsubps 508(%rdx){1to16}, %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x50,0x5c,0x72,0x7f]
          vsubps 508(%rdx){1to16}, %zmm27, %zmm14

// CHECK: vsubps 512(%rdx){1to16}, %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x50,0x5c,0xb2,0x00,0x02,0x00,0x00]
          vsubps 512(%rdx){1to16}, %zmm27, %zmm14

// CHECK: vsubps -512(%rdx){1to16}, %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x50,0x5c,0x72,0x80]
          vsubps -512(%rdx){1to16}, %zmm27, %zmm14

// CHECK: vsubps -516(%rdx){1to16}, %zmm27, %zmm14
// CHECK:  encoding: [0x62,0x71,0x24,0x50,0x5c,0xb2,0xfc,0xfd,0xff,0xff]
          vsubps -516(%rdx){1to16}, %zmm27, %zmm14

// CHECK: kandw  %k6, %k5, %k2
// CHECK:  encoding: [0xc5,0xd4,0x41,0xd6]
          kandw  %k6, %k5, %k2

// CHECK: kandnw %k7, %k6, %k4
// CHECK:  encoding: [0xc5,0xcc,0x42,0xe7]
          kandnw %k7, %k6, %k4

// CHECK: korw   %k7, %k6, %k4
// CHECK:  encoding: [0xc5,0xcc,0x45,0xe7]
          korw   %k7, %k6, %k4

// CHECK: kxnorw %k5, %k5, %k3
// CHECK:  encoding: [0xc5,0xd4,0x46,0xdd]
          kxnorw %k5, %k5, %k3

// CHECK: kxorw  %k7, %k6, %k2
// CHECK:  encoding: [0xc5,0xcc,0x47,0xd7]
          kxorw  %k7, %k6, %k2

// CHECK: knotw  %k6, %k3
// CHECK:  encoding: [0xc5,0xf8,0x44,0xde]
          knotw  %k6, %k3

// CHECK: kmovw  %k5, %k4
// CHECK:  encoding: [0xc5,0xf8,0x90,0xe5]
          kmovw  %k5, %k4

// CHECK: kmovw  (%rcx), %k4
// CHECK:  encoding: [0xc5,0xf8,0x90,0x21]
          kmovw  (%rcx), %k4

// CHECK: kmovw  291(%rax,%r14,8), %k4
// CHECK:  encoding: [0xc4,0xa1,0x78,0x90,0xa4,0xf0,0x23,0x01,0x00,0x00]
          kmovw  291(%rax,%r14,8), %k4

// CHECK: kmovw  %k4, (%rcx)
// CHECK:  encoding: [0xc5,0xf8,0x91,0x21]
          kmovw  %k4, (%rcx)

// CHECK: kmovw  %k4, 291(%rax,%r14,8)
// CHECK:  encoding: [0xc4,0xa1,0x78,0x91,0xa4,0xf0,0x23,0x01,0x00,0x00]
          kmovw  %k4, 291(%rax,%r14,8)

// CHECK: kmovw  %eax, %k3
// CHECK:  encoding: [0xc5,0xf8,0x92,0xd8]
          kmovw  %eax, %k3

// CHECK: kmovw  %ebp, %k3
// CHECK:  encoding: [0xc5,0xf8,0x92,0xdd]
          kmovw  %ebp, %k3

// CHECK: kmovw  %r13d, %k3
// CHECK:  encoding: [0xc4,0xc1,0x78,0x92,0xdd]
          kmovw  %r13d, %k3

// CHECK: kmovw  %k2, %eax
// CHECK:  encoding: [0xc5,0xf8,0x93,0xc2]
          kmovw  %k2, %eax

// CHECK: kmovw  %k2, %ebp
// CHECK:  encoding: [0xc5,0xf8,0x93,0xea]
          kmovw  %k2, %ebp

// CHECK: kmovw  %k2, %r13d
// CHECK:  encoding: [0xc5,0x78,0x93,0xea]
          kmovw  %k2, %r13d

// CHECK: vmovapd %zmm18, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x29,0x11]
          vmovapd %zmm18, (%rcx)

// CHECK: vmovapd %zmm18, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x4e,0x29,0x11]
          vmovapd %zmm18, (%rcx) {%k6}

// CHECK: vmovapd %zmm18, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x48,0x29,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovapd %zmm18, 291(%rax,%r14,8)

// CHECK: vmovapd %zmm18, 8128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x29,0x52,0x7f]
          vmovapd %zmm18, 8128(%rdx)

// CHECK: vmovapd %zmm18, 8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x29,0x92,0x00,0x20,0x00,0x00]
          vmovapd %zmm18, 8192(%rdx)

// CHECK: vmovapd %zmm18, -8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x29,0x52,0x80]
          vmovapd %zmm18, -8192(%rdx)

// CHECK: vmovapd %zmm18, -8256(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x29,0x92,0xc0,0xdf,0xff,0xff]
          vmovapd %zmm18, -8256(%rdx)

// CHECK: vmovaps %zmm9, (%rcx)
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x29,0x09]
          vmovaps %zmm9, (%rcx)

// CHECK: vmovaps %zmm9, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0x71,0x7c,0x4b,0x29,0x09]
          vmovaps %zmm9, (%rcx) {%k3}

// CHECK: vmovaps %zmm9, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x31,0x7c,0x48,0x29,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovaps %zmm9, 291(%rax,%r14,8)

// CHECK: vmovaps %zmm9, 8128(%rdx)
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x29,0x4a,0x7f]
          vmovaps %zmm9, 8128(%rdx)

// CHECK: vmovaps %zmm9, 8192(%rdx)
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x29,0x8a,0x00,0x20,0x00,0x00]
          vmovaps %zmm9, 8192(%rdx)

// CHECK: vmovaps %zmm9, -8192(%rdx)
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x29,0x4a,0x80]
          vmovaps %zmm9, -8192(%rdx)

// CHECK: vmovaps %zmm9, -8256(%rdx)
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x29,0x8a,0xc0,0xdf,0xff,0xff]
          vmovaps %zmm9, -8256(%rdx)

// CHECK: vmovdqa32 %zmm18, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x7f,0x11]
          vmovdqa32 %zmm18, (%rcx)

// CHECK: vmovdqa32 %zmm18, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0xe1,0x7d,0x4c,0x7f,0x11]
          vmovdqa32 %zmm18, (%rcx) {%k4}

// CHECK: vmovdqa32 %zmm18, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7d,0x48,0x7f,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 %zmm18, 291(%rax,%r14,8)

// CHECK: vmovdqa32 %zmm18, 8128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x7f,0x52,0x7f]
          vmovdqa32 %zmm18, 8128(%rdx)

// CHECK: vmovdqa32 %zmm18, 8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x7f,0x92,0x00,0x20,0x00,0x00]
          vmovdqa32 %zmm18, 8192(%rdx)

// CHECK: vmovdqa32 %zmm18, -8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x7f,0x52,0x80]
          vmovdqa32 %zmm18, -8192(%rdx)

// CHECK: vmovdqa32 %zmm18, -8256(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x7f,0x92,0xc0,0xdf,0xff,0xff]
          vmovdqa32 %zmm18, -8256(%rdx)

// CHECK: vmovdqa64 %zmm19, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x7f,0x19]
          vmovdqa64 %zmm19, (%rcx)

// CHECK: vmovdqa64 %zmm19, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x4d,0x7f,0x19]
          vmovdqa64 %zmm19, (%rcx) {%k5}

// CHECK: vmovdqa64 %zmm19, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x48,0x7f,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 %zmm19, 291(%rax,%r14,8)

// CHECK: vmovdqa64 %zmm19, 8128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x7f,0x5a,0x7f]
          vmovdqa64 %zmm19, 8128(%rdx)

// CHECK: vmovdqa64 %zmm19, 8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x7f,0x9a,0x00,0x20,0x00,0x00]
          vmovdqa64 %zmm19, 8192(%rdx)

// CHECK: vmovdqa64 %zmm19, -8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x7f,0x5a,0x80]
          vmovdqa64 %zmm19, -8192(%rdx)

// CHECK: vmovdqa64 %zmm19, -8256(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x48,0x7f,0x9a,0xc0,0xdf,0xff,0xff]
          vmovdqa64 %zmm19, -8256(%rdx)

// CHECK: vmovdqu32 %zmm22, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x48,0x7f,0x31]
          vmovdqu32 %zmm22, (%rcx)

// CHECK: vmovdqu32 %zmm22, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe1,0x7e,0x49,0x7f,0x31]
          vmovdqu32 %zmm22, (%rcx) {%k1}

// CHECK: vmovdqu32 %zmm22, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7e,0x48,0x7f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 %zmm22, 291(%rax,%r14,8)

// CHECK: vmovdqu32 %zmm22, 8128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x48,0x7f,0x72,0x7f]
          vmovdqu32 %zmm22, 8128(%rdx)

// CHECK: vmovdqu32 %zmm22, 8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x48,0x7f,0xb2,0x00,0x20,0x00,0x00]
          vmovdqu32 %zmm22, 8192(%rdx)

// CHECK: vmovdqu32 %zmm22, -8192(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x48,0x7f,0x72,0x80]
          vmovdqu32 %zmm22, -8192(%rdx)

// CHECK: vmovdqu32 %zmm22, -8256(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x48,0x7f,0xb2,0xc0,0xdf,0xff,0xff]
          vmovdqu32 %zmm22, -8256(%rdx)

// CHECK: vmovdqu64 %zmm24, (%rcx)
// CHECK:  encoding: [0x62,0x61,0xfe,0x48,0x7f,0x01]
          vmovdqu64 %zmm24, (%rcx)

// CHECK: vmovdqu64 %zmm24, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0x61,0xfe,0x4d,0x7f,0x01]
          vmovdqu64 %zmm24, (%rcx) {%k5}

// CHECK: vmovdqu64 %zmm24, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0xfe,0x48,0x7f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 %zmm24, 291(%rax,%r14,8)

// CHECK: vmovdqu64 %zmm24, 8128(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfe,0x48,0x7f,0x42,0x7f]
          vmovdqu64 %zmm24, 8128(%rdx)

// CHECK: vmovdqu64 %zmm24, 8192(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfe,0x48,0x7f,0x82,0x00,0x20,0x00,0x00]
          vmovdqu64 %zmm24, 8192(%rdx)

// CHECK: vmovdqu64 %zmm24, -8192(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfe,0x48,0x7f,0x42,0x80]
          vmovdqu64 %zmm24, -8192(%rdx)

// CHECK: vmovdqu64 %zmm24, -8256(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfe,0x48,0x7f,0x82,0xc0,0xdf,0xff,0xff]
          vmovdqu64 %zmm24, -8256(%rdx)

// CHECK: vmovupd %zmm10, (%rcx)
// CHECK:  encoding: [0x62,0x71,0xfd,0x48,0x11,0x11]
          vmovupd %zmm10, (%rcx)

// CHECK: vmovupd %zmm10, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x71,0xfd,0x4f,0x11,0x11]
          vmovupd %zmm10, (%rcx) {%k7}

// CHECK: vmovupd %zmm10, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x31,0xfd,0x48,0x11,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovupd %zmm10, 291(%rax,%r14,8)

// CHECK: vmovupd %zmm10, 8128(%rdx)
// CHECK:  encoding: [0x62,0x71,0xfd,0x48,0x11,0x52,0x7f]
          vmovupd %zmm10, 8128(%rdx)

// CHECK: vmovupd %zmm10, 8192(%rdx)
// CHECK:  encoding: [0x62,0x71,0xfd,0x48,0x11,0x92,0x00,0x20,0x00,0x00]
          vmovupd %zmm10, 8192(%rdx)

// CHECK: vmovupd %zmm10, -8192(%rdx)
// CHECK:  encoding: [0x62,0x71,0xfd,0x48,0x11,0x52,0x80]
          vmovupd %zmm10, -8192(%rdx)

// CHECK: vmovupd %zmm10, -8256(%rdx)
// CHECK:  encoding: [0x62,0x71,0xfd,0x48,0x11,0x92,0xc0,0xdf,0xff,0xff]
          vmovupd %zmm10, -8256(%rdx)

// CHECK: vmovups %zmm24, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x11,0x01]
          vmovups %zmm24, (%rcx)

// CHECK: vmovups %zmm24, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x61,0x7c,0x4f,0x11,0x01]
          vmovups %zmm24, (%rcx) {%k7}

// CHECK: vmovups %zmm24, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x48,0x11,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovups %zmm24, 291(%rax,%r14,8)

// CHECK: vmovups %zmm24, 8128(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x11,0x42,0x7f]
          vmovups %zmm24, 8128(%rdx)

// CHECK: vmovups %zmm24, 8192(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x11,0x82,0x00,0x20,0x00,0x00]
          vmovups %zmm24, 8192(%rdx)

// CHECK: vmovups %zmm24, -8192(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x11,0x42,0x80]
          vmovups %zmm24, -8192(%rdx)

// CHECK: vmovups %zmm24, -8256(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x48,0x11,0x82,0xc0,0xdf,0xff,0xff]
          vmovups %zmm24, -8256(%rdx)

// CHECK: vpmovqb %zmm2, %xmm3
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x32,0xd3]
          vpmovqb %zmm2, %xmm3

// CHECK: vpmovqb %zmm2, %xmm3 {%k1}
// CHECK:  encoding: [0x62,0xf2,0x7e,0x49,0x32,0xd3]
          vpmovqb %zmm2, %xmm3 {%k1}

// CHECK: vpmovqb %zmm2, %xmm3 {%k1} {z}
// CHECK:  encoding: [0x62,0xf2,0x7e,0xc9,0x32,0xd3]
          vpmovqb %zmm2, %xmm3 {%k1} {z}

// CHECK: vpmovsqb %zmm29, %xmm30
// CHECK:  encoding: [0x62,0x02,0x7e,0x48,0x22,0xee]
          vpmovsqb %zmm29, %xmm30

// CHECK: vpmovsqb %zmm29, %xmm30 {%k5}
// CHECK:  encoding: [0x62,0x02,0x7e,0x4d,0x22,0xee]
          vpmovsqb %zmm29, %xmm30 {%k5}

// CHECK: vpmovsqb %zmm29, %xmm30 {%k5} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0xcd,0x22,0xee]
          vpmovsqb %zmm29, %xmm30 {%k5} {z}

// CHECK: vpmovusqb %zmm28, %xmm24
// CHECK:  encoding: [0x62,0x02,0x7e,0x48,0x12,0xe0]
          vpmovusqb %zmm28, %xmm24

// CHECK: vpmovusqb %zmm28, %xmm24 {%k7}
// CHECK:  encoding: [0x62,0x02,0x7e,0x4f,0x12,0xe0]
          vpmovusqb %zmm28, %xmm24 {%k7}

// CHECK: vpmovusqb %zmm28, %xmm24 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0xcf,0x12,0xe0]
          vpmovusqb %zmm28, %xmm24 {%k7} {z}

// CHECK: vpmovqw %zmm18, %xmm6
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x34,0xd6]
          vpmovqw %zmm18, %xmm6

// CHECK: vpmovqw %zmm18, %xmm6 {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x49,0x34,0xd6]
          vpmovqw %zmm18, %xmm6 {%k1}

// CHECK: vpmovqw %zmm18, %xmm6 {%k1} {z}
// CHECK:  encoding: [0x62,0xe2,0x7e,0xc9,0x34,0xd6]
          vpmovqw %zmm18, %xmm6 {%k1} {z}

// CHECK: vpmovsqw %zmm19, %xmm27
// CHECK:  encoding: [0x62,0x82,0x7e,0x48,0x24,0xdb]
          vpmovsqw %zmm19, %xmm27

// CHECK: vpmovsqw %zmm19, %xmm27 {%k6}
// CHECK:  encoding: [0x62,0x82,0x7e,0x4e,0x24,0xdb]
          vpmovsqw %zmm19, %xmm27 {%k6}

// CHECK: vpmovsqw %zmm19, %xmm27 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0xce,0x24,0xdb]
          vpmovsqw %zmm19, %xmm27 {%k6} {z}

// CHECK: vpmovusqw %zmm10, %xmm28
// CHECK:  encoding: [0x62,0x12,0x7e,0x48,0x14,0xd4]
          vpmovusqw %zmm10, %xmm28

// CHECK: vpmovusqw %zmm10, %xmm28 {%k7}
// CHECK:  encoding: [0x62,0x12,0x7e,0x4f,0x14,0xd4]
          vpmovusqw %zmm10, %xmm28 {%k7}

// CHECK: vpmovusqw %zmm10, %xmm28 {%k7} {z}
// CHECK:  encoding: [0x62,0x12,0x7e,0xcf,0x14,0xd4]
          vpmovusqw %zmm10, %xmm28 {%k7} {z}

// CHECK: vpmovqd %zmm25, %ymm6
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x35,0xce]
          vpmovqd %zmm25, %ymm6

// CHECK: vpmovqd %zmm25, %ymm6 {%k5}
// CHECK:  encoding: [0x62,0x62,0x7e,0x4d,0x35,0xce]
          vpmovqd %zmm25, %ymm6 {%k5}

// CHECK: vpmovqd %zmm25, %ymm6 {%k5} {z}
// CHECK:  encoding: [0x62,0x62,0x7e,0xcd,0x35,0xce]
          vpmovqd %zmm25, %ymm6 {%k5} {z}

// CHECK: vpmovsqd %zmm2, %ymm15
// CHECK:  encoding: [0x62,0xd2,0x7e,0x48,0x25,0xd7]
          vpmovsqd %zmm2, %ymm15

// CHECK: vpmovsqd %zmm2, %ymm15 {%k2}
// CHECK:  encoding: [0x62,0xd2,0x7e,0x4a,0x25,0xd7]
          vpmovsqd %zmm2, %ymm15 {%k2}

// CHECK: vpmovsqd %zmm2, %ymm15 {%k2} {z}
// CHECK:  encoding: [0x62,0xd2,0x7e,0xca,0x25,0xd7]
          vpmovsqd %zmm2, %ymm15 {%k2} {z}

// CHECK: vpmovusqd %zmm4, %ymm8
// CHECK:  encoding: [0x62,0xd2,0x7e,0x48,0x15,0xe0]
          vpmovusqd %zmm4, %ymm8

// CHECK: vpmovusqd %zmm4, %ymm8 {%k4}
// CHECK:  encoding: [0x62,0xd2,0x7e,0x4c,0x15,0xe0]
          vpmovusqd %zmm4, %ymm8 {%k4}

// CHECK: vpmovusqd %zmm4, %ymm8 {%k4} {z}
// CHECK:  encoding: [0x62,0xd2,0x7e,0xcc,0x15,0xe0]
          vpmovusqd %zmm4, %ymm8 {%k4} {z}

// CHECK: vpmovdb %zmm5, %xmm2
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x31,0xea]
          vpmovdb %zmm5, %xmm2

// CHECK: vpmovdb %zmm5, %xmm2 {%k5}
// CHECK:  encoding: [0x62,0xf2,0x7e,0x4d,0x31,0xea]
          vpmovdb %zmm5, %xmm2 {%k5}

// CHECK: vpmovdb %zmm5, %xmm2 {%k5} {z}
// CHECK:  encoding: [0x62,0xf2,0x7e,0xcd,0x31,0xea]
          vpmovdb %zmm5, %xmm2 {%k5} {z}

// CHECK: vpmovsdb %zmm2, %xmm21
// CHECK:  encoding: [0x62,0xb2,0x7e,0x48,0x21,0xd5]
          vpmovsdb %zmm2, %xmm21

// CHECK: vpmovsdb %zmm2, %xmm21 {%k4}
// CHECK:  encoding: [0x62,0xb2,0x7e,0x4c,0x21,0xd5]
          vpmovsdb %zmm2, %xmm21 {%k4}

// CHECK: vpmovsdb %zmm2, %xmm21 {%k4} {z}
// CHECK:  encoding: [0x62,0xb2,0x7e,0xcc,0x21,0xd5]
          vpmovsdb %zmm2, %xmm21 {%k4} {z}

// CHECK: vpmovusdb %zmm2, %xmm20
// CHECK:  encoding: [0x62,0xb2,0x7e,0x48,0x11,0xd4]
          vpmovusdb %zmm2, %xmm20

// CHECK: vpmovusdb %zmm2, %xmm20 {%k3}
// CHECK:  encoding: [0x62,0xb2,0x7e,0x4b,0x11,0xd4]
          vpmovusdb %zmm2, %xmm20 {%k3}

// CHECK: vpmovusdb %zmm2, %xmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xb2,0x7e,0xcb,0x11,0xd4]
          vpmovusdb %zmm2, %xmm20 {%k3} {z}

// CHECK: vpmovdw %zmm29, %ymm22
// CHECK:  encoding: [0x62,0x22,0x7e,0x48,0x33,0xee]
          vpmovdw %zmm29, %ymm22

// CHECK: vpmovdw %zmm29, %ymm22 {%k5}
// CHECK:  encoding: [0x62,0x22,0x7e,0x4d,0x33,0xee]
          vpmovdw %zmm29, %ymm22 {%k5}

// CHECK: vpmovdw %zmm29, %ymm22 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0x7e,0xcd,0x33,0xee]
          vpmovdw %zmm29, %ymm22 {%k5} {z}

// CHECK: vpmovsdw %zmm14, %ymm25
// CHECK:  encoding: [0x62,0x12,0x7e,0x48,0x23,0xf1]
          vpmovsdw %zmm14, %ymm25

// CHECK: vpmovsdw %zmm14, %ymm25 {%k4}
// CHECK:  encoding: [0x62,0x12,0x7e,0x4c,0x23,0xf1]
          vpmovsdw %zmm14, %ymm25 {%k4}

// CHECK: vpmovsdw %zmm14, %ymm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x12,0x7e,0xcc,0x23,0xf1]
          vpmovsdw %zmm14, %ymm25 {%k4} {z}

// CHECK: vpmovusdw %zmm7, %ymm8
// CHECK:  encoding: [0x62,0xd2,0x7e,0x48,0x13,0xf8]
          vpmovusdw %zmm7, %ymm8

// CHECK: vpmovusdw %zmm7, %ymm8 {%k1}
// CHECK:  encoding: [0x62,0xd2,0x7e,0x49,0x13,0xf8]
          vpmovusdw %zmm7, %ymm8 {%k1}

// CHECK: vpmovusdw %zmm7, %ymm8 {%k1} {z}
// CHECK:  encoding: [0x62,0xd2,0x7e,0xc9,0x13,0xf8]
          vpmovusdw %zmm7, %ymm8 {%k1} {z}

// CHECK: vpmovqb %zmm3, (%rcx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x32,0x19]
          vpmovqb %zmm3, (%rcx)

// CHECK: vpmovqb %zmm3, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xf2,0x7e,0x4f,0x32,0x19]
          vpmovqb %zmm3, (%rcx) {%k7}

// CHECK: vpmovqb %zmm3, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xb2,0x7e,0x48,0x32,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovqb %zmm3, 291(%rax,%r14,8)

// CHECK: vpmovqb %zmm3, 1016(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x32,0x5a,0x7f]
          vpmovqb %zmm3, 1016(%rdx)

// CHECK: vpmovqb %zmm3, 1024(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x32,0x9a,0x00,0x04,0x00,0x00]
          vpmovqb %zmm3, 1024(%rdx)

// CHECK: vpmovqb %zmm3, -1024(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x32,0x5a,0x80]
          vpmovqb %zmm3, -1024(%rdx)

// CHECK: vpmovqb %zmm3, -1032(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x32,0x9a,0xf8,0xfb,0xff,0xff]
          vpmovqb %zmm3, -1032(%rdx)

// CHECK: vpmovsqb %zmm16, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x22,0x01]
          vpmovsqb %zmm16, (%rcx)

// CHECK: vpmovsqb %zmm16, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x4a,0x22,0x01]
          vpmovsqb %zmm16, (%rcx) {%k2}

// CHECK: vpmovsqb %zmm16, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x48,0x22,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqb %zmm16, 291(%rax,%r14,8)

// CHECK: vpmovsqb %zmm16, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x22,0x42,0x7f]
          vpmovsqb %zmm16, 1016(%rdx)

// CHECK: vpmovsqb %zmm16, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x22,0x82,0x00,0x04,0x00,0x00]
          vpmovsqb %zmm16, 1024(%rdx)

// CHECK: vpmovsqb %zmm16, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x22,0x42,0x80]
          vpmovsqb %zmm16, -1024(%rdx)

// CHECK: vpmovsqb %zmm16, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x22,0x82,0xf8,0xfb,0xff,0xff]
          vpmovsqb %zmm16, -1032(%rdx)

// CHECK: vpmovusqb %zmm28, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x12,0x21]
          vpmovusqb %zmm28, (%rcx)

// CHECK: vpmovusqb %zmm28, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0x62,0x7e,0x49,0x12,0x21]
          vpmovusqb %zmm28, (%rcx) {%k1}

// CHECK: vpmovusqb %zmm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x48,0x12,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqb %zmm28, 291(%rax,%r14,8)

// CHECK: vpmovusqb %zmm28, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x12,0x62,0x7f]
          vpmovusqb %zmm28, 1016(%rdx)

// CHECK: vpmovusqb %zmm28, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x12,0xa2,0x00,0x04,0x00,0x00]
          vpmovusqb %zmm28, 1024(%rdx)

// CHECK: vpmovusqb %zmm28, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x12,0x62,0x80]
          vpmovusqb %zmm28, -1024(%rdx)

// CHECK: vpmovusqb %zmm28, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x12,0xa2,0xf8,0xfb,0xff,0xff]
          vpmovusqb %zmm28, -1032(%rdx)

// CHECK: vpmovqw %zmm7, (%rcx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x34,0x39]
          vpmovqw %zmm7, (%rcx)

// CHECK: vpmovqw %zmm7, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xf2,0x7e,0x4e,0x34,0x39]
          vpmovqw %zmm7, (%rcx) {%k6}

// CHECK: vpmovqw %zmm7, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xb2,0x7e,0x48,0x34,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmovqw %zmm7, 291(%rax,%r14,8)

// CHECK: vpmovqw %zmm7, 2032(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x34,0x7a,0x7f]
          vpmovqw %zmm7, 2032(%rdx)

// CHECK: vpmovqw %zmm7, 2048(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x34,0xba,0x00,0x08,0x00,0x00]
          vpmovqw %zmm7, 2048(%rdx)

// CHECK: vpmovqw %zmm7, -2048(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x34,0x7a,0x80]
          vpmovqw %zmm7, -2048(%rdx)

// CHECK: vpmovqw %zmm7, -2064(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x34,0xba,0xf0,0xf7,0xff,0xff]
          vpmovqw %zmm7, -2064(%rdx)

// CHECK: vpmovsqw %zmm1, (%rcx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x24,0x09]
          vpmovsqw %zmm1, (%rcx)

// CHECK: vpmovsqw %zmm1, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0xf2,0x7e,0x4d,0x24,0x09]
          vpmovsqw %zmm1, (%rcx) {%k5}

// CHECK: vpmovsqw %zmm1, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xb2,0x7e,0x48,0x24,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqw %zmm1, 291(%rax,%r14,8)

// CHECK: vpmovsqw %zmm1, 2032(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x24,0x4a,0x7f]
          vpmovsqw %zmm1, 2032(%rdx)

// CHECK: vpmovsqw %zmm1, 2048(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x24,0x8a,0x00,0x08,0x00,0x00]
          vpmovsqw %zmm1, 2048(%rdx)

// CHECK: vpmovsqw %zmm1, -2048(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x24,0x4a,0x80]
          vpmovsqw %zmm1, -2048(%rdx)

// CHECK: vpmovsqw %zmm1, -2064(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x24,0x8a,0xf0,0xf7,0xff,0xff]
          vpmovsqw %zmm1, -2064(%rdx)

// CHECK: vpmovusqw %zmm25, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x14,0x09]
          vpmovusqw %zmm25, (%rcx)

// CHECK: vpmovusqw %zmm25, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0x62,0x7e,0x4b,0x14,0x09]
          vpmovusqw %zmm25, (%rcx) {%k3}

// CHECK: vpmovusqw %zmm25, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x48,0x14,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqw %zmm25, 291(%rax,%r14,8)

// CHECK: vpmovusqw %zmm25, 2032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x14,0x4a,0x7f]
          vpmovusqw %zmm25, 2032(%rdx)

// CHECK: vpmovusqw %zmm25, 2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x14,0x8a,0x00,0x08,0x00,0x00]
          vpmovusqw %zmm25, 2048(%rdx)

// CHECK: vpmovusqw %zmm25, -2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x14,0x4a,0x80]
          vpmovusqw %zmm25, -2048(%rdx)

// CHECK: vpmovusqw %zmm25, -2064(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x14,0x8a,0xf0,0xf7,0xff,0xff]
          vpmovusqw %zmm25, -2064(%rdx)

// CHECK: vpmovqd %zmm28, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x35,0x21]
          vpmovqd %zmm28, (%rcx)

// CHECK: vpmovqd %zmm28, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0x62,0x7e,0x4d,0x35,0x21]
          vpmovqd %zmm28, (%rcx) {%k5}

// CHECK: vpmovqd %zmm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x48,0x35,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovqd %zmm28, 291(%rax,%r14,8)

// CHECK: vpmovqd %zmm28, 4064(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x35,0x62,0x7f]
          vpmovqd %zmm28, 4064(%rdx)

// CHECK: vpmovqd %zmm28, 4096(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x35,0xa2,0x00,0x10,0x00,0x00]
          vpmovqd %zmm28, 4096(%rdx)

// CHECK: vpmovqd %zmm28, -4096(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x35,0x62,0x80]
          vpmovqd %zmm28, -4096(%rdx)

// CHECK: vpmovqd %zmm28, -4128(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x48,0x35,0xa2,0xe0,0xef,0xff,0xff]
          vpmovqd %zmm28, -4128(%rdx)

// CHECK: vpmovsqd %zmm9, (%rcx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x25,0x09]
          vpmovsqd %zmm9, (%rcx)

// CHECK: vpmovsqd %zmm9, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x72,0x7e,0x4f,0x25,0x09]
          vpmovsqd %zmm9, (%rcx) {%k7}

// CHECK: vpmovsqd %zmm9, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x32,0x7e,0x48,0x25,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqd %zmm9, 291(%rax,%r14,8)

// CHECK: vpmovsqd %zmm9, 4064(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x25,0x4a,0x7f]
          vpmovsqd %zmm9, 4064(%rdx)

// CHECK: vpmovsqd %zmm9, 4096(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x25,0x8a,0x00,0x10,0x00,0x00]
          vpmovsqd %zmm9, 4096(%rdx)

// CHECK: vpmovsqd %zmm9, -4096(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x25,0x4a,0x80]
          vpmovsqd %zmm9, -4096(%rdx)

// CHECK: vpmovsqd %zmm9, -4128(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x25,0x8a,0xe0,0xef,0xff,0xff]
          vpmovsqd %zmm9, -4128(%rdx)

// CHECK: vpmovusqd %zmm22, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x15,0x31]
          vpmovusqd %zmm22, (%rcx)

// CHECK: vpmovusqd %zmm22, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x49,0x15,0x31]
          vpmovusqd %zmm22, (%rcx) {%k1}

// CHECK: vpmovusqd %zmm22, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x48,0x15,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqd %zmm22, 291(%rax,%r14,8)

// CHECK: vpmovusqd %zmm22, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x15,0x72,0x7f]
          vpmovusqd %zmm22, 4064(%rdx)

// CHECK: vpmovusqd %zmm22, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x15,0xb2,0x00,0x10,0x00,0x00]
          vpmovusqd %zmm22, 4096(%rdx)

// CHECK: vpmovusqd %zmm22, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x15,0x72,0x80]
          vpmovusqd %zmm22, -4096(%rdx)

// CHECK: vpmovusqd %zmm22, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x15,0xb2,0xe0,0xef,0xff,0xff]
          vpmovusqd %zmm22, -4128(%rdx)

// CHECK: vpmovdb %zmm12, (%rcx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x31,0x21]
          vpmovdb %zmm12, (%rcx)

// CHECK: vpmovdb %zmm12, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0x72,0x7e,0x4b,0x31,0x21]
          vpmovdb %zmm12, (%rcx) {%k3}

// CHECK: vpmovdb %zmm12, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x32,0x7e,0x48,0x31,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovdb %zmm12, 291(%rax,%r14,8)

// CHECK: vpmovdb %zmm12, 2032(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x31,0x62,0x7f]
          vpmovdb %zmm12, 2032(%rdx)

// CHECK: vpmovdb %zmm12, 2048(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x31,0xa2,0x00,0x08,0x00,0x00]
          vpmovdb %zmm12, 2048(%rdx)

// CHECK: vpmovdb %zmm12, -2048(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x31,0x62,0x80]
          vpmovdb %zmm12, -2048(%rdx)

// CHECK: vpmovdb %zmm12, -2064(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x31,0xa2,0xf0,0xf7,0xff,0xff]
          vpmovdb %zmm12, -2064(%rdx)

// CHECK: vpmovsdb %zmm6, (%rcx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x21,0x31]
          vpmovsdb %zmm6, (%rcx)

// CHECK: vpmovsdb %zmm6, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xf2,0x7e,0x49,0x21,0x31]
          vpmovsdb %zmm6, (%rcx) {%k1}

// CHECK: vpmovsdb %zmm6, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xb2,0x7e,0x48,0x21,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovsdb %zmm6, 291(%rax,%r14,8)

// CHECK: vpmovsdb %zmm6, 2032(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x21,0x72,0x7f]
          vpmovsdb %zmm6, 2032(%rdx)

// CHECK: vpmovsdb %zmm6, 2048(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x21,0xb2,0x00,0x08,0x00,0x00]
          vpmovsdb %zmm6, 2048(%rdx)

// CHECK: vpmovsdb %zmm6, -2048(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x21,0x72,0x80]
          vpmovsdb %zmm6, -2048(%rdx)

// CHECK: vpmovsdb %zmm6, -2064(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x21,0xb2,0xf0,0xf7,0xff,0xff]
          vpmovsdb %zmm6, -2064(%rdx)

// CHECK: vpmovusdb %zmm23, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x11,0x39]
          vpmovusdb %zmm23, (%rcx)

// CHECK: vpmovusdb %zmm23, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x4b,0x11,0x39]
          vpmovusdb %zmm23, (%rcx) {%k3}

// CHECK: vpmovusdb %zmm23, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x48,0x11,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmovusdb %zmm23, 291(%rax,%r14,8)

// CHECK: vpmovusdb %zmm23, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x11,0x7a,0x7f]
          vpmovusdb %zmm23, 2032(%rdx)

// CHECK: vpmovusdb %zmm23, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x11,0xba,0x00,0x08,0x00,0x00]
          vpmovusdb %zmm23, 2048(%rdx)

// CHECK: vpmovusdb %zmm23, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x11,0x7a,0x80]
          vpmovusdb %zmm23, -2048(%rdx)

// CHECK: vpmovusdb %zmm23, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x48,0x11,0xba,0xf0,0xf7,0xff,0xff]
          vpmovusdb %zmm23, -2064(%rdx)

// CHECK: vpmovdw %zmm7, (%rcx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x33,0x39]
          vpmovdw %zmm7, (%rcx)

// CHECK: vpmovdw %zmm7, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xf2,0x7e,0x4f,0x33,0x39]
          vpmovdw %zmm7, (%rcx) {%k7}

// CHECK: vpmovdw %zmm7, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xb2,0x7e,0x48,0x33,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmovdw %zmm7, 291(%rax,%r14,8)

// CHECK: vpmovdw %zmm7, 4064(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x33,0x7a,0x7f]
          vpmovdw %zmm7, 4064(%rdx)

// CHECK: vpmovdw %zmm7, 4096(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x33,0xba,0x00,0x10,0x00,0x00]
          vpmovdw %zmm7, 4096(%rdx)

// CHECK: vpmovdw %zmm7, -4096(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x33,0x7a,0x80]
          vpmovdw %zmm7, -4096(%rdx)

// CHECK: vpmovdw %zmm7, -4128(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x33,0xba,0xe0,0xef,0xff,0xff]
          vpmovdw %zmm7, -4128(%rdx)

// CHECK: vpmovsdw %zmm14, (%rcx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x23,0x31]
          vpmovsdw %zmm14, (%rcx)

// CHECK: vpmovsdw %zmm14, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x72,0x7e,0x4e,0x23,0x31]
          vpmovsdw %zmm14, (%rcx) {%k6}

// CHECK: vpmovsdw %zmm14, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x32,0x7e,0x48,0x23,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovsdw %zmm14, 291(%rax,%r14,8)

// CHECK: vpmovsdw %zmm14, 4064(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x23,0x72,0x7f]
          vpmovsdw %zmm14, 4064(%rdx)

// CHECK: vpmovsdw %zmm14, 4096(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x23,0xb2,0x00,0x10,0x00,0x00]
          vpmovsdw %zmm14, 4096(%rdx)

// CHECK: vpmovsdw %zmm14, -4096(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x23,0x72,0x80]
          vpmovsdw %zmm14, -4096(%rdx)

// CHECK: vpmovsdw %zmm14, -4128(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7e,0x48,0x23,0xb2,0xe0,0xef,0xff,0xff]
          vpmovsdw %zmm14, -4128(%rdx)

// CHECK: vpmovusdw %zmm5, (%rcx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x13,0x29]
          vpmovusdw %zmm5, (%rcx)

// CHECK: vpmovusdw %zmm5, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0xf2,0x7e,0x4b,0x13,0x29]
          vpmovusdw %zmm5, (%rcx) {%k3}

// CHECK: vpmovusdw %zmm5, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xb2,0x7e,0x48,0x13,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovusdw %zmm5, 291(%rax,%r14,8)

// CHECK: vpmovusdw %zmm5, 4064(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x13,0x6a,0x7f]
          vpmovusdw %zmm5, 4064(%rdx)

// CHECK: vpmovusdw %zmm5, 4096(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x13,0xaa,0x00,0x10,0x00,0x00]
          vpmovusdw %zmm5, 4096(%rdx)

// CHECK: vpmovusdw %zmm5, -4096(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x13,0x6a,0x80]
          vpmovusdw %zmm5, -4096(%rdx)

// CHECK: vpmovusdw %zmm5, -4128(%rdx)
// CHECK:  encoding: [0x62,0xf2,0x7e,0x48,0x13,0xaa,0xe0,0xef,0xff,0xff]
          vpmovusdw %zmm5, -4128(%rdx)

// CHECK: vinserti32x4
// CHECK: encoding: [0x62,0xa3,0x55,0x48,0x38,0xcd,0x01]
vinserti32x4  $1, %xmm21, %zmm5, %zmm17

// CHECK: vinserti32x4
// CHECK: encoding: [0x62,0xe3,0x1d,0x40,0x38,0x4f,0x10,0x01]
vinserti32x4  $1, 256(%rdi), %zmm28, %zmm17

// CHECK: vextracti32x4
// CHECK: encoding: [0x62,0x33,0x7d,0x48,0x39,0xc9,0x01]
vextracti32x4  $1, %zmm9, %xmm17

// CHECK: vextracti64x4
// CHECK: encoding: [0x62,0x33,0xfd,0x48,0x3b,0xc9,0x01]
vextracti64x4  $1, %zmm9, %ymm17

// CHECK: vextracti64x4
// CHECK: encoding: [0x62,0x73,0xfd,0x48,0x3b,0x4f,0x10,0x01]
vextracti64x4  $1, %zmm9, 512(%rdi)

// CHECK: vpsrad
// CHECK: encoding: [0x62,0xb1,0x35,0x40,0x72,0xe1,0x02]
vpsrad $2, %zmm17, %zmm25

// CHECK: vpsrad
// CHECK: encoding: [0x62,0xf1,0x35,0x40,0x72,0x64,0xb7,0x08,0x02]
vpsrad $2, 512(%rdi, %rsi, 4), %zmm25

// CHECK: vpsrad
// CHECK: encoding: [0x62,0x21,0x1d,0x48,0xe2,0xc9]
vpsrad %xmm17, %zmm12, %zmm25

// CHECK: vpsrad
// CHECK: encoding: [0x62,0x61,0x1d,0x48,0xe2,0x4c,0xb7,0x20]
vpsrad 512(%rdi, %rsi, 4), %zmm12, %zmm25

// CHECK: vpbroadcastd {{.*}} {%k1} {z}
// CHECK: encoding: [0x62,0xf2,0x7d,0xc9,0x58,0xc8]
vpbroadcastd  %xmm0, %zmm1 {%k1} {z}

// CHECK: vbroadcastf32x4 (%rcx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x1a,0x19]
          vbroadcastf32x4 (%rcx), %zmm3

// CHECK: vbroadcastf32x4 (%rcx), %zmm3 {%k7}
// CHECK:  encoding: [0x62,0xf2,0x7d,0x4f,0x1a,0x19]
          vbroadcastf32x4 (%rcx), %zmm3 {%k7}

// CHECK: vbroadcastf32x4 (%rcx), %zmm3 {%k7} {z}
// CHECK:  encoding: [0x62,0xf2,0x7d,0xcf,0x1a,0x19]
          vbroadcastf32x4 (%rcx), %zmm3 {%k7} {z}

// CHECK: vbroadcastf32x4 291(%rax,%r14,8), %zmm3
// CHECK:  encoding: [0x62,0xb2,0x7d,0x48,0x1a,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vbroadcastf32x4 291(%rax,%r14,8), %zmm3

// CHECK: vbroadcastf32x4 2032(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x1a,0x5a,0x7f]
          vbroadcastf32x4 2032(%rdx), %zmm3

// CHECK: vbroadcastf32x4 2048(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x1a,0x9a,0x00,0x08,0x00,0x00]
          vbroadcastf32x4 2048(%rdx), %zmm3

// CHECK: vbroadcastf32x4 -2048(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x1a,0x5a,0x80]
          vbroadcastf32x4 -2048(%rdx), %zmm3

// CHECK: vbroadcastf32x4 -2064(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x1a,0x9a,0xf0,0xf7,0xff,0xff]
          vbroadcastf32x4 -2064(%rdx), %zmm3

// CHECK: vbroadcastf64x4 (%rcx), %zmm25
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x1b,0x09]
          vbroadcastf64x4 (%rcx), %zmm25

// CHECK: vbroadcastf64x4 (%rcx), %zmm25 {%k6}
// CHECK:  encoding: [0x62,0x62,0xfd,0x4e,0x1b,0x09]
          vbroadcastf64x4 (%rcx), %zmm25 {%k6}

// CHECK: vbroadcastf64x4 (%rcx), %zmm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x62,0xfd,0xce,0x1b,0x09]
          vbroadcastf64x4 (%rcx), %zmm25 {%k6} {z}

// CHECK: vbroadcastf64x4 291(%rax,%r14,8), %zmm25
// CHECK:  encoding: [0x62,0x22,0xfd,0x48,0x1b,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vbroadcastf64x4 291(%rax,%r14,8), %zmm25

// CHECK: vbroadcastf64x4 4064(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x1b,0x4a,0x7f]
          vbroadcastf64x4 4064(%rdx), %zmm25

// CHECK: vbroadcastf64x4 4096(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x1b,0x8a,0x00,0x10,0x00,0x00]
          vbroadcastf64x4 4096(%rdx), %zmm25

// CHECK: vbroadcastf64x4 -4096(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x1b,0x4a,0x80]
          vbroadcastf64x4 -4096(%rdx), %zmm25

// CHECK: vbroadcastf64x4 -4128(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x1b,0x8a,0xe0,0xef,0xff,0xff]
          vbroadcastf64x4 -4128(%rdx), %zmm25

// CHECK: vbroadcasti32x4 (%rcx), %zmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x5a,0x31]
          vbroadcasti32x4 (%rcx), %zmm30

// CHECK: vbroadcasti32x4 (%rcx), %zmm30 {%k3}
// CHECK:  encoding: [0x62,0x62,0x7d,0x4b,0x5a,0x31]
          vbroadcasti32x4 (%rcx), %zmm30 {%k3}

// CHECK: vbroadcasti32x4 (%rcx), %zmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xcb,0x5a,0x31]
          vbroadcasti32x4 (%rcx), %zmm30 {%k3} {z}

// CHECK: vbroadcasti32x4 291(%rax,%r14,8), %zmm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x48,0x5a,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vbroadcasti32x4 291(%rax,%r14,8), %zmm30

// CHECK: vbroadcasti32x4 2032(%rdx), %zmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x5a,0x72,0x7f]
          vbroadcasti32x4 2032(%rdx), %zmm30

// CHECK: vbroadcasti32x4 2048(%rdx), %zmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x5a,0xb2,0x00,0x08,0x00,0x00]
          vbroadcasti32x4 2048(%rdx), %zmm30

// CHECK: vbroadcasti32x4 -2048(%rdx), %zmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x5a,0x72,0x80]
          vbroadcasti32x4 -2048(%rdx), %zmm30

// CHECK: vbroadcasti32x4 -2064(%rdx), %zmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x48,0x5a,0xb2,0xf0,0xf7,0xff,0xff]
          vbroadcasti32x4 -2064(%rdx), %zmm30

// CHECK: vbroadcasti64x4 (%rcx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x5b,0x29]
          vbroadcasti64x4 (%rcx), %zmm13

// CHECK: vbroadcasti64x4 (%rcx), %zmm13 {%k4}
// CHECK:  encoding: [0x62,0x72,0xfd,0x4c,0x5b,0x29]
          vbroadcasti64x4 (%rcx), %zmm13 {%k4}

// CHECK: vbroadcasti64x4 (%rcx), %zmm13 {%k4} {z}
// CHECK:  encoding: [0x62,0x72,0xfd,0xcc,0x5b,0x29]
          vbroadcasti64x4 (%rcx), %zmm13 {%k4} {z}

// CHECK: vbroadcasti64x4 291(%rax,%r14,8), %zmm13
// CHECK:  encoding: [0x62,0x32,0xfd,0x48,0x5b,0xac,0xf0,0x23,0x01,0x00,0x00]
          vbroadcasti64x4 291(%rax,%r14,8), %zmm13

// CHECK: vbroadcasti64x4 4064(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x5b,0x6a,0x7f]
          vbroadcasti64x4 4064(%rdx), %zmm13

// CHECK: vbroadcasti64x4 4096(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x5b,0xaa,0x00,0x10,0x00,0x00]
          vbroadcasti64x4 4096(%rdx), %zmm13

// CHECK: vbroadcasti64x4 -4096(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x5b,0x6a,0x80]
          vbroadcasti64x4 -4096(%rdx), %zmm13

// CHECK: vmovdqu64 {{.*}} {%k3}
// CHECK: encoding: [0x62,0xf1,0xfe,0x4b,0x7f,0x07]
vmovdqu64 %zmm0, (%rdi) {%k3}

// CHECK: vmovdqa32 {{.*}} {%k4}
// CHECK: encoding: [0x62,0x61,0x7d,0x4c,0x6f,0x1e]
vmovdqa32 (%rsi), %zmm27 {%k4}

// CHECK: vmovd
// CHECK: encoding: [0x62,0xe1,0x7d,0x08,0x7e,0x74,0x24,0xeb]
vmovd %xmm22, -84(%rsp)

// CHECK: vextractps
// CHECK: encoding: [0x62,0xe3,0x7d,0x08,0x17,0x61,0x1f,0x02]
vextractps      $2, %xmm20, 124(%rcx)

// CHECK: vaddpd {{.*}}{1to8}
// CHECK: encoding: [0x62,0x61,0xdd,0x50,0x58,0x74,0xf7,0x40]
vaddpd 512(%rdi, %rsi, 8) {1to8}, %zmm20, %zmm30

// CHECK: vaddps {{.*}}{1to16}
// CHECK: encoding: [0x62,0x61,0x5c,0x50,0x58,0xb4,0xf7,0x00,0x02,0x00,0x00]
vaddps 512(%rdi, %rsi, 8) {1to16}, %zmm20, %zmm30

// CHECK: vmovntdqa
// CHECK: encoding: [0x62,0x72,0x7d,0x48,0x2a,0xab,0x78,0x56,0x34,0x12]
vmovntdqa 0x12345678(%rbx), %zmm13

// CHECK: vmovntdqa
// CHECK: encoding: [0x62,0xc2,0x7d,0x48,0x2a,0x14,0x56]
vmovntdqa (%r14,%rdx,2), %zmm18

// CHECK: vmovntdqa
// CHECK: encoding: [0x62,0xc2,0x7d,0x48,0x2a,0x7c,0x14,0x02]
vmovntdqa 128(%r12,%rdx), %zmm23

// CHECK: vmovntdq
// CHECK: encoding: [0x62,0x21,0x7d,0x48,0xe7,0x24,0xa9]
vmovntdq %zmm28, (%rcx,%r13,4)

// CHECK: vmovntpd
// CHECK: encoding: [0x62,0xf1,0xfd,0x48,0x2b,0xb2,0x04,0x00,0x00,0x00]
vmovntpd %zmm6, 4(%rdx)

// CHECK: vmovntps
// CHECK: encoding: [0x62,0x51,0x7c,0x48,0x2b,0x5c,0x8d,0x00]
vmovntps %zmm11, (%r13,%rcx,4)

// CHECK: vcmpgtps %zmm17, %zmm5, %k2
// CHECK: encoding: [0x62,0xb1,0x54,0x48,0xc2,0xd1,0x0e]
vcmpgtps %zmm17, %zmm5, %k2

// CHECK: vcmpgepd 128(%r14), %zmm17, %k6
// CHECK: encoding: [0x62,0xd1,0xf5,0x40,0xc2,0x76,0x02,0x0d]
vcmpgepd 0x80(%r14), %zmm17, %k6

// CHECK: vpcmpd $1,
// CHECK: encoding: [0x62,0x93,0x45,0x4c,0x1f,0xe8,0x01]
vpcmpd $1, %zmm24, %zmm7, %k5{%k4}

// CHECK: vpcmpuq $2,
// CHECK: encoding: [0x62,0xf3,0xf5,0x47,0x1e,0x72,0x01,0x02]
vpcmpuq $2, 0x40(%rdx), %zmm17, %k6{%k7}

// CHECK: valignq $2
// CHECK: encoding: [0x62,0xf3,0xfd,0x48,0x03,0x4c,0x24,0x04,0x02]
valignq  $2, 0x100(%rsp), %zmm0, %zmm1

// CHECK: valignq $3
// CHECK: encoding: [0x62,0xf3,0xfd,0x49,0x03,0xcb,0x03]
valignq  $3, %zmm3, %zmm0, %zmm1 {%k1}

// CHECK: valignq $171, %zmm23, %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x23,0xdd,0x48,0x03,0xe7,0xab]
          valignq $0xab, %zmm23, %zmm4, %zmm28

// CHECK: valignq $171, %zmm23, %zmm4, %zmm28 {%k3}
// CHECK:  encoding: [0x62,0x23,0xdd,0x4b,0x03,0xe7,0xab]
          valignq $0xab, %zmm23, %zmm4, %zmm28 {%k3}

// CHECK: valignq $171, %zmm23, %zmm4, %zmm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x23,0xdd,0xcb,0x03,0xe7,0xab]
          valignq $0xab, %zmm23, %zmm4, %zmm28 {%k3} {z}

// CHECK: valignq $123, %zmm23, %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x23,0xdd,0x48,0x03,0xe7,0x7b]
          valignq $0x7b, %zmm23, %zmm4, %zmm28

// CHECK: valignq $123, (%rcx), %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x48,0x03,0x21,0x7b]
          valignq $0x7b, (%rcx), %zmm4, %zmm28

// CHECK: valignq $123, 291(%rax,%r14,8), %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x23,0xdd,0x48,0x03,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          valignq $0x7b, 291(%rax,%r14,8), %zmm4, %zmm28

// CHECK: valignq $123, (%rcx){1to8}, %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x58,0x03,0x21,0x7b]
          valignq $0x7b, (%rcx){1to8}, %zmm4, %zmm28

// CHECK: valignq $123, 8128(%rdx), %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x48,0x03,0x62,0x7f,0x7b]
          valignq $0x7b, 8128(%rdx), %zmm4, %zmm28

// CHECK: valignq $123, 8192(%rdx), %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x48,0x03,0xa2,0x00,0x20,0x00,0x00,0x7b]
          valignq $0x7b, 8192(%rdx), %zmm4, %zmm28

// CHECK: valignq $123, -8192(%rdx), %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x48,0x03,0x62,0x80,0x7b]
          valignq $0x7b, -8192(%rdx), %zmm4, %zmm28

// CHECK: valignq $123, -8256(%rdx), %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x48,0x03,0xa2,0xc0,0xdf,0xff,0xff,0x7b]
          valignq $0x7b, -8256(%rdx), %zmm4, %zmm28

// CHECK: valignq $123, 1016(%rdx){1to8}, %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x58,0x03,0x62,0x7f,0x7b]
          valignq $0x7b, 1016(%rdx){1to8}, %zmm4, %zmm28

// CHECK: valignq $123, 1024(%rdx){1to8}, %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x58,0x03,0xa2,0x00,0x04,0x00,0x00,0x7b]
          valignq $0x7b, 1024(%rdx){1to8}, %zmm4, %zmm28

// CHECK: valignq $123, -1024(%rdx){1to8}, %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x58,0x03,0x62,0x80,0x7b]
          valignq $0x7b, -1024(%rdx){1to8}, %zmm4, %zmm28

// CHECK: valignq $123, -1032(%rdx){1to8}, %zmm4, %zmm28
// CHECK:  encoding: [0x62,0x63,0xdd,0x58,0x03,0xa2,0xf8,0xfb,0xff,0xff,0x7b]
          valignq $0x7b, -1032(%rdx){1to8}, %zmm4, %zmm28

// CHECK: vextractf32x4 $3
// CHECK: encoding: [0x62,0xf3,0x7d,0x49,0x19,0xd9,0x03]
vextractf32x4  $3, %zmm3, %xmm1 {%k1}

// CHECK: vextracti64x4 $1
// CHECK: encoding: [0x62,0x53,0xfd,0xcb,0x3b,0xf4,0x01]
vextracti64x4  $1, %zmm14, %ymm12 {%k3} {z}

// CHECK: vfmadd231ps
// CHECK: encoding: [0x62,0xb2,0x1d,0x48,0xb8,0xe7]
vfmadd231ps %zmm23, %zmm12, %zmm4

// CHECK: vfmsub231pd
// CHECK: encoding: [0x62,0xe2,0xed,0x48,0xba,0x73,0x08]
vfmsub231pd 0x200(%rbx), %zmm2, %zmm22

// CHECK: vfmaddsub231ps
// CHECK: encoding: [0x62,0xd2,0x65,0x4b,0xb6,0xec]
vfmaddsub231ps %zmm12, %zmm3, %zmm5 {%k3}

// CHECK: vfmsubadd231pd
// CHECK: encoding: [0x62,0x72,0x85,0xc5,0xb7,0xdd]
vfmsubadd231pd %zmm5, %zmm31, %zmm11 {%k5}{z}

// CHECK: vfnmadd231ps
// CHECK: encoding: [0x62,0xf2,0x4d,0x48,0xbc,0xfd]
vfnmadd231ps %zmm5, %zmm6, %zmm7

// CHECK: vfnmsub231pd
// CHECK: encoding: [0x62,0xf2,0xcd,0x48,0xbe,0xfd]
vfnmsub231pd %zmm5, %zmm6, %zmm7

// CHECK: vpermilps
// CHECK: encoding: [0x62,0xf2,0x6d,0x48,0x0c,0xd9]
vpermilps %zmm1, %zmm2, %zmm3

// CHECK: vpermilpd
// CHECK: encoding: [0x62,0xf2,0xed,0x48,0x0d,0x5b,0x10]
vpermilpd 0x400(%rbx), %zmm2, %zmm3

// CHECK: vpermilps
// CHECK: encoding: [0x62,0xf2,0x6d,0x48,0x0c,0x5b,0x10]
vpermilps 0x400(%rbx), %zmm2, %zmm3

// CHECK: vpermilpd
// CHECK: encoding: [0x62,0xf3,0xfd,0x48,0x05,0x53,0x10,0x23]
vpermilpd $0x23, 0x400(%rbx), %zmm2

// CHECK: vcmppd $171, %zmm26, %zmm12, %k2
// CHECK:  encoding: [0x62,0x91,0x9d,0x48,0xc2,0xd2,0xab]
          vcmppd $0xab, %zmm26, %zmm12, %k2

// CHECK: vcmppd $171, %zmm26, %zmm12, %k2 {%k3}
// CHECK:  encoding: [0x62,0x91,0x9d,0x4b,0xc2,0xd2,0xab]
          vcmppd $0xab, %zmm26, %zmm12, %k2 {%k3}

// CHECK: vcmppd $171,{sae}, %zmm26, %zmm12, %k2
// CHECK:  encoding: [0x62,0x91,0x9d,0x18,0xc2,0xd2,0xab]
          vcmppd $0xab,{sae}, %zmm26, %zmm12, %k2

// CHECK: vcmppd $123, %zmm26, %zmm12, %k2
// CHECK:  encoding: [0x62,0x91,0x9d,0x48,0xc2,0xd2,0x7b]
          vcmppd $0x7b, %zmm26, %zmm12, %k2

// CHECK: vcmppd $123,{sae}, %zmm26, %zmm12, %k2
// CHECK:  encoding: [0x62,0x91,0x9d,0x18,0xc2,0xd2,0x7b]
          vcmppd $0x7b,{sae}, %zmm26, %zmm12, %k2

// CHECK: vcmppd $123, (%rcx), %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x48,0xc2,0x11,0x7b]
          vcmppd $0x7b, (%rcx), %zmm12, %k2

// CHECK: vcmppd $123, 291(%rax,%r14,8), %zmm12, %k2
// CHECK:  encoding: [0x62,0xb1,0x9d,0x48,0xc2,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vcmppd $0x7b, 291(%rax,%r14,8), %zmm12, %k2

// CHECK: vcmppd $123, (%rcx){1to8}, %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x58,0xc2,0x11,0x7b]
          vcmppd $0x7b, (%rcx){1to8}, %zmm12, %k2

// CHECK: vcmppd $123, 8128(%rdx), %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x48,0xc2,0x52,0x7f,0x7b]
          vcmppd $0x7b, 8128(%rdx), %zmm12, %k2

// CHECK: vcmppd $123, 8192(%rdx), %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x48,0xc2,0x92,0x00,0x20,0x00,0x00,0x7b]
          vcmppd $0x7b, 8192(%rdx), %zmm12, %k2

// CHECK: vcmppd $123, -8192(%rdx), %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x48,0xc2,0x52,0x80,0x7b]
          vcmppd $0x7b, -8192(%rdx), %zmm12, %k2

// CHECK: vcmppd $123, -8256(%rdx), %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x48,0xc2,0x92,0xc0,0xdf,0xff,0xff,0x7b]
          vcmppd $0x7b, -8256(%rdx), %zmm12, %k2

// CHECK: vcmppd $123, 1016(%rdx){1to8}, %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x58,0xc2,0x52,0x7f,0x7b]
          vcmppd $0x7b, 1016(%rdx){1to8}, %zmm12, %k2

// CHECK: vcmppd $123, 1024(%rdx){1to8}, %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x58,0xc2,0x92,0x00,0x04,0x00,0x00,0x7b]
          vcmppd $0x7b, 1024(%rdx){1to8}, %zmm12, %k2

// CHECK: vcmppd $123, -1024(%rdx){1to8}, %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x58,0xc2,0x52,0x80,0x7b]
          vcmppd $0x7b, -1024(%rdx){1to8}, %zmm12, %k2

// CHECK: vcmppd $123, -1032(%rdx){1to8}, %zmm12, %k2
// CHECK:  encoding: [0x62,0xf1,0x9d,0x58,0xc2,0x92,0xf8,0xfb,0xff,0xff,0x7b]
          vcmppd $0x7b, -1032(%rdx){1to8}, %zmm12, %k2

// CHECK: vcmpps $171, %zmm22, %zmm17, %k2
// CHECK:  encoding: [0x62,0xb1,0x74,0x40,0xc2,0xd6,0xab]
          vcmpps $0xab, %zmm22, %zmm17, %k2

// CHECK: vcmpps $171, %zmm22, %zmm17, %k2 {%k3}
// CHECK:  encoding: [0x62,0xb1,0x74,0x43,0xc2,0xd6,0xab]
          vcmpps $0xab, %zmm22, %zmm17, %k2 {%k3}

// CHECK: vcmpps $171,{sae}, %zmm22, %zmm17, %k2
// CHECK:  encoding: [0x62,0xb1,0x74,0x10,0xc2,0xd6,0xab]
          vcmpps $0xab,{sae}, %zmm22, %zmm17, %k2

// CHECK: vcmpps $123, %zmm22, %zmm17, %k2
// CHECK:  encoding: [0x62,0xb1,0x74,0x40,0xc2,0xd6,0x7b]
          vcmpps $0x7b, %zmm22, %zmm17, %k2

// CHECK: vcmpps $123,{sae}, %zmm22, %zmm17, %k2
// CHECK:  encoding: [0x62,0xb1,0x74,0x10,0xc2,0xd6,0x7b]
          vcmpps $0x7b,{sae}, %zmm22, %zmm17, %k2

// CHECK: vcmpps $123, (%rcx), %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x40,0xc2,0x11,0x7b]
          vcmpps $0x7b, (%rcx), %zmm17, %k2

// CHECK: vcmpps $123, 291(%rax,%r14,8), %zmm17, %k2
// CHECK:  encoding: [0x62,0xb1,0x74,0x40,0xc2,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vcmpps $0x7b, 291(%rax,%r14,8), %zmm17, %k2

// CHECK: vcmpps $123, (%rcx){1to16}, %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x50,0xc2,0x11,0x7b]
          vcmpps $0x7b, (%rcx){1to16}, %zmm17, %k2

// CHECK: vcmpps $123, 8128(%rdx), %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x40,0xc2,0x52,0x7f,0x7b]
          vcmpps $0x7b, 8128(%rdx), %zmm17, %k2

// CHECK: vcmpps $123, 8192(%rdx), %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x40,0xc2,0x92,0x00,0x20,0x00,0x00,0x7b]
          vcmpps $0x7b, 8192(%rdx), %zmm17, %k2

// CHECK: vcmpps $123, -8192(%rdx), %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x40,0xc2,0x52,0x80,0x7b]
          vcmpps $0x7b, -8192(%rdx), %zmm17, %k2

// CHECK: vcmpps $123, -8256(%rdx), %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x40,0xc2,0x92,0xc0,0xdf,0xff,0xff,0x7b]
          vcmpps $0x7b, -8256(%rdx), %zmm17, %k2

// CHECK: vcmpps $123, 508(%rdx){1to16}, %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x50,0xc2,0x52,0x7f,0x7b]
          vcmpps $0x7b, 508(%rdx){1to16}, %zmm17, %k2

// CHECK: vcmpps $123, 512(%rdx){1to16}, %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x50,0xc2,0x92,0x00,0x02,0x00,0x00,0x7b]
          vcmpps $0x7b, 512(%rdx){1to16}, %zmm17, %k2

// CHECK: vcmpps $123, -512(%rdx){1to16}, %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x50,0xc2,0x52,0x80,0x7b]
          vcmpps $0x7b, -512(%rdx){1to16}, %zmm17, %k2

// CHECK: vcmpps $123, -516(%rdx){1to16}, %zmm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x74,0x50,0xc2,0x92,0xfc,0xfd,0xff,0xff,0x7b]
          vcmpps $0x7b, -516(%rdx){1to16}, %zmm17, %k2

// CHECK: vaddpd {rn-sae}, %zmm6, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x10,0x58,0xc6]
          vaddpd {rn-sae}, %zmm6, %zmm27, %zmm8

// CHECK: vaddpd {ru-sae}, %zmm6, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x50,0x58,0xc6]
          vaddpd {ru-sae}, %zmm6, %zmm27, %zmm8

// CHECK: vaddpd {rd-sae}, %zmm6, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x30,0x58,0xc6]
          vaddpd {rd-sae}, %zmm6, %zmm27, %zmm8

// CHECK: vaddpd {rz-sae}, %zmm6, %zmm27, %zmm8
// CHECK:  encoding: [0x62,0x71,0xa5,0x70,0x58,0xc6]
          vaddpd {rz-sae}, %zmm6, %zmm27, %zmm8

// CHECK: vaddps {rn-sae}, %zmm2, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x18,0x58,0xd2]
          vaddps {rn-sae}, %zmm2, %zmm13, %zmm18

// CHECK: vaddps {ru-sae}, %zmm2, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x58,0x58,0xd2]
          vaddps {ru-sae}, %zmm2, %zmm13, %zmm18

// CHECK: vaddps {rd-sae}, %zmm2, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x38,0x58,0xd2]
          vaddps {rd-sae}, %zmm2, %zmm13, %zmm18

// CHECK: vaddps {rz-sae}, %zmm2, %zmm13, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x14,0x78,0x58,0xd2]
          vaddps {rz-sae}, %zmm2, %zmm13, %zmm18

// CHECK: vaddsd %xmm8, %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xd1,0xf7,0x00,0x58,0xd8]
          vaddsd %xmm8, %xmm17, %xmm3

// CHECK: vaddsd %xmm8, %xmm17, %xmm3 {%k3}
// CHECK:  encoding: [0x62,0xd1,0xf7,0x03,0x58,0xd8]
          vaddsd %xmm8, %xmm17, %xmm3 {%k3}

// CHECK: vaddsd %xmm8, %xmm17, %xmm3 {%k3} {z}
// CHECK:  encoding: [0x62,0xd1,0xf7,0x83,0x58,0xd8]
          vaddsd %xmm8, %xmm17, %xmm3 {%k3} {z}

// CHECK: vaddsd {rn-sae}, %xmm8, %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xd1,0xf7,0x10,0x58,0xd8]
          vaddsd {rn-sae}, %xmm8, %xmm17, %xmm3

// CHECK: vaddsd {ru-sae}, %xmm8, %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xd1,0xf7,0x50,0x58,0xd8]
          vaddsd {ru-sae}, %xmm8, %xmm17, %xmm3

// CHECK: vaddsd {rd-sae}, %xmm8, %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xd1,0xf7,0x30,0x58,0xd8]
          vaddsd {rd-sae}, %xmm8, %xmm17, %xmm3

// CHECK: vaddsd {rz-sae}, %xmm8, %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xd1,0xf7,0x70,0x58,0xd8]
          vaddsd {rz-sae}, %xmm8, %xmm17, %xmm3

// CHECK: vaddsd (%rcx), %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xf1,0xf7,0x00,0x58,0x19]
          vaddsd (%rcx), %xmm17, %xmm3

// CHECK: vaddsd 291(%rax,%r14,8), %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xb1,0xf7,0x00,0x58,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vaddsd 291(%rax,%r14,8), %xmm17, %xmm3

// CHECK: vaddsd 1016(%rdx), %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xf1,0xf7,0x00,0x58,0x5a,0x7f]
          vaddsd 1016(%rdx), %xmm17, %xmm3

// CHECK: vaddsd 1024(%rdx), %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xf1,0xf7,0x00,0x58,0x9a,0x00,0x04,0x00,0x00]
          vaddsd 1024(%rdx), %xmm17, %xmm3

// CHECK: vaddsd -1024(%rdx), %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xf1,0xf7,0x00,0x58,0x5a,0x80]
          vaddsd -1024(%rdx), %xmm17, %xmm3

// CHECK: vaddsd -1032(%rdx), %xmm17, %xmm3
// CHECK:  encoding: [0x62,0xf1,0xf7,0x00,0x58,0x9a,0xf8,0xfb,0xff,0xff]
          vaddsd -1032(%rdx), %xmm17, %xmm3

// CHECK: vaddss %xmm19, %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xb1,0x56,0x08,0x58,0xfb]
          vaddss %xmm19, %xmm5, %xmm7

// CHECK: vaddss %xmm19, %xmm5, %xmm7 {%k2}
// CHECK:  encoding: [0x62,0xb1,0x56,0x0a,0x58,0xfb]
          vaddss %xmm19, %xmm5, %xmm7 {%k2}

// CHECK: vaddss %xmm19, %xmm5, %xmm7 {%k2} {z}
// CHECK:  encoding: [0x62,0xb1,0x56,0x8a,0x58,0xfb]
          vaddss %xmm19, %xmm5, %xmm7 {%k2} {z}

// CHECK: vaddss {rn-sae}, %xmm19, %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xb1,0x56,0x18,0x58,0xfb]
          vaddss {rn-sae}, %xmm19, %xmm5, %xmm7

// CHECK: vaddss {ru-sae}, %xmm19, %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xb1,0x56,0x58,0x58,0xfb]
          vaddss {ru-sae}, %xmm19, %xmm5, %xmm7

// CHECK: vaddss {rd-sae}, %xmm19, %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xb1,0x56,0x38,0x58,0xfb]
          vaddss {rd-sae}, %xmm19, %xmm5, %xmm7

// CHECK: vaddss {rz-sae}, %xmm19, %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xb1,0x56,0x78,0x58,0xfb]
          vaddss {rz-sae}, %xmm19, %xmm5, %xmm7

// CHECK: vaddss (%rcx), %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xf1,0x56,0x08,0x58,0x39]
          vaddss (%rcx), %xmm5, %xmm7

// CHECK: vaddss 291(%rax,%r14,8), %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xb1,0x56,0x08,0x58,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vaddss 291(%rax,%r14,8), %xmm5, %xmm7

// CHECK: vaddss 508(%rdx), %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xf1,0x56,0x08,0x58,0x7a,0x7f]
          vaddss 508(%rdx), %xmm5, %xmm7

// CHECK: vaddss 512(%rdx), %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xf1,0x56,0x08,0x58,0xba,0x00,0x02,0x00,0x00]
          vaddss 512(%rdx), %xmm5, %xmm7

// CHECK: vaddss -512(%rdx), %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xf1,0x56,0x08,0x58,0x7a,0x80]
          vaddss -512(%rdx), %xmm5, %xmm7

// CHECK: vaddss -516(%rdx), %xmm5, %xmm7
// CHECK:  encoding: [0x62,0xf1,0x56,0x08,0x58,0xba,0xfc,0xfd,0xff,0xff]
          vaddss -516(%rdx), %xmm5, %xmm7

// CHECK: vdivpd {rn-sae}, %zmm11, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xc1,0xcd,0x18,0x5e,0xd3]
          vdivpd {rn-sae}, %zmm11, %zmm6, %zmm18

// CHECK: vdivpd {ru-sae}, %zmm11, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xc1,0xcd,0x58,0x5e,0xd3]
          vdivpd {ru-sae}, %zmm11, %zmm6, %zmm18

// CHECK: vdivpd {rd-sae}, %zmm11, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xc1,0xcd,0x38,0x5e,0xd3]
          vdivpd {rd-sae}, %zmm11, %zmm6, %zmm18

// CHECK: vdivpd {rz-sae}, %zmm11, %zmm6, %zmm18
// CHECK:  encoding: [0x62,0xc1,0xcd,0x78,0x5e,0xd3]
          vdivpd {rz-sae}, %zmm11, %zmm6, %zmm18

// CHECK: vdivps {rn-sae}, %zmm28, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0x81,0x44,0x10,0x5e,0xfc]
          vdivps {rn-sae}, %zmm28, %zmm23, %zmm23

// CHECK: vdivps {ru-sae}, %zmm28, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0x81,0x44,0x50,0x5e,0xfc]
          vdivps {ru-sae}, %zmm28, %zmm23, %zmm23

// CHECK: vdivps {rd-sae}, %zmm28, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0x81,0x44,0x30,0x5e,0xfc]
          vdivps {rd-sae}, %zmm28, %zmm23, %zmm23

// CHECK: vdivps {rz-sae}, %zmm28, %zmm23, %zmm23
// CHECK:  encoding: [0x62,0x81,0x44,0x70,0x5e,0xfc]
          vdivps {rz-sae}, %zmm28, %zmm23, %zmm23

// CHECK: vdivsd %xmm22, %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x21,0x97,0x08,0x5e,0xee]
          vdivsd %xmm22, %xmm13, %xmm29

// CHECK: vdivsd %xmm22, %xmm13, %xmm29 {%k3}
// CHECK:  encoding: [0x62,0x21,0x97,0x0b,0x5e,0xee]
          vdivsd %xmm22, %xmm13, %xmm29 {%k3}

// CHECK: vdivsd %xmm22, %xmm13, %xmm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x97,0x8b,0x5e,0xee]
          vdivsd %xmm22, %xmm13, %xmm29 {%k3} {z}

// CHECK: vdivsd {rn-sae}, %xmm22, %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x21,0x97,0x18,0x5e,0xee]
          vdivsd {rn-sae}, %xmm22, %xmm13, %xmm29

// CHECK: vdivsd {ru-sae}, %xmm22, %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x21,0x97,0x58,0x5e,0xee]
          vdivsd {ru-sae}, %xmm22, %xmm13, %xmm29

// CHECK: vdivsd {rd-sae}, %xmm22, %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x21,0x97,0x38,0x5e,0xee]
          vdivsd {rd-sae}, %xmm22, %xmm13, %xmm29

// CHECK: vdivsd {rz-sae}, %xmm22, %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x21,0x97,0x78,0x5e,0xee]
          vdivsd {rz-sae}, %xmm22, %xmm13, %xmm29

// CHECK: vdivsd (%rcx), %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x61,0x97,0x08,0x5e,0x29]
          vdivsd (%rcx), %xmm13, %xmm29

// CHECK: vdivsd 291(%rax,%r14,8), %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x21,0x97,0x08,0x5e,0xac,0xf0,0x23,0x01,0x00,0x00]
          vdivsd 291(%rax,%r14,8), %xmm13, %xmm29

// CHECK: vdivsd 1016(%rdx), %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x61,0x97,0x08,0x5e,0x6a,0x7f]
          vdivsd 1016(%rdx), %xmm13, %xmm29

// CHECK: vdivsd 1024(%rdx), %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x61,0x97,0x08,0x5e,0xaa,0x00,0x04,0x00,0x00]
          vdivsd 1024(%rdx), %xmm13, %xmm29

// CHECK: vdivsd -1024(%rdx), %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x61,0x97,0x08,0x5e,0x6a,0x80]
          vdivsd -1024(%rdx), %xmm13, %xmm29

// CHECK: vdivsd -1032(%rdx), %xmm13, %xmm29
// CHECK:  encoding: [0x62,0x61,0x97,0x08,0x5e,0xaa,0xf8,0xfb,0xff,0xff]
          vdivsd -1032(%rdx), %xmm13, %xmm29

// CHECK: vdivss %xmm17, %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x4e,0x08,0x5e,0xe9]
          vdivss %xmm17, %xmm6, %xmm21

// CHECK: vdivss %xmm17, %xmm6, %xmm21 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x4e,0x0d,0x5e,0xe9]
          vdivss %xmm17, %xmm6, %xmm21 {%k5}

// CHECK: vdivss %xmm17, %xmm6, %xmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x4e,0x8d,0x5e,0xe9]
          vdivss %xmm17, %xmm6, %xmm21 {%k5} {z}

// CHECK: vdivss {rn-sae}, %xmm17, %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x4e,0x18,0x5e,0xe9]
          vdivss {rn-sae}, %xmm17, %xmm6, %xmm21

// CHECK: vdivss {ru-sae}, %xmm17, %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x4e,0x58,0x5e,0xe9]
          vdivss {ru-sae}, %xmm17, %xmm6, %xmm21

// CHECK: vdivss {rd-sae}, %xmm17, %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x4e,0x38,0x5e,0xe9]
          vdivss {rd-sae}, %xmm17, %xmm6, %xmm21

// CHECK: vdivss {rz-sae}, %xmm17, %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x4e,0x78,0x5e,0xe9]
          vdivss {rz-sae}, %xmm17, %xmm6, %xmm21

// CHECK: vdivss (%rcx), %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x4e,0x08,0x5e,0x29]
          vdivss (%rcx), %xmm6, %xmm21

// CHECK: vdivss 291(%rax,%r14,8), %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x4e,0x08,0x5e,0xac,0xf0,0x23,0x01,0x00,0x00]
          vdivss 291(%rax,%r14,8), %xmm6, %xmm21

// CHECK: vdivss 508(%rdx), %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x4e,0x08,0x5e,0x6a,0x7f]
          vdivss 508(%rdx), %xmm6, %xmm21

// CHECK: vdivss 512(%rdx), %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x4e,0x08,0x5e,0xaa,0x00,0x02,0x00,0x00]
          vdivss 512(%rdx), %xmm6, %xmm21

// CHECK: vdivss -512(%rdx), %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x4e,0x08,0x5e,0x6a,0x80]
          vdivss -512(%rdx), %xmm6, %xmm21

// CHECK: vdivss -516(%rdx), %xmm6, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x4e,0x08,0x5e,0xaa,0xfc,0xfd,0xff,0xff]
          vdivss -516(%rdx), %xmm6, %xmm21

// CHECK: vmaxpd {sae}, %zmm20, %zmm28, %zmm30
// CHECK:  encoding: [0x62,0x21,0x9d,0x10,0x5f,0xf4]
          vmaxpd {sae}, %zmm20, %zmm28, %zmm30

// CHECK: vmaxps {sae}, %zmm20, %zmm6, %zmm25
// CHECK:  encoding: [0x62,0x21,0x4c,0x18,0x5f,0xcc]
          vmaxps {sae}, %zmm20, %zmm6, %zmm25

// CHECK: vmaxsd %xmm25, %xmm19, %xmm20
// CHECK:  encoding: [0x62,0x81,0xe7,0x00,0x5f,0xe1]
          vmaxsd %xmm25, %xmm19, %xmm20

// CHECK: vmaxsd %xmm25, %xmm19, %xmm20 {%k3}
// CHECK:  encoding: [0x62,0x81,0xe7,0x03,0x5f,0xe1]
          vmaxsd %xmm25, %xmm19, %xmm20 {%k3}

// CHECK: vmaxsd %xmm25, %xmm19, %xmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0xe7,0x83,0x5f,0xe1]
          vmaxsd %xmm25, %xmm19, %xmm20 {%k3} {z}

// CHECK: vmaxsd {sae}, %xmm25, %xmm19, %xmm20
// CHECK:  encoding: [0x62,0x81,0xe7,0x10,0x5f,0xe1]
          vmaxsd {sae}, %xmm25, %xmm19, %xmm20

// CHECK: vmaxsd (%rcx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xe7,0x00,0x5f,0x21]
          vmaxsd (%rcx), %xmm19, %xmm20

// CHECK: vmaxsd 291(%rax,%r14,8), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xa1,0xe7,0x00,0x5f,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmaxsd 291(%rax,%r14,8), %xmm19, %xmm20

// CHECK: vmaxsd 1016(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xe7,0x00,0x5f,0x62,0x7f]
          vmaxsd 1016(%rdx), %xmm19, %xmm20

// CHECK: vmaxsd 1024(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xe7,0x00,0x5f,0xa2,0x00,0x04,0x00,0x00]
          vmaxsd 1024(%rdx), %xmm19, %xmm20

// CHECK: vmaxsd -1024(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xe7,0x00,0x5f,0x62,0x80]
          vmaxsd -1024(%rdx), %xmm19, %xmm20

// CHECK: vmaxsd -1032(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xe7,0x00,0x5f,0xa2,0xf8,0xfb,0xff,0xff]
          vmaxsd -1032(%rdx), %xmm19, %xmm20

// CHECK: vmaxss %xmm6, %xmm4, %xmm8
// CHECK:  encoding: [0xc5,0x5a,0x5f,0xc6]
          vmaxss %xmm6, %xmm4, %xmm8

// CHECK: vmaxss %xmm6, %xmm4, %xmm8 {%k4}
// CHECK:  encoding: [0x62,0x71,0x5e,0x0c,0x5f,0xc6]
          vmaxss %xmm6, %xmm4, %xmm8 {%k4}

// CHECK: vmaxss %xmm6, %xmm4, %xmm8 {%k4} {z}
// CHECK:  encoding: [0x62,0x71,0x5e,0x8c,0x5f,0xc6]
          vmaxss %xmm6, %xmm4, %xmm8 {%k4} {z}

// CHECK: vmaxss {sae}, %xmm6, %xmm4, %xmm8
// CHECK:  encoding: [0x62,0x71,0x5e,0x18,0x5f,0xc6]
          vmaxss {sae}, %xmm6, %xmm4, %xmm8

// CHECK: vmaxss (%rcx), %xmm4, %xmm8
// CHECK:  encoding: [0x62,0x71,0x5e,0x08,0x5f,0x01]
          vmaxss (%rcx), %xmm4, %xmm8

// CHECK: vmaxss 291(%rax,%r14,8), %xmm4, %xmm8
// CHECK:  encoding: [0x62,0x31,0x5e,0x08,0x5f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmaxss 291(%rax,%r14,8), %xmm4, %xmm8

// CHECK: vmaxss 508(%rdx), %xmm4, %xmm8
// CHECK:  encoding: [0x62,0x71,0x5e,0x08,0x5f,0x42,0x7f]
          vmaxss 508(%rdx), %xmm4, %xmm8

// CHECK: vmaxss 512(%rdx), %xmm4, %xmm8
// CHECK:  encoding: [0x62,0x71,0x5e,0x08,0x5f,0x82,0x00,0x02,0x00,0x00]
          vmaxss 512(%rdx), %xmm4, %xmm8

// CHECK: vmaxss -512(%rdx), %xmm4, %xmm8
// CHECK:  encoding: [0x62,0x71,0x5e,0x08,0x5f,0x42,0x80]
          vmaxss -512(%rdx), %xmm4, %xmm8

// CHECK: vmaxss -516(%rdx), %xmm4, %xmm8
// CHECK:  encoding: [0x62,0x71,0x5e,0x08,0x5f,0x82,0xfc,0xfd,0xff,0xff]
          vmaxss -516(%rdx), %xmm4, %xmm8

// CHECK: vminpd {sae}, %zmm22, %zmm6, %zmm6
// CHECK:  encoding: [0x62,0xb1,0xcd,0x18,0x5d,0xf6]
          vminpd {sae}, %zmm22, %zmm6, %zmm6

// CHECK: vminps {sae}, %zmm7, %zmm3, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x64,0x18,0x5d,0xdf]
          vminps {sae}, %zmm7, %zmm3, %zmm3

// CHECK: vminsd %xmm26, %xmm25, %xmm5
// CHECK:  encoding: [0x62,0x91,0xb7,0x00,0x5d,0xea]
          vminsd %xmm26, %xmm25, %xmm5

// CHECK: vminsd %xmm26, %xmm25, %xmm5 {%k3}
// CHECK:  encoding: [0x62,0x91,0xb7,0x03,0x5d,0xea]
          vminsd %xmm26, %xmm25, %xmm5 {%k3}

// CHECK: vminsd %xmm26, %xmm25, %xmm5 {%k3} {z}
// CHECK:  encoding: [0x62,0x91,0xb7,0x83,0x5d,0xea]
          vminsd %xmm26, %xmm25, %xmm5 {%k3} {z}

// CHECK: vminsd {sae}, %xmm26, %xmm25, %xmm5
// CHECK:  encoding: [0x62,0x91,0xb7,0x10,0x5d,0xea]
          vminsd {sae}, %xmm26, %xmm25, %xmm5

// CHECK: vminsd (%rcx), %xmm25, %xmm5
// CHECK:  encoding: [0x62,0xf1,0xb7,0x00,0x5d,0x29]
          vminsd (%rcx), %xmm25, %xmm5

// CHECK: vminsd 291(%rax,%r14,8), %xmm25, %xmm5
// CHECK:  encoding: [0x62,0xb1,0xb7,0x00,0x5d,0xac,0xf0,0x23,0x01,0x00,0x00]
          vminsd 291(%rax,%r14,8), %xmm25, %xmm5

// CHECK: vminsd 1016(%rdx), %xmm25, %xmm5
// CHECK:  encoding: [0x62,0xf1,0xb7,0x00,0x5d,0x6a,0x7f]
          vminsd 1016(%rdx), %xmm25, %xmm5

// CHECK: vminsd 1024(%rdx), %xmm25, %xmm5
// CHECK:  encoding: [0x62,0xf1,0xb7,0x00,0x5d,0xaa,0x00,0x04,0x00,0x00]
          vminsd 1024(%rdx), %xmm25, %xmm5

// CHECK: vminsd -1024(%rdx), %xmm25, %xmm5
// CHECK:  encoding: [0x62,0xf1,0xb7,0x00,0x5d,0x6a,0x80]
          vminsd -1024(%rdx), %xmm25, %xmm5

// CHECK: vminsd -1032(%rdx), %xmm25, %xmm5
// CHECK:  encoding: [0x62,0xf1,0xb7,0x00,0x5d,0xaa,0xf8,0xfb,0xff,0xff]
          vminsd -1032(%rdx), %xmm25, %xmm5

// CHECK: vminss %xmm19, %xmm17, %xmm10
// CHECK:  encoding: [0x62,0x31,0x76,0x00,0x5d,0xd3]
          vminss %xmm19, %xmm17, %xmm10

// CHECK: vminss %xmm19, %xmm17, %xmm10 {%k5}
// CHECK:  encoding: [0x62,0x31,0x76,0x05,0x5d,0xd3]
          vminss %xmm19, %xmm17, %xmm10 {%k5}

// CHECK: vminss %xmm19, %xmm17, %xmm10 {%k5} {z}
// CHECK:  encoding: [0x62,0x31,0x76,0x85,0x5d,0xd3]
          vminss %xmm19, %xmm17, %xmm10 {%k5} {z}

// CHECK: vminss {sae}, %xmm19, %xmm17, %xmm10
// CHECK:  encoding: [0x62,0x31,0x76,0x10,0x5d,0xd3]
          vminss {sae}, %xmm19, %xmm17, %xmm10

// CHECK: vminss (%rcx), %xmm17, %xmm10
// CHECK:  encoding: [0x62,0x71,0x76,0x00,0x5d,0x11]
          vminss (%rcx), %xmm17, %xmm10

// CHECK: vminss 291(%rax,%r14,8), %xmm17, %xmm10
// CHECK:  encoding: [0x62,0x31,0x76,0x00,0x5d,0x94,0xf0,0x23,0x01,0x00,0x00]
          vminss 291(%rax,%r14,8), %xmm17, %xmm10

// CHECK: vminss 508(%rdx), %xmm17, %xmm10
// CHECK:  encoding: [0x62,0x71,0x76,0x00,0x5d,0x52,0x7f]
          vminss 508(%rdx), %xmm17, %xmm10

// CHECK: vminss 512(%rdx), %xmm17, %xmm10
// CHECK:  encoding: [0x62,0x71,0x76,0x00,0x5d,0x92,0x00,0x02,0x00,0x00]
          vminss 512(%rdx), %xmm17, %xmm10

// CHECK: vminss -512(%rdx), %xmm17, %xmm10
// CHECK:  encoding: [0x62,0x71,0x76,0x00,0x5d,0x52,0x80]
          vminss -512(%rdx), %xmm17, %xmm10

// CHECK: vminss -516(%rdx), %xmm17, %xmm10
// CHECK:  encoding: [0x62,0x71,0x76,0x00,0x5d,0x92,0xfc,0xfd,0xff,0xff]
          vminss -516(%rdx), %xmm17, %xmm10

// CHECK: vmulpd {rn-sae}, %zmm23, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x21,0xdd,0x18,0x59,0xc7]
          vmulpd {rn-sae}, %zmm23, %zmm4, %zmm24

// CHECK: vmulpd {ru-sae}, %zmm23, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x21,0xdd,0x58,0x59,0xc7]
          vmulpd {ru-sae}, %zmm23, %zmm4, %zmm24

// CHECK: vmulpd {rd-sae}, %zmm23, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x21,0xdd,0x38,0x59,0xc7]
          vmulpd {rd-sae}, %zmm23, %zmm4, %zmm24

// CHECK: vmulpd {rz-sae}, %zmm23, %zmm4, %zmm24
// CHECK:  encoding: [0x62,0x21,0xdd,0x78,0x59,0xc7]
          vmulpd {rz-sae}, %zmm23, %zmm4, %zmm24

// CHECK: vmulps {rn-sae}, %zmm24, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0x91,0x4c,0x18,0x59,0xd8]
          vmulps {rn-sae}, %zmm24, %zmm6, %zmm3

// CHECK: vmulps {ru-sae}, %zmm24, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0x91,0x4c,0x58,0x59,0xd8]
          vmulps {ru-sae}, %zmm24, %zmm6, %zmm3

// CHECK: vmulps {rd-sae}, %zmm24, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0x91,0x4c,0x38,0x59,0xd8]
          vmulps {rd-sae}, %zmm24, %zmm6, %zmm3

// CHECK: vmulps {rz-sae}, %zmm24, %zmm6, %zmm3
// CHECK:  encoding: [0x62,0x91,0x4c,0x78,0x59,0xd8]
          vmulps {rz-sae}, %zmm24, %zmm6, %zmm3

// CHECK: vmulsd %xmm18, %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x31,0xdf,0x08,0x59,0xea]
          vmulsd %xmm18, %xmm4, %xmm13

// CHECK: vmulsd %xmm18, %xmm4, %xmm13 {%k2}
// CHECK:  encoding: [0x62,0x31,0xdf,0x0a,0x59,0xea]
          vmulsd %xmm18, %xmm4, %xmm13 {%k2}

// CHECK: vmulsd %xmm18, %xmm4, %xmm13 {%k2} {z}
// CHECK:  encoding: [0x62,0x31,0xdf,0x8a,0x59,0xea]
          vmulsd %xmm18, %xmm4, %xmm13 {%k2} {z}

// CHECK: vmulsd {rn-sae}, %xmm18, %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x31,0xdf,0x18,0x59,0xea]
          vmulsd {rn-sae}, %xmm18, %xmm4, %xmm13

// CHECK: vmulsd {ru-sae}, %xmm18, %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x31,0xdf,0x58,0x59,0xea]
          vmulsd {ru-sae}, %xmm18, %xmm4, %xmm13

// CHECK: vmulsd {rd-sae}, %xmm18, %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x31,0xdf,0x38,0x59,0xea]
          vmulsd {rd-sae}, %xmm18, %xmm4, %xmm13

// CHECK: vmulsd {rz-sae}, %xmm18, %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x31,0xdf,0x78,0x59,0xea]
          vmulsd {rz-sae}, %xmm18, %xmm4, %xmm13

// CHECK: vmulsd (%rcx), %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x71,0xdf,0x08,0x59,0x29]
          vmulsd (%rcx), %xmm4, %xmm13

// CHECK: vmulsd 291(%rax,%r14,8), %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x31,0xdf,0x08,0x59,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmulsd 291(%rax,%r14,8), %xmm4, %xmm13

// CHECK: vmulsd 1016(%rdx), %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x71,0xdf,0x08,0x59,0x6a,0x7f]
          vmulsd 1016(%rdx), %xmm4, %xmm13

// CHECK: vmulsd 1024(%rdx), %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x71,0xdf,0x08,0x59,0xaa,0x00,0x04,0x00,0x00]
          vmulsd 1024(%rdx), %xmm4, %xmm13

// CHECK: vmulsd -1024(%rdx), %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x71,0xdf,0x08,0x59,0x6a,0x80]
          vmulsd -1024(%rdx), %xmm4, %xmm13

// CHECK: vmulsd -1032(%rdx), %xmm4, %xmm13
// CHECK:  encoding: [0x62,0x71,0xdf,0x08,0x59,0xaa,0xf8,0xfb,0xff,0xff]
          vmulsd -1032(%rdx), %xmm4, %xmm13

// CHECK: vmulss %xmm14, %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xc1,0x2e,0x08,0x59,0xf6]
          vmulss %xmm14, %xmm10, %xmm22

// CHECK: vmulss %xmm14, %xmm10, %xmm22 {%k4}
// CHECK:  encoding: [0x62,0xc1,0x2e,0x0c,0x59,0xf6]
          vmulss %xmm14, %xmm10, %xmm22 {%k4}

// CHECK: vmulss %xmm14, %xmm10, %xmm22 {%k4} {z}
// CHECK:  encoding: [0x62,0xc1,0x2e,0x8c,0x59,0xf6]
          vmulss %xmm14, %xmm10, %xmm22 {%k4} {z}

// CHECK: vmulss {rn-sae}, %xmm14, %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xc1,0x2e,0x18,0x59,0xf6]
          vmulss {rn-sae}, %xmm14, %xmm10, %xmm22

// CHECK: vmulss {ru-sae}, %xmm14, %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xc1,0x2e,0x58,0x59,0xf6]
          vmulss {ru-sae}, %xmm14, %xmm10, %xmm22

// CHECK: vmulss {rd-sae}, %xmm14, %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xc1,0x2e,0x38,0x59,0xf6]
          vmulss {rd-sae}, %xmm14, %xmm10, %xmm22

// CHECK: vmulss {rz-sae}, %xmm14, %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xc1,0x2e,0x78,0x59,0xf6]
          vmulss {rz-sae}, %xmm14, %xmm10, %xmm22

// CHECK: vmulss (%rcx), %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x2e,0x08,0x59,0x31]
          vmulss (%rcx), %xmm10, %xmm22

// CHECK: vmulss 291(%rax,%r14,8), %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x2e,0x08,0x59,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmulss 291(%rax,%r14,8), %xmm10, %xmm22

// CHECK: vmulss 508(%rdx), %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x2e,0x08,0x59,0x72,0x7f]
          vmulss 508(%rdx), %xmm10, %xmm22

// CHECK: vmulss 512(%rdx), %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x2e,0x08,0x59,0xb2,0x00,0x02,0x00,0x00]
          vmulss 512(%rdx), %xmm10, %xmm22

// CHECK: vmulss -512(%rdx), %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x2e,0x08,0x59,0x72,0x80]
          vmulss -512(%rdx), %xmm10, %xmm22

// CHECK: vmulss -516(%rdx), %xmm10, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x2e,0x08,0x59,0xb2,0xfc,0xfd,0xff,0xff]
          vmulss -516(%rdx), %xmm10, %xmm22

// CHECK: vpslld %xmm3, %zmm6, %zmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x48,0xf2,0xcb]
          vpslld %xmm3, %zmm6, %zmm17

// CHECK: vpslld %xmm3, %zmm6, %zmm17 {%k3}
// CHECK:  encoding: [0x62,0xe1,0x4d,0x4b,0xf2,0xcb]
          vpslld %xmm3, %zmm6, %zmm17 {%k3}

// CHECK: vpslld %xmm3, %zmm6, %zmm17 {%k3} {z}
// CHECK:  encoding: [0x62,0xe1,0x4d,0xcb,0xf2,0xcb]
          vpslld %xmm3, %zmm6, %zmm17 {%k3} {z}

// CHECK: vpslld (%rcx), %zmm6, %zmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x48,0xf2,0x09]
          vpslld (%rcx), %zmm6, %zmm17

// CHECK: vpslld 291(%rax,%r14,8), %zmm6, %zmm17
// CHECK:  encoding: [0x62,0xa1,0x4d,0x48,0xf2,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpslld 291(%rax,%r14,8), %zmm6, %zmm17

// CHECK: vpslld 2032(%rdx), %zmm6, %zmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x48,0xf2,0x4a,0x7f]
          vpslld 2032(%rdx), %zmm6, %zmm17

// CHECK: vpslld 2048(%rdx), %zmm6, %zmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x48,0xf2,0x8a,0x00,0x08,0x00,0x00]
          vpslld 2048(%rdx), %zmm6, %zmm17

// CHECK: vpslld -2048(%rdx), %zmm6, %zmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x48,0xf2,0x4a,0x80]
          vpslld -2048(%rdx), %zmm6, %zmm17

// CHECK: vpslld -2064(%rdx), %zmm6, %zmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x48,0xf2,0x8a,0xf0,0xf7,0xff,0xff]
          vpslld -2064(%rdx), %zmm6, %zmm17

// CHECK: vpsllq %xmm23, %zmm17, %zmm26
// CHECK:  encoding: [0x62,0x21,0xf5,0x40,0xf3,0xd7]
          vpsllq %xmm23, %zmm17, %zmm26

// CHECK: vpsllq %xmm23, %zmm17, %zmm26 {%k6}
// CHECK:  encoding: [0x62,0x21,0xf5,0x46,0xf3,0xd7]
          vpsllq %xmm23, %zmm17, %zmm26 {%k6}

// CHECK: vpsllq %xmm23, %zmm17, %zmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xf5,0xc6,0xf3,0xd7]
          vpsllq %xmm23, %zmm17, %zmm26 {%k6} {z}

// CHECK: vpsllq (%rcx), %zmm17, %zmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x40,0xf3,0x11]
          vpsllq (%rcx), %zmm17, %zmm26

// CHECK: vpsllq 291(%rax,%r14,8), %zmm17, %zmm26
// CHECK:  encoding: [0x62,0x21,0xf5,0x40,0xf3,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpsllq 291(%rax,%r14,8), %zmm17, %zmm26

// CHECK: vpsllq 2032(%rdx), %zmm17, %zmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x40,0xf3,0x52,0x7f]
          vpsllq 2032(%rdx), %zmm17, %zmm26

// CHECK: vpsllq 2048(%rdx), %zmm17, %zmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x40,0xf3,0x92,0x00,0x08,0x00,0x00]
          vpsllq 2048(%rdx), %zmm17, %zmm26

// CHECK: vpsllq -2048(%rdx), %zmm17, %zmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x40,0xf3,0x52,0x80]
          vpsllq -2048(%rdx), %zmm17, %zmm26

// CHECK: vpsllq -2064(%rdx), %zmm17, %zmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x40,0xf3,0x92,0xf0,0xf7,0xff,0xff]
          vpsllq -2064(%rdx), %zmm17, %zmm26

// CHECK: vpsllvd %zmm22, %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x32,0x1d,0x48,0x47,0xd6]
          vpsllvd %zmm22, %zmm12, %zmm10

// CHECK: vpsllvd %zmm22, %zmm12, %zmm10 {%k6}
// CHECK:  encoding: [0x62,0x32,0x1d,0x4e,0x47,0xd6]
          vpsllvd %zmm22, %zmm12, %zmm10 {%k6}

// CHECK: vpsllvd %zmm22, %zmm12, %zmm10 {%k6} {z}
// CHECK:  encoding: [0x62,0x32,0x1d,0xce,0x47,0xd6]
          vpsllvd %zmm22, %zmm12, %zmm10 {%k6} {z}

// CHECK: vpsllvd (%rcx), %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x48,0x47,0x11]
          vpsllvd (%rcx), %zmm12, %zmm10

// CHECK: vpsllvd 291(%rax,%r14,8), %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x32,0x1d,0x48,0x47,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpsllvd 291(%rax,%r14,8), %zmm12, %zmm10

// CHECK: vpsllvd (%rcx){1to16}, %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x58,0x47,0x11]
          vpsllvd (%rcx){1to16}, %zmm12, %zmm10

// CHECK: vpsllvd 8128(%rdx), %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x48,0x47,0x52,0x7f]
          vpsllvd 8128(%rdx), %zmm12, %zmm10

// CHECK: vpsllvd 8192(%rdx), %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x48,0x47,0x92,0x00,0x20,0x00,0x00]
          vpsllvd 8192(%rdx), %zmm12, %zmm10

// CHECK: vpsllvd -8192(%rdx), %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x48,0x47,0x52,0x80]
          vpsllvd -8192(%rdx), %zmm12, %zmm10

// CHECK: vpsllvd -8256(%rdx), %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x48,0x47,0x92,0xc0,0xdf,0xff,0xff]
          vpsllvd -8256(%rdx), %zmm12, %zmm10

// CHECK: vpsllvd 508(%rdx){1to16}, %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x58,0x47,0x52,0x7f]
          vpsllvd 508(%rdx){1to16}, %zmm12, %zmm10

// CHECK: vpsllvd 512(%rdx){1to16}, %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x58,0x47,0x92,0x00,0x02,0x00,0x00]
          vpsllvd 512(%rdx){1to16}, %zmm12, %zmm10

// CHECK: vpsllvd -512(%rdx){1to16}, %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x58,0x47,0x52,0x80]
          vpsllvd -512(%rdx){1to16}, %zmm12, %zmm10

// CHECK: vpsllvd -516(%rdx){1to16}, %zmm12, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x58,0x47,0x92,0xfc,0xfd,0xff,0xff]
          vpsllvd -516(%rdx){1to16}, %zmm12, %zmm10

// CHECK: vpsllvq %zmm26, %zmm5, %zmm16
// CHECK:  encoding: [0x62,0x82,0xd5,0x48,0x47,0xc2]
          vpsllvq %zmm26, %zmm5, %zmm16

// CHECK: vpsllvq %zmm26, %zmm5, %zmm16 {%k5}
// CHECK:  encoding: [0x62,0x82,0xd5,0x4d,0x47,0xc2]
          vpsllvq %zmm26, %zmm5, %zmm16 {%k5}

// CHECK: vpsllvq %zmm26, %zmm5, %zmm16 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0xd5,0xcd,0x47,0xc2]
          vpsllvq %zmm26, %zmm5, %zmm16 {%k5} {z}

// CHECK: vpsllvq (%rcx), %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x47,0x01]
          vpsllvq (%rcx), %zmm5, %zmm16

// CHECK: vpsllvq 291(%rax,%r14,8), %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xa2,0xd5,0x48,0x47,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpsllvq 291(%rax,%r14,8), %zmm5, %zmm16

// CHECK: vpsllvq (%rcx){1to8}, %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x47,0x01]
          vpsllvq (%rcx){1to8}, %zmm5, %zmm16

// CHECK: vpsllvq 8128(%rdx), %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x47,0x42,0x7f]
          vpsllvq 8128(%rdx), %zmm5, %zmm16

// CHECK: vpsllvq 8192(%rdx), %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x47,0x82,0x00,0x20,0x00,0x00]
          vpsllvq 8192(%rdx), %zmm5, %zmm16

// CHECK: vpsllvq -8192(%rdx), %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x47,0x42,0x80]
          vpsllvq -8192(%rdx), %zmm5, %zmm16

// CHECK: vpsllvq -8256(%rdx), %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x47,0x82,0xc0,0xdf,0xff,0xff]
          vpsllvq -8256(%rdx), %zmm5, %zmm16

// CHECK: vpsllvq 1016(%rdx){1to8}, %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x47,0x42,0x7f]
          vpsllvq 1016(%rdx){1to8}, %zmm5, %zmm16

// CHECK: vpsllvq 1024(%rdx){1to8}, %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x47,0x82,0x00,0x04,0x00,0x00]
          vpsllvq 1024(%rdx){1to8}, %zmm5, %zmm16

// CHECK: vpsllvq -1024(%rdx){1to8}, %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x47,0x42,0x80]
          vpsllvq -1024(%rdx){1to8}, %zmm5, %zmm16

// CHECK: vpsllvq -1032(%rdx){1to8}, %zmm5, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x47,0x82,0xf8,0xfb,0xff,0xff]
          vpsllvq -1032(%rdx){1to8}, %zmm5, %zmm16

// CHECK: vpsrad %xmm6, %zmm14, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x0d,0x48,0xe2,0xd6]
          vpsrad %xmm6, %zmm14, %zmm18

// CHECK: vpsrad %xmm6, %zmm14, %zmm18 {%k1}
// CHECK:  encoding: [0x62,0xe1,0x0d,0x49,0xe2,0xd6]
          vpsrad %xmm6, %zmm14, %zmm18 {%k1}

// CHECK: vpsrad %xmm6, %zmm14, %zmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xe1,0x0d,0xc9,0xe2,0xd6]
          vpsrad %xmm6, %zmm14, %zmm18 {%k1} {z}

// CHECK: vpsrad (%rcx), %zmm14, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x0d,0x48,0xe2,0x11]
          vpsrad (%rcx), %zmm14, %zmm18

// CHECK: vpsrad 291(%rax,%r14,8), %zmm14, %zmm18
// CHECK:  encoding: [0x62,0xa1,0x0d,0x48,0xe2,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpsrad 291(%rax,%r14,8), %zmm14, %zmm18

// CHECK: vpsrad 2032(%rdx), %zmm14, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x0d,0x48,0xe2,0x52,0x7f]
          vpsrad 2032(%rdx), %zmm14, %zmm18

// CHECK: vpsrad 2048(%rdx), %zmm14, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x0d,0x48,0xe2,0x92,0x00,0x08,0x00,0x00]
          vpsrad 2048(%rdx), %zmm14, %zmm18

// CHECK: vpsrad -2048(%rdx), %zmm14, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x0d,0x48,0xe2,0x52,0x80]
          vpsrad -2048(%rdx), %zmm14, %zmm18

// CHECK: vpsrad -2064(%rdx), %zmm14, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x0d,0x48,0xe2,0x92,0xf0,0xf7,0xff,0xff]
          vpsrad -2064(%rdx), %zmm14, %zmm18

// CHECK: vpsraq %xmm22, %zmm17, %zmm21
// CHECK:  encoding: [0x62,0xa1,0xf5,0x40,0xe2,0xee]
          vpsraq %xmm22, %zmm17, %zmm21

// CHECK: vpsraq %xmm22, %zmm17, %zmm21 {%k3}
// CHECK:  encoding: [0x62,0xa1,0xf5,0x43,0xe2,0xee]
          vpsraq %xmm22, %zmm17, %zmm21 {%k3}

// CHECK: vpsraq %xmm22, %zmm17, %zmm21 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0xf5,0xc3,0xe2,0xee]
          vpsraq %xmm22, %zmm17, %zmm21 {%k3} {z}

// CHECK: vpsraq (%rcx), %zmm17, %zmm21
// CHECK:  encoding: [0x62,0xe1,0xf5,0x40,0xe2,0x29]
          vpsraq (%rcx), %zmm17, %zmm21

// CHECK: vpsraq 291(%rax,%r14,8), %zmm17, %zmm21
// CHECK:  encoding: [0x62,0xa1,0xf5,0x40,0xe2,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpsraq 291(%rax,%r14,8), %zmm17, %zmm21

// CHECK: vpsraq 2032(%rdx), %zmm17, %zmm21
// CHECK:  encoding: [0x62,0xe1,0xf5,0x40,0xe2,0x6a,0x7f]
          vpsraq 2032(%rdx), %zmm17, %zmm21

// CHECK: vpsraq 2048(%rdx), %zmm17, %zmm21
// CHECK:  encoding: [0x62,0xe1,0xf5,0x40,0xe2,0xaa,0x00,0x08,0x00,0x00]
          vpsraq 2048(%rdx), %zmm17, %zmm21

// CHECK: vpsraq -2048(%rdx), %zmm17, %zmm21
// CHECK:  encoding: [0x62,0xe1,0xf5,0x40,0xe2,0x6a,0x80]
          vpsraq -2048(%rdx), %zmm17, %zmm21

// CHECK: vpsraq -2064(%rdx), %zmm17, %zmm21
// CHECK:  encoding: [0x62,0xe1,0xf5,0x40,0xe2,0xaa,0xf0,0xf7,0xff,0xff]
          vpsraq -2064(%rdx), %zmm17, %zmm21

// CHECK: vpsravd %zmm17, %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x22,0x15,0x40,0x46,0xe9]
          vpsravd %zmm17, %zmm29, %zmm29

// CHECK: vpsravd %zmm17, %zmm29, %zmm29 {%k2}
// CHECK:  encoding: [0x62,0x22,0x15,0x42,0x46,0xe9]
          vpsravd %zmm17, %zmm29, %zmm29 {%k2}

// CHECK: vpsravd %zmm17, %zmm29, %zmm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x15,0xc2,0x46,0xe9]
          vpsravd %zmm17, %zmm29, %zmm29 {%k2} {z}

// CHECK: vpsravd (%rcx), %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x40,0x46,0x29]
          vpsravd (%rcx), %zmm29, %zmm29

// CHECK: vpsravd 291(%rax,%r14,8), %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x22,0x15,0x40,0x46,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpsravd 291(%rax,%r14,8), %zmm29, %zmm29

// CHECK: vpsravd (%rcx){1to16}, %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x50,0x46,0x29]
          vpsravd (%rcx){1to16}, %zmm29, %zmm29

// CHECK: vpsravd 8128(%rdx), %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x40,0x46,0x6a,0x7f]
          vpsravd 8128(%rdx), %zmm29, %zmm29

// CHECK: vpsravd 8192(%rdx), %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x40,0x46,0xaa,0x00,0x20,0x00,0x00]
          vpsravd 8192(%rdx), %zmm29, %zmm29

// CHECK: vpsravd -8192(%rdx), %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x40,0x46,0x6a,0x80]
          vpsravd -8192(%rdx), %zmm29, %zmm29

// CHECK: vpsravd -8256(%rdx), %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x40,0x46,0xaa,0xc0,0xdf,0xff,0xff]
          vpsravd -8256(%rdx), %zmm29, %zmm29

// CHECK: vpsravd 508(%rdx){1to16}, %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x50,0x46,0x6a,0x7f]
          vpsravd 508(%rdx){1to16}, %zmm29, %zmm29

// CHECK: vpsravd 512(%rdx){1to16}, %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x50,0x46,0xaa,0x00,0x02,0x00,0x00]
          vpsravd 512(%rdx){1to16}, %zmm29, %zmm29

// CHECK: vpsravd -512(%rdx){1to16}, %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x50,0x46,0x6a,0x80]
          vpsravd -512(%rdx){1to16}, %zmm29, %zmm29

// CHECK: vpsravd -516(%rdx){1to16}, %zmm29, %zmm29
// CHECK:  encoding: [0x62,0x62,0x15,0x50,0x46,0xaa,0xfc,0xfd,0xff,0xff]
          vpsravd -516(%rdx){1to16}, %zmm29, %zmm29

// CHECK: vpsravq %zmm2, %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x40,0x46,0xf2]
          vpsravq %zmm2, %zmm20, %zmm22

// CHECK: vpsravq %zmm2, %zmm20, %zmm22 {%k2}
// CHECK:  encoding: [0x62,0xe2,0xdd,0x42,0x46,0xf2]
          vpsravq %zmm2, %zmm20, %zmm22 {%k2}

// CHECK: vpsravq %zmm2, %zmm20, %zmm22 {%k2} {z}
// CHECK:  encoding: [0x62,0xe2,0xdd,0xc2,0x46,0xf2]
          vpsravq %zmm2, %zmm20, %zmm22 {%k2} {z}

// CHECK: vpsravq (%rcx), %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x40,0x46,0x31]
          vpsravq (%rcx), %zmm20, %zmm22

// CHECK: vpsravq 291(%rax,%r14,8), %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xa2,0xdd,0x40,0x46,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsravq 291(%rax,%r14,8), %zmm20, %zmm22

// CHECK: vpsravq (%rcx){1to8}, %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x50,0x46,0x31]
          vpsravq (%rcx){1to8}, %zmm20, %zmm22

// CHECK: vpsravq 8128(%rdx), %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x40,0x46,0x72,0x7f]
          vpsravq 8128(%rdx), %zmm20, %zmm22

// CHECK: vpsravq 8192(%rdx), %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x40,0x46,0xb2,0x00,0x20,0x00,0x00]
          vpsravq 8192(%rdx), %zmm20, %zmm22

// CHECK: vpsravq -8192(%rdx), %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x40,0x46,0x72,0x80]
          vpsravq -8192(%rdx), %zmm20, %zmm22

// CHECK: vpsravq -8256(%rdx), %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x40,0x46,0xb2,0xc0,0xdf,0xff,0xff]
          vpsravq -8256(%rdx), %zmm20, %zmm22

// CHECK: vpsravq 1016(%rdx){1to8}, %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x50,0x46,0x72,0x7f]
          vpsravq 1016(%rdx){1to8}, %zmm20, %zmm22

// CHECK: vpsravq 1024(%rdx){1to8}, %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x50,0x46,0xb2,0x00,0x04,0x00,0x00]
          vpsravq 1024(%rdx){1to8}, %zmm20, %zmm22

// CHECK: vpsravq -1024(%rdx){1to8}, %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x50,0x46,0x72,0x80]
          vpsravq -1024(%rdx){1to8}, %zmm20, %zmm22

// CHECK: vpsravq -1032(%rdx){1to8}, %zmm20, %zmm22
// CHECK:  encoding: [0x62,0xe2,0xdd,0x50,0x46,0xb2,0xf8,0xfb,0xff,0xff]
          vpsravq -1032(%rdx){1to8}, %zmm20, %zmm22

// CHECK: vpsrld %xmm25, %zmm17, %zmm1
// CHECK:  encoding: [0x62,0x91,0x75,0x40,0xd2,0xc9]
          vpsrld %xmm25, %zmm17, %zmm1

// CHECK: vpsrld %xmm25, %zmm17, %zmm1 {%k4}
// CHECK:  encoding: [0x62,0x91,0x75,0x44,0xd2,0xc9]
          vpsrld %xmm25, %zmm17, %zmm1 {%k4}

// CHECK: vpsrld %xmm25, %zmm17, %zmm1 {%k4} {z}
// CHECK:  encoding: [0x62,0x91,0x75,0xc4,0xd2,0xc9]
          vpsrld %xmm25, %zmm17, %zmm1 {%k4} {z}

// CHECK: vpsrld (%rcx), %zmm17, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x75,0x40,0xd2,0x09]
          vpsrld (%rcx), %zmm17, %zmm1

// CHECK: vpsrld 291(%rax,%r14,8), %zmm17, %zmm1
// CHECK:  encoding: [0x62,0xb1,0x75,0x40,0xd2,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsrld 291(%rax,%r14,8), %zmm17, %zmm1

// CHECK: vpsrld 2032(%rdx), %zmm17, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x75,0x40,0xd2,0x4a,0x7f]
          vpsrld 2032(%rdx), %zmm17, %zmm1

// CHECK: vpsrld 2048(%rdx), %zmm17, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x75,0x40,0xd2,0x8a,0x00,0x08,0x00,0x00]
          vpsrld 2048(%rdx), %zmm17, %zmm1

// CHECK: vpsrld -2048(%rdx), %zmm17, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x75,0x40,0xd2,0x4a,0x80]
          vpsrld -2048(%rdx), %zmm17, %zmm1

// CHECK: vpsrld -2064(%rdx), %zmm17, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x75,0x40,0xd2,0x8a,0xf0,0xf7,0xff,0xff]
          vpsrld -2064(%rdx), %zmm17, %zmm1

// CHECK: vpsrlq %xmm3, %zmm11, %zmm9
// CHECK:  encoding: [0x62,0x71,0xa5,0x48,0xd3,0xcb]
          vpsrlq %xmm3, %zmm11, %zmm9

// CHECK: vpsrlq %xmm3, %zmm11, %zmm9 {%k5}
// CHECK:  encoding: [0x62,0x71,0xa5,0x4d,0xd3,0xcb]
          vpsrlq %xmm3, %zmm11, %zmm9 {%k5}

// CHECK: vpsrlq %xmm3, %zmm11, %zmm9 {%k5} {z}
// CHECK:  encoding: [0x62,0x71,0xa5,0xcd,0xd3,0xcb]
          vpsrlq %xmm3, %zmm11, %zmm9 {%k5} {z}

// CHECK: vpsrlq (%rcx), %zmm11, %zmm9
// CHECK:  encoding: [0x62,0x71,0xa5,0x48,0xd3,0x09]
          vpsrlq (%rcx), %zmm11, %zmm9

// CHECK: vpsrlq 291(%rax,%r14,8), %zmm11, %zmm9
// CHECK:  encoding: [0x62,0x31,0xa5,0x48,0xd3,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsrlq 291(%rax,%r14,8), %zmm11, %zmm9

// CHECK: vpsrlq 2032(%rdx), %zmm11, %zmm9
// CHECK:  encoding: [0x62,0x71,0xa5,0x48,0xd3,0x4a,0x7f]
          vpsrlq 2032(%rdx), %zmm11, %zmm9

// CHECK: vpsrlq 2048(%rdx), %zmm11, %zmm9
// CHECK:  encoding: [0x62,0x71,0xa5,0x48,0xd3,0x8a,0x00,0x08,0x00,0x00]
          vpsrlq 2048(%rdx), %zmm11, %zmm9

// CHECK: vpsrlq -2048(%rdx), %zmm11, %zmm9
// CHECK:  encoding: [0x62,0x71,0xa5,0x48,0xd3,0x4a,0x80]
          vpsrlq -2048(%rdx), %zmm11, %zmm9

// CHECK: vpsrlq -2064(%rdx), %zmm11, %zmm9
// CHECK:  encoding: [0x62,0x71,0xa5,0x48,0xd3,0x8a,0xf0,0xf7,0xff,0xff]
          vpsrlq -2064(%rdx), %zmm11, %zmm9

// CHECK: vpsrlvd %zmm28, %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x12,0x0d,0x48,0x45,0xc4]
          vpsrlvd %zmm28, %zmm14, %zmm8

// CHECK: vpsrlvd %zmm28, %zmm14, %zmm8 {%k4}
// CHECK:  encoding: [0x62,0x12,0x0d,0x4c,0x45,0xc4]
          vpsrlvd %zmm28, %zmm14, %zmm8 {%k4}

// CHECK: vpsrlvd %zmm28, %zmm14, %zmm8 {%k4} {z}
// CHECK:  encoding: [0x62,0x12,0x0d,0xcc,0x45,0xc4]
          vpsrlvd %zmm28, %zmm14, %zmm8 {%k4} {z}

// CHECK: vpsrlvd (%rcx), %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x48,0x45,0x01]
          vpsrlvd (%rcx), %zmm14, %zmm8

// CHECK: vpsrlvd 291(%rax,%r14,8), %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x32,0x0d,0x48,0x45,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpsrlvd 291(%rax,%r14,8), %zmm14, %zmm8

// CHECK: vpsrlvd (%rcx){1to16}, %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x58,0x45,0x01]
          vpsrlvd (%rcx){1to16}, %zmm14, %zmm8

// CHECK: vpsrlvd 8128(%rdx), %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x48,0x45,0x42,0x7f]
          vpsrlvd 8128(%rdx), %zmm14, %zmm8

// CHECK: vpsrlvd 8192(%rdx), %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x48,0x45,0x82,0x00,0x20,0x00,0x00]
          vpsrlvd 8192(%rdx), %zmm14, %zmm8

// CHECK: vpsrlvd -8192(%rdx), %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x48,0x45,0x42,0x80]
          vpsrlvd -8192(%rdx), %zmm14, %zmm8

// CHECK: vpsrlvd -8256(%rdx), %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x48,0x45,0x82,0xc0,0xdf,0xff,0xff]
          vpsrlvd -8256(%rdx), %zmm14, %zmm8

// CHECK: vpsrlvd 508(%rdx){1to16}, %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x58,0x45,0x42,0x7f]
          vpsrlvd 508(%rdx){1to16}, %zmm14, %zmm8

// CHECK: vpsrlvd 512(%rdx){1to16}, %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x58,0x45,0x82,0x00,0x02,0x00,0x00]
          vpsrlvd 512(%rdx){1to16}, %zmm14, %zmm8

// CHECK: vpsrlvd -512(%rdx){1to16}, %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x58,0x45,0x42,0x80]
          vpsrlvd -512(%rdx){1to16}, %zmm14, %zmm8

// CHECK: vpsrlvd -516(%rdx){1to16}, %zmm14, %zmm8
// CHECK:  encoding: [0x62,0x72,0x0d,0x58,0x45,0x82,0xfc,0xfd,0xff,0xff]
          vpsrlvd -516(%rdx){1to16}, %zmm14, %zmm8

// CHECK: vpsrlvq %zmm26, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0x82,0xc5,0x48,0x45,0xe2]
          vpsrlvq %zmm26, %zmm7, %zmm20

// CHECK: vpsrlvq %zmm26, %zmm7, %zmm20 {%k5}
// CHECK:  encoding: [0x62,0x82,0xc5,0x4d,0x45,0xe2]
          vpsrlvq %zmm26, %zmm7, %zmm20 {%k5}

// CHECK: vpsrlvq %zmm26, %zmm7, %zmm20 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0xc5,0xcd,0x45,0xe2]
          vpsrlvq %zmm26, %zmm7, %zmm20 {%k5} {z}

// CHECK: vpsrlvq (%rcx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x48,0x45,0x21]
          vpsrlvq (%rcx), %zmm7, %zmm20

// CHECK: vpsrlvq 291(%rax,%r14,8), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xc5,0x48,0x45,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlvq 291(%rax,%r14,8), %zmm7, %zmm20

// CHECK: vpsrlvq (%rcx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x58,0x45,0x21]
          vpsrlvq (%rcx){1to8}, %zmm7, %zmm20

// CHECK: vpsrlvq 8128(%rdx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x48,0x45,0x62,0x7f]
          vpsrlvq 8128(%rdx), %zmm7, %zmm20

// CHECK: vpsrlvq 8192(%rdx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x48,0x45,0xa2,0x00,0x20,0x00,0x00]
          vpsrlvq 8192(%rdx), %zmm7, %zmm20

// CHECK: vpsrlvq -8192(%rdx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x48,0x45,0x62,0x80]
          vpsrlvq -8192(%rdx), %zmm7, %zmm20

// CHECK: vpsrlvq -8256(%rdx), %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x48,0x45,0xa2,0xc0,0xdf,0xff,0xff]
          vpsrlvq -8256(%rdx), %zmm7, %zmm20

// CHECK: vpsrlvq 1016(%rdx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x58,0x45,0x62,0x7f]
          vpsrlvq 1016(%rdx){1to8}, %zmm7, %zmm20

// CHECK: vpsrlvq 1024(%rdx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x58,0x45,0xa2,0x00,0x04,0x00,0x00]
          vpsrlvq 1024(%rdx){1to8}, %zmm7, %zmm20

// CHECK: vpsrlvq -1024(%rdx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x58,0x45,0x62,0x80]
          vpsrlvq -1024(%rdx){1to8}, %zmm7, %zmm20

// CHECK: vpsrlvq -1032(%rdx){1to8}, %zmm7, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xc5,0x58,0x45,0xa2,0xf8,0xfb,0xff,0xff]
          vpsrlvq -1032(%rdx){1to8}, %zmm7, %zmm20

// CHECK: vpsrld $171, %zmm5, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x48,0x72,0xd5,0xab]
          vpsrld $171, %zmm5, %zmm3

// CHECK: vpsrld $171, %zmm5, %zmm3 {%k4}
// CHECK:  encoding: [0x62,0xf1,0x65,0x4c,0x72,0xd5,0xab]
          vpsrld $171, %zmm5, %zmm3 {%k4}

// CHECK: vpsrld $171, %zmm5, %zmm3 {%k4} {z}
// CHECK:  encoding: [0x62,0xf1,0x65,0xcc,0x72,0xd5,0xab]
          vpsrld $171, %zmm5, %zmm3 {%k4} {z}

// CHECK: vpsrld $123, %zmm5, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x48,0x72,0xd5,0x7b]
          vpsrld $123, %zmm5, %zmm3

// CHECK: vpsrld $123, (%rcx), %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x48,0x72,0x11,0x7b]
          vpsrld $123, (%rcx), %zmm3

// CHECK: vpsrld $123, 291(%rax,%r14,8), %zmm3
// CHECK:  encoding: [0x62,0xb1,0x65,0x48,0x72,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrld $123, 291(%rax,%r14,8), %zmm3

// CHECK: vpsrld $123, (%rcx){1to16}, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x58,0x72,0x11,0x7b]
          vpsrld $123, (%rcx){1to16}, %zmm3

// CHECK: vpsrld $123, 8128(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x48,0x72,0x52,0x7f,0x7b]
          vpsrld $123, 8128(%rdx), %zmm3

// CHECK: vpsrld $123, 8192(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x48,0x72,0x92,0x00,0x20,0x00,0x00,0x7b]
          vpsrld $123, 8192(%rdx), %zmm3

// CHECK: vpsrld $123, -8192(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x48,0x72,0x52,0x80,0x7b]
          vpsrld $123, -8192(%rdx), %zmm3

// CHECK: vpsrld $123, -8256(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x48,0x72,0x92,0xc0,0xdf,0xff,0xff,0x7b]
          vpsrld $123, -8256(%rdx), %zmm3

// CHECK: vpsrld $123, 508(%rdx){1to16}, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x58,0x72,0x52,0x7f,0x7b]
          vpsrld $123, 508(%rdx){1to16}, %zmm3

// CHECK: vpsrld $123, 512(%rdx){1to16}, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x58,0x72,0x92,0x00,0x02,0x00,0x00,0x7b]
          vpsrld $123, 512(%rdx){1to16}, %zmm3

// CHECK: vpsrld $123, -512(%rdx){1to16}, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x58,0x72,0x52,0x80,0x7b]
          vpsrld $123, -512(%rdx){1to16}, %zmm3

// CHECK: vpsrld $123, -516(%rdx){1to16}, %zmm3
// CHECK:  encoding: [0x62,0xf1,0x65,0x58,0x72,0x92,0xfc,0xfd,0xff,0xff,0x7b]
          vpsrld $123, -516(%rdx){1to16}, %zmm3

// CHECK: vpsrlq $171, %zmm25, %zmm18
// CHECK:  encoding: [0x62,0x91,0xed,0x40,0x73,0xd1,0xab]
          vpsrlq $171, %zmm25, %zmm18

// CHECK: vpsrlq $171, %zmm25, %zmm18 {%k1}
// CHECK:  encoding: [0x62,0x91,0xed,0x41,0x73,0xd1,0xab]
          vpsrlq $171, %zmm25, %zmm18 {%k1}

// CHECK: vpsrlq $171, %zmm25, %zmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0x91,0xed,0xc1,0x73,0xd1,0xab]
          vpsrlq $171, %zmm25, %zmm18 {%k1} {z}

// CHECK: vpsrlq $123, %zmm25, %zmm18
// CHECK:  encoding: [0x62,0x91,0xed,0x40,0x73,0xd1,0x7b]
          vpsrlq $123, %zmm25, %zmm18

// CHECK: vpsrlq $123, (%rcx), %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x40,0x73,0x11,0x7b]
          vpsrlq $123, (%rcx), %zmm18

// CHECK: vpsrlq $123, 291(%rax,%r14,8), %zmm18
// CHECK:  encoding: [0x62,0xb1,0xed,0x40,0x73,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrlq $123, 291(%rax,%r14,8), %zmm18

// CHECK: vpsrlq $123, (%rcx){1to8}, %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x50,0x73,0x11,0x7b]
          vpsrlq $123, (%rcx){1to8}, %zmm18

// CHECK: vpsrlq $123, 8128(%rdx), %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x40,0x73,0x52,0x7f,0x7b]
          vpsrlq $123, 8128(%rdx), %zmm18

// CHECK: vpsrlq $123, 8192(%rdx), %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x40,0x73,0x92,0x00,0x20,0x00,0x00,0x7b]
          vpsrlq $123, 8192(%rdx), %zmm18

// CHECK: vpsrlq $123, -8192(%rdx), %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x40,0x73,0x52,0x80,0x7b]
          vpsrlq $123, -8192(%rdx), %zmm18

// CHECK: vpsrlq $123, -8256(%rdx), %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x40,0x73,0x92,0xc0,0xdf,0xff,0xff,0x7b]
          vpsrlq $123, -8256(%rdx), %zmm18

// CHECK: vpsrlq $123, 1016(%rdx){1to8}, %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x50,0x73,0x52,0x7f,0x7b]
          vpsrlq $123, 1016(%rdx){1to8}, %zmm18

// CHECK: vpsrlq $123, 1024(%rdx){1to8}, %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x50,0x73,0x92,0x00,0x04,0x00,0x00,0x7b]
          vpsrlq $123, 1024(%rdx){1to8}, %zmm18

// CHECK: vpsrlq $123, -1024(%rdx){1to8}, %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x50,0x73,0x52,0x80,0x7b]
          vpsrlq $123, -1024(%rdx){1to8}, %zmm18

// CHECK: vpsrlq $123, -1032(%rdx){1to8}, %zmm18
// CHECK:  encoding: [0x62,0xf1,0xed,0x50,0x73,0x92,0xf8,0xfb,0xff,0xff,0x7b]
          vpsrlq $123, -1032(%rdx){1to8}, %zmm18

// CHECK: vpslld $171, %zmm24, %zmm29
// CHECK:  encoding: [0x62,0x91,0x15,0x40,0x72,0xf0,0xab]
          vpslld $171, %zmm24, %zmm29

// CHECK: vpslld $171, %zmm24, %zmm29 {%k6}
// CHECK:  encoding: [0x62,0x91,0x15,0x46,0x72,0xf0,0xab]
          vpslld $171, %zmm24, %zmm29 {%k6}

// CHECK: vpslld $171, %zmm24, %zmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x91,0x15,0xc6,0x72,0xf0,0xab]
          vpslld $171, %zmm24, %zmm29 {%k6} {z}

// CHECK: vpslld $123, %zmm24, %zmm29
// CHECK:  encoding: [0x62,0x91,0x15,0x40,0x72,0xf0,0x7b]
          vpslld $123, %zmm24, %zmm29

// CHECK: vpslld $123, (%rcx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x40,0x72,0x31,0x7b]
          vpslld $123, (%rcx), %zmm29

// CHECK: vpslld $123, 291(%rax,%r14,8), %zmm29
// CHECK:  encoding: [0x62,0xb1,0x15,0x40,0x72,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpslld $123, 291(%rax,%r14,8), %zmm29

// CHECK: vpslld $123, (%rcx){1to16}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x50,0x72,0x31,0x7b]
          vpslld $123, (%rcx){1to16}, %zmm29

// CHECK: vpslld $123, 8128(%rdx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x40,0x72,0x72,0x7f,0x7b]
          vpslld $123, 8128(%rdx), %zmm29

// CHECK: vpslld $123, 8192(%rdx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x40,0x72,0xb2,0x00,0x20,0x00,0x00,0x7b]
          vpslld $123, 8192(%rdx), %zmm29

// CHECK: vpslld $123, -8192(%rdx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x40,0x72,0x72,0x80,0x7b]
          vpslld $123, -8192(%rdx), %zmm29

// CHECK: vpslld $123, -8256(%rdx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x40,0x72,0xb2,0xc0,0xdf,0xff,0xff,0x7b]
          vpslld $123, -8256(%rdx), %zmm29

// CHECK: vpslld $123, 508(%rdx){1to16}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x50,0x72,0x72,0x7f,0x7b]
          vpslld $123, 508(%rdx){1to16}, %zmm29

// CHECK: vpslld $123, 512(%rdx){1to16}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x50,0x72,0xb2,0x00,0x02,0x00,0x00,0x7b]
          vpslld $123, 512(%rdx){1to16}, %zmm29

// CHECK: vpslld $123, -512(%rdx){1to16}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x50,0x72,0x72,0x80,0x7b]
          vpslld $123, -512(%rdx){1to16}, %zmm29

// CHECK: vpslld $123, -516(%rdx){1to16}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x50,0x72,0xb2,0xfc,0xfd,0xff,0xff,0x7b]
          vpslld $123, -516(%rdx){1to16}, %zmm29

// CHECK: vpsllq $171, %zmm11, %zmm6
// CHECK:  encoding: [0x62,0xd1,0xcd,0x48,0x73,0xf3,0xab]
          vpsllq $171, %zmm11, %zmm6

// CHECK: vpsllq $171, %zmm11, %zmm6 {%k2}
// CHECK:  encoding: [0x62,0xd1,0xcd,0x4a,0x73,0xf3,0xab]
          vpsllq $171, %zmm11, %zmm6 {%k2}

// CHECK: vpsllq $171, %zmm11, %zmm6 {%k2} {z}
// CHECK:  encoding: [0x62,0xd1,0xcd,0xca,0x73,0xf3,0xab]
          vpsllq $171, %zmm11, %zmm6 {%k2} {z}

// CHECK: vpsllq $123, %zmm11, %zmm6
// CHECK:  encoding: [0x62,0xd1,0xcd,0x48,0x73,0xf3,0x7b]
          vpsllq $123, %zmm11, %zmm6

// CHECK: vpsllq $123, (%rcx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x73,0x31,0x7b]
          vpsllq $123, (%rcx), %zmm6

// CHECK: vpsllq $123, 291(%rax,%r14,8), %zmm6
// CHECK:  encoding: [0x62,0xb1,0xcd,0x48,0x73,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsllq $123, 291(%rax,%r14,8), %zmm6

// CHECK: vpsllq $123, (%rcx){1to8}, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x73,0x31,0x7b]
          vpsllq $123, (%rcx){1to8}, %zmm6

// CHECK: vpsllq $123, 8128(%rdx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x73,0x72,0x7f,0x7b]
          vpsllq $123, 8128(%rdx), %zmm6

// CHECK: vpsllq $123, 8192(%rdx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x73,0xb2,0x00,0x20,0x00,0x00,0x7b]
          vpsllq $123, 8192(%rdx), %zmm6

// CHECK: vpsllq $123, -8192(%rdx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x73,0x72,0x80,0x7b]
          vpsllq $123, -8192(%rdx), %zmm6

// CHECK: vpsllq $123, -8256(%rdx), %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x48,0x73,0xb2,0xc0,0xdf,0xff,0xff,0x7b]
          vpsllq $123, -8256(%rdx), %zmm6

// CHECK: vpsllq $123, 1016(%rdx){1to8}, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x73,0x72,0x7f,0x7b]
          vpsllq $123, 1016(%rdx){1to8}, %zmm6

// CHECK: vpsllq $123, 1024(%rdx){1to8}, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x73,0xb2,0x00,0x04,0x00,0x00,0x7b]
          vpsllq $123, 1024(%rdx){1to8}, %zmm6

// CHECK: vpsllq $123, -1024(%rdx){1to8}, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x73,0x72,0x80,0x7b]
          vpsllq $123, -1024(%rdx){1to8}, %zmm6

// CHECK: vpsllq $123, -1032(%rdx){1to8}, %zmm6
// CHECK:  encoding: [0x62,0xf1,0xcd,0x58,0x73,0xb2,0xf8,0xfb,0xff,0xff,0x7b]
          vpsllq $123, -1032(%rdx){1to8}, %zmm6

// CHECK: vpsrad $171, %zmm5, %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x40,0x72,0xe5,0xab]
          vpsrad $171, %zmm5, %zmm27

// CHECK: vpsrad $171, %zmm5, %zmm27 {%k5}
// CHECK:  encoding: [0x62,0xf1,0x25,0x45,0x72,0xe5,0xab]
          vpsrad $171, %zmm5, %zmm27 {%k5}

// CHECK: vpsrad $171, %zmm5, %zmm27 {%k5} {z}
// CHECK:  encoding: [0x62,0xf1,0x25,0xc5,0x72,0xe5,0xab]
          vpsrad $171, %zmm5, %zmm27 {%k5} {z}

// CHECK: vpsrad $123, %zmm5, %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x40,0x72,0xe5,0x7b]
          vpsrad $123, %zmm5, %zmm27

// CHECK: vpsrad $123, (%rcx), %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x40,0x72,0x21,0x7b]
          vpsrad $123, (%rcx), %zmm27

// CHECK: vpsrad $123, 291(%rax,%r14,8), %zmm27
// CHECK:  encoding: [0x62,0xb1,0x25,0x40,0x72,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrad $123, 291(%rax,%r14,8), %zmm27

// CHECK: vpsrad $123, (%rcx){1to16}, %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x50,0x72,0x21,0x7b]
          vpsrad $123, (%rcx){1to16}, %zmm27

// CHECK: vpsrad $123, 8128(%rdx), %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x40,0x72,0x62,0x7f,0x7b]
          vpsrad $123, 8128(%rdx), %zmm27

// CHECK: vpsrad $123, 8192(%rdx), %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x40,0x72,0xa2,0x00,0x20,0x00,0x00,0x7b]
          vpsrad $123, 8192(%rdx), %zmm27

// CHECK: vpsrad $123, -8192(%rdx), %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x40,0x72,0x62,0x80,0x7b]
          vpsrad $123, -8192(%rdx), %zmm27

// CHECK: vpsrad $123, -8256(%rdx), %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x40,0x72,0xa2,0xc0,0xdf,0xff,0xff,0x7b]
          vpsrad $123, -8256(%rdx), %zmm27

// CHECK: vpsrad $123, 508(%rdx){1to16}, %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x50,0x72,0x62,0x7f,0x7b]
          vpsrad $123, 508(%rdx){1to16}, %zmm27

// CHECK: vpsrad $123, 512(%rdx){1to16}, %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x50,0x72,0xa2,0x00,0x02,0x00,0x00,0x7b]
          vpsrad $123, 512(%rdx){1to16}, %zmm27

// CHECK: vpsrad $123, -512(%rdx){1to16}, %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x50,0x72,0x62,0x80,0x7b]
          vpsrad $123, -512(%rdx){1to16}, %zmm27

// CHECK: vpsrad $123, -516(%rdx){1to16}, %zmm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x50,0x72,0xa2,0xfc,0xfd,0xff,0xff,0x7b]
          vpsrad $123, -516(%rdx){1to16}, %zmm27

// CHECK: vpsraq $171, %zmm5, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x40,0x72,0xe5,0xab]
          vpsraq $171, %zmm5, %zmm29

// CHECK: vpsraq $171, %zmm5, %zmm29 {%k4}
// CHECK:  encoding: [0x62,0xf1,0x95,0x44,0x72,0xe5,0xab]
          vpsraq $171, %zmm5, %zmm29 {%k4}

// CHECK: vpsraq $171, %zmm5, %zmm29 {%k4} {z}
// CHECK:  encoding: [0x62,0xf1,0x95,0xc4,0x72,0xe5,0xab]
          vpsraq $171, %zmm5, %zmm29 {%k4} {z}

// CHECK: vpsraq $123, %zmm5, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x40,0x72,0xe5,0x7b]
          vpsraq $123, %zmm5, %zmm29

// CHECK: vpsraq $123, (%rcx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x40,0x72,0x21,0x7b]
          vpsraq $123, (%rcx), %zmm29

// CHECK: vpsraq $123, 291(%rax,%r14,8), %zmm29
// CHECK:  encoding: [0x62,0xb1,0x95,0x40,0x72,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsraq $123, 291(%rax,%r14,8), %zmm29

// CHECK: vpsraq $123, (%rcx){1to8}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x50,0x72,0x21,0x7b]
          vpsraq $123, (%rcx){1to8}, %zmm29

// CHECK: vpsraq $123, 8128(%rdx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x40,0x72,0x62,0x7f,0x7b]
          vpsraq $123, 8128(%rdx), %zmm29

// CHECK: vpsraq $123, 8192(%rdx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x40,0x72,0xa2,0x00,0x20,0x00,0x00,0x7b]
          vpsraq $123, 8192(%rdx), %zmm29

// CHECK: vpsraq $123, -8192(%rdx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x40,0x72,0x62,0x80,0x7b]
          vpsraq $123, -8192(%rdx), %zmm29

// CHECK: vpsraq $123, -8256(%rdx), %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x40,0x72,0xa2,0xc0,0xdf,0xff,0xff,0x7b]
          vpsraq $123, -8256(%rdx), %zmm29

// CHECK: vpsraq $123, 1016(%rdx){1to8}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x50,0x72,0x62,0x7f,0x7b]
          vpsraq $123, 1016(%rdx){1to8}, %zmm29

// CHECK: vpsraq $123, 1024(%rdx){1to8}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x50,0x72,0xa2,0x00,0x04,0x00,0x00,0x7b]
          vpsraq $123, 1024(%rdx){1to8}, %zmm29

// CHECK: vpsraq $123, -1024(%rdx){1to8}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x50,0x72,0x62,0x80,0x7b]
          vpsraq $123, -1024(%rdx){1to8}, %zmm29

// CHECK: vpsraq $123, -1032(%rdx){1to8}, %zmm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x50,0x72,0xa2,0xf8,0xfb,0xff,0xff,0x7b]
          vpsraq $123, -1032(%rdx){1to8}, %zmm29

// CHECK: vfixupimmps $171, %zmm2, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x40,0x54,0xfa,0xab]
          vfixupimmps $0xab, %zmm2, %zmm26, %zmm15

// CHECK: vfixupimmps $171, %zmm2, %zmm26, %zmm15 {%k4}
// CHECK:  encoding: [0x62,0x73,0x2d,0x44,0x54,0xfa,0xab]
          vfixupimmps $0xab, %zmm2, %zmm26, %zmm15 {%k4}

// CHECK: vfixupimmps $171, %zmm2, %zmm26, %zmm15 {%k4} {z}
// CHECK:  encoding: [0x62,0x73,0x2d,0xc4,0x54,0xfa,0xab]
          vfixupimmps $0xab, %zmm2, %zmm26, %zmm15 {%k4} {z}

// CHECK: vfixupimmps $171,{sae}, %zmm2, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x10,0x54,0xfa,0xab]
          vfixupimmps $0xab,{sae}, %zmm2, %zmm26, %zmm15

// CHECK: vfixupimmps $123, %zmm2, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x40,0x54,0xfa,0x7b]
          vfixupimmps $0x7b, %zmm2, %zmm26, %zmm15

// CHECK: vfixupimmps $123,{sae}, %zmm2, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x10,0x54,0xfa,0x7b]
          vfixupimmps $0x7b,{sae}, %zmm2, %zmm26, %zmm15

// CHECK: vfixupimmps $123, (%rcx), %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x40,0x54,0x39,0x7b]
          vfixupimmps $0x7b, (%rcx), %zmm26, %zmm15

// CHECK: vfixupimmps $123, 291(%rax,%r14,8), %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x33,0x2d,0x40,0x54,0xbc,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 291(%rax,%r14,8), %zmm26, %zmm15

// CHECK: vfixupimmps $123, (%rcx){1to16}, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x50,0x54,0x39,0x7b]
          vfixupimmps $0x7b, (%rcx){1to16}, %zmm26, %zmm15

// CHECK: vfixupimmps $123, 8128(%rdx), %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x40,0x54,0x7a,0x7f,0x7b]
          vfixupimmps $0x7b, 8128(%rdx), %zmm26, %zmm15

// CHECK: vfixupimmps $123, 8192(%rdx), %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x40,0x54,0xba,0x00,0x20,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 8192(%rdx), %zmm26, %zmm15

// CHECK: vfixupimmps $123, -8192(%rdx), %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x40,0x54,0x7a,0x80,0x7b]
          vfixupimmps $0x7b, -8192(%rdx), %zmm26, %zmm15

// CHECK: vfixupimmps $123, -8256(%rdx), %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x40,0x54,0xba,0xc0,0xdf,0xff,0xff,0x7b]
          vfixupimmps $0x7b, -8256(%rdx), %zmm26, %zmm15

// CHECK: vfixupimmps $123, 508(%rdx){1to16}, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x50,0x54,0x7a,0x7f,0x7b]
          vfixupimmps $0x7b, 508(%rdx){1to16}, %zmm26, %zmm15

// CHECK: vfixupimmps $123, 512(%rdx){1to16}, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x50,0x54,0xba,0x00,0x02,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 512(%rdx){1to16}, %zmm26, %zmm15

// CHECK: vfixupimmps $123, -512(%rdx){1to16}, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x50,0x54,0x7a,0x80,0x7b]
          vfixupimmps $0x7b, -512(%rdx){1to16}, %zmm26, %zmm15

// CHECK: vfixupimmps $123, -516(%rdx){1to16}, %zmm26, %zmm15
// CHECK:  encoding: [0x62,0x73,0x2d,0x50,0x54,0xba,0xfc,0xfd,0xff,0xff,0x7b]
          vfixupimmps $0x7b, -516(%rdx){1to16}, %zmm26, %zmm15

// CHECK: vfixupimmpd $171, %zmm19, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x33,0xd5,0x40,0x54,0xcb,0xab]
          vfixupimmpd $0xab, %zmm19, %zmm21, %zmm9

// CHECK: vfixupimmpd $171, %zmm19, %zmm21, %zmm9 {%k2}
// CHECK:  encoding: [0x62,0x33,0xd5,0x42,0x54,0xcb,0xab]
          vfixupimmpd $0xab, %zmm19, %zmm21, %zmm9 {%k2}

// CHECK: vfixupimmpd $171, %zmm19, %zmm21, %zmm9 {%k2} {z}
// CHECK:  encoding: [0x62,0x33,0xd5,0xc2,0x54,0xcb,0xab]
          vfixupimmpd $0xab, %zmm19, %zmm21, %zmm9 {%k2} {z}

// CHECK: vfixupimmpd $171,{sae}, %zmm19, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x33,0xd5,0x10,0x54,0xcb,0xab]
          vfixupimmpd $0xab,{sae}, %zmm19, %zmm21, %zmm9

// CHECK: vfixupimmpd $123, %zmm19, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x33,0xd5,0x40,0x54,0xcb,0x7b]
          vfixupimmpd $0x7b, %zmm19, %zmm21, %zmm9

// CHECK: vfixupimmpd $123,{sae}, %zmm19, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x33,0xd5,0x10,0x54,0xcb,0x7b]
          vfixupimmpd $0x7b,{sae}, %zmm19, %zmm21, %zmm9

// CHECK: vfixupimmpd $123, (%rcx), %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x40,0x54,0x09,0x7b]
          vfixupimmpd $0x7b, (%rcx), %zmm21, %zmm9

// CHECK: vfixupimmpd $123, 291(%rax,%r14,8), %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x33,0xd5,0x40,0x54,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 291(%rax,%r14,8), %zmm21, %zmm9

// CHECK: vfixupimmpd $123, (%rcx){1to8}, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x50,0x54,0x09,0x7b]
          vfixupimmpd $0x7b, (%rcx){1to8}, %zmm21, %zmm9

// CHECK: vfixupimmpd $123, 8128(%rdx), %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x40,0x54,0x4a,0x7f,0x7b]
          vfixupimmpd $0x7b, 8128(%rdx), %zmm21, %zmm9

// CHECK: vfixupimmpd $123, 8192(%rdx), %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x40,0x54,0x8a,0x00,0x20,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 8192(%rdx), %zmm21, %zmm9

// CHECK: vfixupimmpd $123, -8192(%rdx), %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x40,0x54,0x4a,0x80,0x7b]
          vfixupimmpd $0x7b, -8192(%rdx), %zmm21, %zmm9

// CHECK: vfixupimmpd $123, -8256(%rdx), %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x40,0x54,0x8a,0xc0,0xdf,0xff,0xff,0x7b]
          vfixupimmpd $0x7b, -8256(%rdx), %zmm21, %zmm9

// CHECK: vfixupimmpd $123, 1016(%rdx){1to8}, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x50,0x54,0x4a,0x7f,0x7b]
          vfixupimmpd $0x7b, 1016(%rdx){1to8}, %zmm21, %zmm9

// CHECK: vfixupimmpd $123, 1024(%rdx){1to8}, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x50,0x54,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 1024(%rdx){1to8}, %zmm21, %zmm9

// CHECK: vfixupimmpd $123, -1024(%rdx){1to8}, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x50,0x54,0x4a,0x80,0x7b]
          vfixupimmpd $0x7b, -1024(%rdx){1to8}, %zmm21, %zmm9

// CHECK: vfixupimmpd $123, -1032(%rdx){1to8}, %zmm21, %zmm9
// CHECK:  encoding: [0x62,0x73,0xd5,0x50,0x54,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vfixupimmpd $0x7b, -1032(%rdx){1to8}, %zmm21, %zmm9

// CHECK: vfixupimmss $171, %xmm28, %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x13,0x6d,0x00,0x55,0xfc,0xab]
          vfixupimmss $0xab, %xmm28, %xmm18, %xmm15

// CHECK: vfixupimmss $171, %xmm28, %xmm18, %xmm15 {%k5}
// CHECK:  encoding: [0x62,0x13,0x6d,0x05,0x55,0xfc,0xab]
          vfixupimmss $0xab, %xmm28, %xmm18, %xmm15 {%k5}

// CHECK: vfixupimmss $171, %xmm28, %xmm18, %xmm15 {%k5} {z}
// CHECK:  encoding: [0x62,0x13,0x6d,0x85,0x55,0xfc,0xab]
          vfixupimmss $0xab, %xmm28, %xmm18, %xmm15 {%k5} {z}

// CHECK: vfixupimmss $171,{sae}, %xmm28, %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x13,0x6d,0x10,0x55,0xfc,0xab]
          vfixupimmss $0xab,{sae}, %xmm28, %xmm18, %xmm15

// CHECK: vfixupimmss $123, %xmm28, %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x13,0x6d,0x00,0x55,0xfc,0x7b]
          vfixupimmss $0x7b, %xmm28, %xmm18, %xmm15

// CHECK: vfixupimmss $123,{sae}, %xmm28, %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x13,0x6d,0x10,0x55,0xfc,0x7b]
          vfixupimmss $0x7b,{sae}, %xmm28, %xmm18, %xmm15

// CHECK: vfixupimmss $123, (%rcx), %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x73,0x6d,0x00,0x55,0x39,0x7b]
          vfixupimmss $0x7b, (%rcx), %xmm18, %xmm15

// CHECK: vfixupimmss $123, 291(%rax,%r14,8), %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x33,0x6d,0x00,0x55,0xbc,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vfixupimmss $0x7b, 291(%rax,%r14,8), %xmm18, %xmm15

// CHECK: vfixupimmss $123, 508(%rdx), %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x73,0x6d,0x00,0x55,0x7a,0x7f,0x7b]
          vfixupimmss $0x7b, 508(%rdx), %xmm18, %xmm15

// CHECK: vfixupimmss $123, 512(%rdx), %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x73,0x6d,0x00,0x55,0xba,0x00,0x02,0x00,0x00,0x7b]
          vfixupimmss $0x7b, 512(%rdx), %xmm18, %xmm15

// CHECK: vfixupimmss $123, -512(%rdx), %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x73,0x6d,0x00,0x55,0x7a,0x80,0x7b]
          vfixupimmss $0x7b, -512(%rdx), %xmm18, %xmm15

// CHECK: vfixupimmss $123, -516(%rdx), %xmm18, %xmm15
// CHECK:  encoding: [0x62,0x73,0x6d,0x00,0x55,0xba,0xfc,0xfd,0xff,0xff,0x7b]
          vfixupimmss $0x7b, -516(%rdx), %xmm18, %xmm15

// CHECK: vfixupimmsd $171, %xmm5, %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x00,0x55,0xed,0xab]
          vfixupimmsd $0xab, %xmm5, %xmm26, %xmm13

// CHECK: vfixupimmsd $171, %xmm5, %xmm26, %xmm13 {%k6}
// CHECK:  encoding: [0x62,0x73,0xad,0x06,0x55,0xed,0xab]
          vfixupimmsd $0xab, %xmm5, %xmm26, %xmm13 {%k6}

// CHECK: vfixupimmsd $171, %xmm5, %xmm26, %xmm13 {%k6} {z}
// CHECK:  encoding: [0x62,0x73,0xad,0x86,0x55,0xed,0xab]
          vfixupimmsd $0xab, %xmm5, %xmm26, %xmm13 {%k6} {z}

// CHECK: vfixupimmsd $171,{sae}, %xmm5, %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x10,0x55,0xed,0xab]
          vfixupimmsd $0xab,{sae}, %xmm5, %xmm26, %xmm13

// CHECK: vfixupimmsd $123, %xmm5, %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x00,0x55,0xed,0x7b]
          vfixupimmsd $0x7b, %xmm5, %xmm26, %xmm13

// CHECK: vfixupimmsd $123,{sae}, %xmm5, %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x10,0x55,0xed,0x7b]
          vfixupimmsd $0x7b,{sae}, %xmm5, %xmm26, %xmm13

// CHECK: vfixupimmsd $123, (%rcx), %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x00,0x55,0x29,0x7b]
          vfixupimmsd $0x7b, (%rcx), %xmm26, %xmm13

// CHECK: vfixupimmsd $123, 291(%rax,%r14,8), %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x33,0xad,0x00,0x55,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vfixupimmsd $0x7b, 291(%rax,%r14,8), %xmm26, %xmm13

// CHECK: vfixupimmsd $123, 1016(%rdx), %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x00,0x55,0x6a,0x7f,0x7b]
          vfixupimmsd $0x7b, 1016(%rdx), %xmm26, %xmm13

// CHECK: vfixupimmsd $123, 1024(%rdx), %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x00,0x55,0xaa,0x00,0x04,0x00,0x00,0x7b]
          vfixupimmsd $0x7b, 1024(%rdx), %xmm26, %xmm13

// CHECK: vfixupimmsd $123, -1024(%rdx), %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x00,0x55,0x6a,0x80,0x7b]
          vfixupimmsd $0x7b, -1024(%rdx), %xmm26, %xmm13

// CHECK: vfixupimmsd $123, -1032(%rdx), %xmm26, %xmm13
// CHECK:  encoding: [0x62,0x73,0xad,0x00,0x55,0xaa,0xf8,0xfb,0xff,0xff,0x7b]
          vfixupimmsd $0x7b, -1032(%rdx), %xmm26, %xmm13

// CHECK: vpshufd $171, %zmm25, %zmm19
// CHECK:  encoding: [0x62,0x81,0x7d,0x48,0x70,0xd9,0xab]
          vpshufd $171, %zmm25, %zmm19

// CHECK: vpshufd $171, %zmm25, %zmm19 {%k6}
// CHECK:  encoding: [0x62,0x81,0x7d,0x4e,0x70,0xd9,0xab]
          vpshufd $171, %zmm25, %zmm19 {%k6}

// CHECK: vpshufd $171, %zmm25, %zmm19 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x7d,0xce,0x70,0xd9,0xab]
          vpshufd $171, %zmm25, %zmm19 {%k6} {z}

// CHECK: vpshufd $123, %zmm25, %zmm19
// CHECK:  encoding: [0x62,0x81,0x7d,0x48,0x70,0xd9,0x7b]
          vpshufd $123, %zmm25, %zmm19

// CHECK: vpshufd $123, (%rcx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x70,0x19,0x7b]
          vpshufd $123, (%rcx), %zmm19

// CHECK: vpshufd $123, 291(%rax,%r14,8), %zmm19
// CHECK:  encoding: [0x62,0xa1,0x7d,0x48,0x70,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpshufd $123, 291(%rax,%r14,8), %zmm19

// CHECK: vpshufd $123, (%rcx){1to16}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x58,0x70,0x19,0x7b]
          vpshufd $123, (%rcx){1to16}, %zmm19

// CHECK: vpshufd $123, 8128(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x70,0x5a,0x7f,0x7b]
          vpshufd $123, 8128(%rdx), %zmm19

// CHECK: vpshufd $123, 8192(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x70,0x9a,0x00,0x20,0x00,0x00,0x7b]
          vpshufd $123, 8192(%rdx), %zmm19

// CHECK: vpshufd $123, -8192(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x70,0x5a,0x80,0x7b]
          vpshufd $123, -8192(%rdx), %zmm19

// CHECK: vpshufd $123, -8256(%rdx), %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x48,0x70,0x9a,0xc0,0xdf,0xff,0xff,0x7b]
          vpshufd $123, -8256(%rdx), %zmm19

// CHECK: vpshufd $123, 508(%rdx){1to16}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x58,0x70,0x5a,0x7f,0x7b]
          vpshufd $123, 508(%rdx){1to16}, %zmm19

// CHECK: vpshufd $123, 512(%rdx){1to16}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x58,0x70,0x9a,0x00,0x02,0x00,0x00,0x7b]
          vpshufd $123, 512(%rdx){1to16}, %zmm19

// CHECK: vpshufd $123, -512(%rdx){1to16}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x58,0x70,0x5a,0x80,0x7b]
          vpshufd $123, -512(%rdx){1to16}, %zmm19

// CHECK: vpshufd $123, -516(%rdx){1to16}, %zmm19
// CHECK:  encoding: [0x62,0xe1,0x7d,0x58,0x70,0x9a,0xfc,0xfd,0xff,0xff,0x7b]
          vpshufd $123, -516(%rdx){1to16}, %zmm19

// CHECK: vgetexppd %zmm25, %zmm14
// CHECK:  encoding: [0x62,0x12,0xfd,0x48,0x42,0xf1]
          vgetexppd %zmm25, %zmm14

// CHECK: vgetexppd %zmm25, %zmm14 {%k5}
// CHECK:  encoding: [0x62,0x12,0xfd,0x4d,0x42,0xf1]
          vgetexppd %zmm25, %zmm14 {%k5}

// CHECK: vgetexppd %zmm25, %zmm14 {%k5} {z}
// CHECK:  encoding: [0x62,0x12,0xfd,0xcd,0x42,0xf1]
          vgetexppd %zmm25, %zmm14 {%k5} {z}

// CHECK: vgetexppd {sae}, %zmm25, %zmm14
// CHECK:  encoding: [0x62,0x12,0xfd,0x18,0x42,0xf1]
          vgetexppd {sae}, %zmm25, %zmm14

// CHECK: vgetexppd (%rcx), %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x42,0x31]
          vgetexppd (%rcx), %zmm14

// CHECK: vgetexppd 291(%rax,%r14,8), %zmm14
// CHECK:  encoding: [0x62,0x32,0xfd,0x48,0x42,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vgetexppd 291(%rax,%r14,8), %zmm14

// CHECK: vgetexppd (%rcx){1to8}, %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x42,0x31]
          vgetexppd (%rcx){1to8}, %zmm14

// CHECK: vgetexppd 8128(%rdx), %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x42,0x72,0x7f]
          vgetexppd 8128(%rdx), %zmm14

// CHECK: vgetexppd 8192(%rdx), %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x42,0xb2,0x00,0x20,0x00,0x00]
          vgetexppd 8192(%rdx), %zmm14

// CHECK: vgetexppd -8192(%rdx), %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x42,0x72,0x80]
          vgetexppd -8192(%rdx), %zmm14

// CHECK: vgetexppd -8256(%rdx), %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x42,0xb2,0xc0,0xdf,0xff,0xff]
          vgetexppd -8256(%rdx), %zmm14

// CHECK: vgetexppd 1016(%rdx){1to8}, %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x42,0x72,0x7f]
          vgetexppd 1016(%rdx){1to8}, %zmm14

// CHECK: vgetexppd 1024(%rdx){1to8}, %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x42,0xb2,0x00,0x04,0x00,0x00]
          vgetexppd 1024(%rdx){1to8}, %zmm14

// CHECK: vgetexppd -1024(%rdx){1to8}, %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x42,0x72,0x80]
          vgetexppd -1024(%rdx){1to8}, %zmm14

// CHECK: vgetexppd -1032(%rdx){1to8}, %zmm14
// CHECK:  encoding: [0x62,0x72,0xfd,0x58,0x42,0xb2,0xf8,0xfb,0xff,0xff]
          vgetexppd -1032(%rdx){1to8}, %zmm14

// CHECK: vgetexpps %zmm6, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x42,0xce]
          vgetexpps %zmm6, %zmm1

// CHECK: vgetexpps %zmm6, %zmm1 {%k3}
// CHECK:  encoding: [0x62,0xf2,0x7d,0x4b,0x42,0xce]
          vgetexpps %zmm6, %zmm1 {%k3}

// CHECK: vgetexpps %zmm6, %zmm1 {%k3} {z}
// CHECK:  encoding: [0x62,0xf2,0x7d,0xcb,0x42,0xce]
          vgetexpps %zmm6, %zmm1 {%k3} {z}

// CHECK: vgetexpps {sae}, %zmm6, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x18,0x42,0xce]
          vgetexpps {sae}, %zmm6, %zmm1

// CHECK: vgetexpps (%rcx), %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x42,0x09]
          vgetexpps (%rcx), %zmm1

// CHECK: vgetexpps 291(%rax,%r14,8), %zmm1
// CHECK:  encoding: [0x62,0xb2,0x7d,0x48,0x42,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vgetexpps 291(%rax,%r14,8), %zmm1

// CHECK: vgetexpps (%rcx){1to16}, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x58,0x42,0x09]
          vgetexpps (%rcx){1to16}, %zmm1

// CHECK: vgetexpps 8128(%rdx), %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x42,0x4a,0x7f]
          vgetexpps 8128(%rdx), %zmm1

// CHECK: vgetexpps 8192(%rdx), %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x42,0x8a,0x00,0x20,0x00,0x00]
          vgetexpps 8192(%rdx), %zmm1

// CHECK: vgetexpps -8192(%rdx), %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x42,0x4a,0x80]
          vgetexpps -8192(%rdx), %zmm1

// CHECK: vgetexpps -8256(%rdx), %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x42,0x8a,0xc0,0xdf,0xff,0xff]
          vgetexpps -8256(%rdx), %zmm1

// CHECK: vgetexpps 508(%rdx){1to16}, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x58,0x42,0x4a,0x7f]
          vgetexpps 508(%rdx){1to16}, %zmm1

// CHECK: vgetexpps 512(%rdx){1to16}, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x58,0x42,0x8a,0x00,0x02,0x00,0x00]
          vgetexpps 512(%rdx){1to16}, %zmm1

// CHECK: vgetexpps -512(%rdx){1to16}, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x58,0x42,0x4a,0x80]
          vgetexpps -512(%rdx){1to16}, %zmm1

// CHECK: vgetexpps -516(%rdx){1to16}, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x7d,0x58,0x42,0x8a,0xfc,0xfd,0xff,0xff]
          vgetexpps -516(%rdx){1to16}, %zmm1

// CHECK: vshuff32x4 $171, %zmm3, %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x40,0x23,0xf3,0xab]
          vshuff32x4 $171, %zmm3, %zmm24, %zmm6

// CHECK: vshuff32x4 $171, %zmm3, %zmm24, %zmm6 {%k2}
// CHECK:  encoding: [0x62,0xf3,0x3d,0x42,0x23,0xf3,0xab]
          vshuff32x4 $171, %zmm3, %zmm24, %zmm6 {%k2}

// CHECK: vshuff32x4 $171, %zmm3, %zmm24, %zmm6 {%k2} {z}
// CHECK:  encoding: [0x62,0xf3,0x3d,0xc2,0x23,0xf3,0xab]
          vshuff32x4 $171, %zmm3, %zmm24, %zmm6 {%k2} {z}

// CHECK: vshuff32x4 $123, %zmm3, %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x40,0x23,0xf3,0x7b]
          vshuff32x4 $123, %zmm3, %zmm24, %zmm6

// CHECK: vshuff32x4 $123, (%rcx), %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x40,0x23,0x31,0x7b]
          vshuff32x4 $123, (%rcx), %zmm24, %zmm6

// CHECK: vshuff32x4 $123, 291(%rax,%r14,8), %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xb3,0x3d,0x40,0x23,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshuff32x4 $123, 291(%rax,%r14,8), %zmm24, %zmm6

// CHECK: vshuff32x4 $123, (%rcx){1to16}, %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x50,0x23,0x31,0x7b]
          vshuff32x4 $123, (%rcx){1to16}, %zmm24, %zmm6

// CHECK: vshuff32x4 $123, 8128(%rdx), %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x40,0x23,0x72,0x7f,0x7b]
          vshuff32x4 $123, 8128(%rdx), %zmm24, %zmm6

// CHECK: vshuff32x4 $123, 8192(%rdx), %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x40,0x23,0xb2,0x00,0x20,0x00,0x00,0x7b]
          vshuff32x4 $123, 8192(%rdx), %zmm24, %zmm6

// CHECK: vshuff32x4 $123, -8192(%rdx), %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x40,0x23,0x72,0x80,0x7b]
          vshuff32x4 $123, -8192(%rdx), %zmm24, %zmm6

// CHECK: vshuff32x4 $123, -8256(%rdx), %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x40,0x23,0xb2,0xc0,0xdf,0xff,0xff,0x7b]
          vshuff32x4 $123, -8256(%rdx), %zmm24, %zmm6

// CHECK: vshuff32x4 $123, 508(%rdx){1to16}, %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x50,0x23,0x72,0x7f,0x7b]
          vshuff32x4 $123, 508(%rdx){1to16}, %zmm24, %zmm6

// CHECK: vshuff32x4 $123, 512(%rdx){1to16}, %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x50,0x23,0xb2,0x00,0x02,0x00,0x00,0x7b]
          vshuff32x4 $123, 512(%rdx){1to16}, %zmm24, %zmm6

// CHECK: vshuff32x4 $123, -512(%rdx){1to16}, %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x50,0x23,0x72,0x80,0x7b]
          vshuff32x4 $123, -512(%rdx){1to16}, %zmm24, %zmm6

// CHECK: vshuff32x4 $123, -516(%rdx){1to16}, %zmm24, %zmm6
// CHECK:  encoding: [0x62,0xf3,0x3d,0x50,0x23,0xb2,0xfc,0xfd,0xff,0xff,0x7b]
          vshuff32x4 $123, -516(%rdx){1to16}, %zmm24, %zmm6

// CHECK: vshuff64x2 $171, %zmm11, %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x53,0xb5,0x40,0x23,0xfb,0xab]
          vshuff64x2 $171, %zmm11, %zmm25, %zmm15

// CHECK: vshuff64x2 $171, %zmm11, %zmm25, %zmm15 {%k2}
// CHECK:  encoding: [0x62,0x53,0xb5,0x42,0x23,0xfb,0xab]
          vshuff64x2 $171, %zmm11, %zmm25, %zmm15 {%k2}

// CHECK: vshuff64x2 $171, %zmm11, %zmm25, %zmm15 {%k2} {z}
// CHECK:  encoding: [0x62,0x53,0xb5,0xc2,0x23,0xfb,0xab]
          vshuff64x2 $171, %zmm11, %zmm25, %zmm15 {%k2} {z}

// CHECK: vshuff64x2 $123, %zmm11, %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x53,0xb5,0x40,0x23,0xfb,0x7b]
          vshuff64x2 $123, %zmm11, %zmm25, %zmm15

// CHECK: vshuff64x2 $123, (%rcx), %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x40,0x23,0x39,0x7b]
          vshuff64x2 $123, (%rcx), %zmm25, %zmm15

// CHECK: vshuff64x2 $123, 291(%rax,%r14,8), %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x33,0xb5,0x40,0x23,0xbc,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshuff64x2 $123, 291(%rax,%r14,8), %zmm25, %zmm15

// CHECK: vshuff64x2 $123, (%rcx){1to8}, %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x50,0x23,0x39,0x7b]
          vshuff64x2 $123, (%rcx){1to8}, %zmm25, %zmm15

// CHECK: vshuff64x2 $123, 8128(%rdx), %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x40,0x23,0x7a,0x7f,0x7b]
          vshuff64x2 $123, 8128(%rdx), %zmm25, %zmm15

// CHECK: vshuff64x2 $123, 8192(%rdx), %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x40,0x23,0xba,0x00,0x20,0x00,0x00,0x7b]
          vshuff64x2 $123, 8192(%rdx), %zmm25, %zmm15

// CHECK: vshuff64x2 $123, -8192(%rdx), %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x40,0x23,0x7a,0x80,0x7b]
          vshuff64x2 $123, -8192(%rdx), %zmm25, %zmm15

// CHECK: vshuff64x2 $123, -8256(%rdx), %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x40,0x23,0xba,0xc0,0xdf,0xff,0xff,0x7b]
          vshuff64x2 $123, -8256(%rdx), %zmm25, %zmm15

// CHECK: vshuff64x2 $123, 1016(%rdx){1to8}, %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x50,0x23,0x7a,0x7f,0x7b]
          vshuff64x2 $123, 1016(%rdx){1to8}, %zmm25, %zmm15

// CHECK: vshuff64x2 $123, 1024(%rdx){1to8}, %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x50,0x23,0xba,0x00,0x04,0x00,0x00,0x7b]
          vshuff64x2 $123, 1024(%rdx){1to8}, %zmm25, %zmm15

// CHECK: vshuff64x2 $123, -1024(%rdx){1to8}, %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x50,0x23,0x7a,0x80,0x7b]
          vshuff64x2 $123, -1024(%rdx){1to8}, %zmm25, %zmm15

// CHECK: vshuff64x2 $123, -1032(%rdx){1to8}, %zmm25, %zmm15
// CHECK:  encoding: [0x62,0x73,0xb5,0x50,0x23,0xba,0xf8,0xfb,0xff,0xff,0x7b]
          vshuff64x2 $123, -1032(%rdx){1to8}, %zmm25, %zmm15

// CHECK: vshufi32x4 $171, %zmm25, %zmm28, %zmm1
// CHECK:  encoding: [0x62,0x93,0x1d,0x40,0x43,0xc9,0xab]
          vshufi32x4 $171, %zmm25, %zmm28, %zmm1

// CHECK: vshufi32x4 $171, %zmm25, %zmm28, %zmm1 {%k4}
// CHECK:  encoding: [0x62,0x93,0x1d,0x44,0x43,0xc9,0xab]
          vshufi32x4 $171, %zmm25, %zmm28, %zmm1 {%k4}

// CHECK: vshufi32x4 $171, %zmm25, %zmm28, %zmm1 {%k4} {z}
// CHECK:  encoding: [0x62,0x93,0x1d,0xc4,0x43,0xc9,0xab]
          vshufi32x4 $171, %zmm25, %zmm28, %zmm1 {%k4} {z}

// CHECK: vshufi32x4 $123, %zmm25, %zmm28, %zmm1
// CHECK:  encoding: [0x62,0x93,0x1d,0x40,0x43,0xc9,0x7b]
          vshufi32x4 $123, %zmm25, %zmm28, %zmm1

// CHECK: vshufi32x4 $123, (%rcx), %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x40,0x43,0x09,0x7b]
          vshufi32x4 $123, (%rcx), %zmm28, %zmm1

// CHECK: vshufi32x4 $123, 291(%rax,%r14,8), %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xb3,0x1d,0x40,0x43,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufi32x4 $123, 291(%rax,%r14,8), %zmm28, %zmm1

// CHECK: vshufi32x4 $123, (%rcx){1to16}, %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x50,0x43,0x09,0x7b]
          vshufi32x4 $123, (%rcx){1to16}, %zmm28, %zmm1

// CHECK: vshufi32x4 $123, 8128(%rdx), %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x40,0x43,0x4a,0x7f,0x7b]
          vshufi32x4 $123, 8128(%rdx), %zmm28, %zmm1

// CHECK: vshufi32x4 $123, 8192(%rdx), %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x40,0x43,0x8a,0x00,0x20,0x00,0x00,0x7b]
          vshufi32x4 $123, 8192(%rdx), %zmm28, %zmm1

// CHECK: vshufi32x4 $123, -8192(%rdx), %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x40,0x43,0x4a,0x80,0x7b]
          vshufi32x4 $123, -8192(%rdx), %zmm28, %zmm1

// CHECK: vshufi32x4 $123, -8256(%rdx), %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x40,0x43,0x8a,0xc0,0xdf,0xff,0xff,0x7b]
          vshufi32x4 $123, -8256(%rdx), %zmm28, %zmm1

// CHECK: vshufi32x4 $123, 508(%rdx){1to16}, %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x50,0x43,0x4a,0x7f,0x7b]
          vshufi32x4 $123, 508(%rdx){1to16}, %zmm28, %zmm1

// CHECK: vshufi32x4 $123, 512(%rdx){1to16}, %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x50,0x43,0x8a,0x00,0x02,0x00,0x00,0x7b]
          vshufi32x4 $123, 512(%rdx){1to16}, %zmm28, %zmm1

// CHECK: vshufi32x4 $123, -512(%rdx){1to16}, %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x50,0x43,0x4a,0x80,0x7b]
          vshufi32x4 $123, -512(%rdx){1to16}, %zmm28, %zmm1

// CHECK: vshufi32x4 $123, -516(%rdx){1to16}, %zmm28, %zmm1
// CHECK:  encoding: [0x62,0xf3,0x1d,0x50,0x43,0x8a,0xfc,0xfd,0xff,0xff,0x7b]
          vshufi32x4 $123, -516(%rdx){1to16}, %zmm28, %zmm1

// CHECK: vshufi64x2 $171, %zmm19, %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xb3,0xfd,0x40,0x43,0xdb,0xab]
          vshufi64x2 $171, %zmm19, %zmm16, %zmm3

// CHECK: vshufi64x2 $171, %zmm19, %zmm16, %zmm3 {%k7}
// CHECK:  encoding: [0x62,0xb3,0xfd,0x47,0x43,0xdb,0xab]
          vshufi64x2 $171, %zmm19, %zmm16, %zmm3 {%k7}

// CHECK: vshufi64x2 $171, %zmm19, %zmm16, %zmm3 {%k7} {z}
// CHECK:  encoding: [0x62,0xb3,0xfd,0xc7,0x43,0xdb,0xab]
          vshufi64x2 $171, %zmm19, %zmm16, %zmm3 {%k7} {z}

// CHECK: vshufi64x2 $123, %zmm19, %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xb3,0xfd,0x40,0x43,0xdb,0x7b]
          vshufi64x2 $123, %zmm19, %zmm16, %zmm3

// CHECK: vshufi64x2 $123, (%rcx), %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x40,0x43,0x19,0x7b]
          vshufi64x2 $123, (%rcx), %zmm16, %zmm3

// CHECK: vshufi64x2 $123, 291(%rax,%r14,8), %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xb3,0xfd,0x40,0x43,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufi64x2 $123, 291(%rax,%r14,8), %zmm16, %zmm3

// CHECK: vshufi64x2 $123, (%rcx){1to8}, %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x50,0x43,0x19,0x7b]
          vshufi64x2 $123, (%rcx){1to8}, %zmm16, %zmm3

// CHECK: vshufi64x2 $123, 8128(%rdx), %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x40,0x43,0x5a,0x7f,0x7b]
          vshufi64x2 $123, 8128(%rdx), %zmm16, %zmm3

// CHECK: vshufi64x2 $123, 8192(%rdx), %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x40,0x43,0x9a,0x00,0x20,0x00,0x00,0x7b]
          vshufi64x2 $123, 8192(%rdx), %zmm16, %zmm3

// CHECK: vshufi64x2 $123, -8192(%rdx), %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x40,0x43,0x5a,0x80,0x7b]
          vshufi64x2 $123, -8192(%rdx), %zmm16, %zmm3

// CHECK: vshufi64x2 $123, -8256(%rdx), %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x40,0x43,0x9a,0xc0,0xdf,0xff,0xff,0x7b]
          vshufi64x2 $123, -8256(%rdx), %zmm16, %zmm3

// CHECK: vshufi64x2 $123, 1016(%rdx){1to8}, %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x50,0x43,0x5a,0x7f,0x7b]
          vshufi64x2 $123, 1016(%rdx){1to8}, %zmm16, %zmm3

// CHECK: vshufi64x2 $123, 1024(%rdx){1to8}, %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x50,0x43,0x9a,0x00,0x04,0x00,0x00,0x7b]
          vshufi64x2 $123, 1024(%rdx){1to8}, %zmm16, %zmm3

// CHECK: vshufi64x2 $123, -1024(%rdx){1to8}, %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x50,0x43,0x5a,0x80,0x7b]
          vshufi64x2 $123, -1024(%rdx){1to8}, %zmm16, %zmm3

// CHECK: vshufi64x2 $123, -1032(%rdx){1to8}, %zmm16, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x50,0x43,0x9a,0xf8,0xfb,0xff,0xff,0x7b]
          vshufi64x2 $123, -1032(%rdx){1to8}, %zmm16, %zmm3

// CHECK: vpermps %zmm24, %zmm2, %zmm4
// CHECK:  encoding: [0x62,0x92,0x6d,0x48,0x16,0xe0]
          vpermps %zmm24, %zmm2, %zmm4

// CHECK: vpermps %zmm24, %zmm2, %zmm4 {%k4}
// CHECK:  encoding: [0x62,0x92,0x6d,0x4c,0x16,0xe0]
          vpermps %zmm24, %zmm2, %zmm4 {%k4}

// CHECK: vpermps %zmm24, %zmm2, %zmm4 {%k4} {z}
// CHECK:  encoding: [0x62,0x92,0x6d,0xcc,0x16,0xe0]
          vpermps %zmm24, %zmm2, %zmm4 {%k4} {z}

// CHECK: vpermps (%rcx), %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x48,0x16,0x21]
          vpermps (%rcx), %zmm2, %zmm4

// CHECK: vpermps 291(%rax,%r14,8), %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xb2,0x6d,0x48,0x16,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpermps 291(%rax,%r14,8), %zmm2, %zmm4

// CHECK: vpermps (%rcx){1to16}, %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x58,0x16,0x21]
          vpermps (%rcx){1to16}, %zmm2, %zmm4

// CHECK: vpermps 8128(%rdx), %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x48,0x16,0x62,0x7f]
          vpermps 8128(%rdx), %zmm2, %zmm4

// CHECK: vpermps 8192(%rdx), %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x48,0x16,0xa2,0x00,0x20,0x00,0x00]
          vpermps 8192(%rdx), %zmm2, %zmm4

// CHECK: vpermps -8192(%rdx), %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x48,0x16,0x62,0x80]
          vpermps -8192(%rdx), %zmm2, %zmm4

// CHECK: vpermps -8256(%rdx), %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x48,0x16,0xa2,0xc0,0xdf,0xff,0xff]
          vpermps -8256(%rdx), %zmm2, %zmm4

// CHECK: vpermps 508(%rdx){1to16}, %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x58,0x16,0x62,0x7f]
          vpermps 508(%rdx){1to16}, %zmm2, %zmm4

// CHECK: vpermps 512(%rdx){1to16}, %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x58,0x16,0xa2,0x00,0x02,0x00,0x00]
          vpermps 512(%rdx){1to16}, %zmm2, %zmm4

// CHECK: vpermps -512(%rdx){1to16}, %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x58,0x16,0x62,0x80]
          vpermps -512(%rdx){1to16}, %zmm2, %zmm4

// CHECK: vpermps -516(%rdx){1to16}, %zmm2, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x58,0x16,0xa2,0xfc,0xfd,0xff,0xff]
          vpermps -516(%rdx){1to16}, %zmm2, %zmm4

// CHECK: vpermq $171, %zmm4, %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x48,0x00,0xcc,0xab]
          vpermq $171, %zmm4, %zmm25

// CHECK: vpermq $171, %zmm4, %zmm25 {%k6}
// CHECK:  encoding: [0x62,0x63,0xfd,0x4e,0x00,0xcc,0xab]
          vpermq $171, %zmm4, %zmm25 {%k6}

// CHECK: vpermq $171, %zmm4, %zmm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x63,0xfd,0xce,0x00,0xcc,0xab]
          vpermq $171, %zmm4, %zmm25 {%k6} {z}

// CHECK: vpermq $123, %zmm4, %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x48,0x00,0xcc,0x7b]
          vpermq $123, %zmm4, %zmm25

// CHECK: vpermq $123, (%rcx), %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x48,0x00,0x09,0x7b]
          vpermq $123, (%rcx), %zmm25

// CHECK: vpermq $123, 291(%rax,%r14,8), %zmm25
// CHECK:  encoding: [0x62,0x23,0xfd,0x48,0x00,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpermq $123, 291(%rax,%r14,8), %zmm25

// CHECK: vpermq $123, (%rcx){1to8}, %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x58,0x00,0x09,0x7b]
          vpermq $123, (%rcx){1to8}, %zmm25

// CHECK: vpermq $123, 8128(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x48,0x00,0x4a,0x7f,0x7b]
          vpermq $123, 8128(%rdx), %zmm25

// CHECK: vpermq $123, 8192(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x48,0x00,0x8a,0x00,0x20,0x00,0x00,0x7b]
          vpermq $123, 8192(%rdx), %zmm25

// CHECK: vpermq $123, -8192(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x48,0x00,0x4a,0x80,0x7b]
          vpermq $123, -8192(%rdx), %zmm25

// CHECK: vpermq $123, -8256(%rdx), %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x48,0x00,0x8a,0xc0,0xdf,0xff,0xff,0x7b]
          vpermq $123, -8256(%rdx), %zmm25

// CHECK: vpermq $123, 1016(%rdx){1to8}, %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x58,0x00,0x4a,0x7f,0x7b]
          vpermq $123, 1016(%rdx){1to8}, %zmm25

// CHECK: vpermq $123, 1024(%rdx){1to8}, %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x58,0x00,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vpermq $123, 1024(%rdx){1to8}, %zmm25

// CHECK: vpermq $123, -1024(%rdx){1to8}, %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x58,0x00,0x4a,0x80,0x7b]
          vpermq $123, -1024(%rdx){1to8}, %zmm25

// CHECK: vpermq $123, -1032(%rdx){1to8}, %zmm25
// CHECK:  encoding: [0x62,0x63,0xfd,0x58,0x00,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vpermq $123, -1032(%rdx){1to8}, %zmm25

// CHECK: vpermq %zmm22, %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xa2,0xc5,0x40,0x36,0xee]
          vpermq %zmm22, %zmm23, %zmm21

// CHECK: vpermq %zmm22, %zmm23, %zmm21 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xc5,0x41,0x36,0xee]
          vpermq %zmm22, %zmm23, %zmm21 {%k1}

// CHECK: vpermq %zmm22, %zmm23, %zmm21 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xc5,0xc1,0x36,0xee]
          vpermq %zmm22, %zmm23, %zmm21 {%k1} {z}

// CHECK: vpermq (%rcx), %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x40,0x36,0x29]
          vpermq (%rcx), %zmm23, %zmm21

// CHECK: vpermq 291(%rax,%r14,8), %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xa2,0xc5,0x40,0x36,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpermq 291(%rax,%r14,8), %zmm23, %zmm21

// CHECK: vpermq (%rcx){1to8}, %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x50,0x36,0x29]
          vpermq (%rcx){1to8}, %zmm23, %zmm21

// CHECK: vpermq 8128(%rdx), %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x40,0x36,0x6a,0x7f]
          vpermq 8128(%rdx), %zmm23, %zmm21

// CHECK: vpermq 8192(%rdx), %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x40,0x36,0xaa,0x00,0x20,0x00,0x00]
          vpermq 8192(%rdx), %zmm23, %zmm21

// CHECK: vpermq -8192(%rdx), %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x40,0x36,0x6a,0x80]
          vpermq -8192(%rdx), %zmm23, %zmm21

// CHECK: vpermq -8256(%rdx), %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x40,0x36,0xaa,0xc0,0xdf,0xff,0xff]
          vpermq -8256(%rdx), %zmm23, %zmm21

// CHECK: vpermq 1016(%rdx){1to8}, %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x50,0x36,0x6a,0x7f]
          vpermq 1016(%rdx){1to8}, %zmm23, %zmm21

// CHECK: vpermq 1024(%rdx){1to8}, %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x50,0x36,0xaa,0x00,0x04,0x00,0x00]
          vpermq 1024(%rdx){1to8}, %zmm23, %zmm21

// CHECK: vpermq -1024(%rdx){1to8}, %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x50,0x36,0x6a,0x80]
          vpermq -1024(%rdx){1to8}, %zmm23, %zmm21

// CHECK: vpermq -1032(%rdx){1to8}, %zmm23, %zmm21
// CHECK:  encoding: [0x62,0xe2,0xc5,0x50,0x36,0xaa,0xf8,0xfb,0xff,0xff]
          vpermq -1032(%rdx){1to8}, %zmm23, %zmm21

// CHECK: vpermpd %zmm18, %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x22,0x95,0x40,0x16,0xd2]
          vpermpd %zmm18, %zmm29, %zmm26

// CHECK: vpermpd %zmm18, %zmm29, %zmm26 {%k6}
// CHECK:  encoding: [0x62,0x22,0x95,0x46,0x16,0xd2]
          vpermpd %zmm18, %zmm29, %zmm26 {%k6}

// CHECK: vpermpd %zmm18, %zmm29, %zmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x22,0x95,0xc6,0x16,0xd2]
          vpermpd %zmm18, %zmm29, %zmm26 {%k6} {z}

// CHECK: vpermpd (%rcx), %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x40,0x16,0x11]
          vpermpd (%rcx), %zmm29, %zmm26

// CHECK: vpermpd 291(%rax,%r14,8), %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x22,0x95,0x40,0x16,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermpd 291(%rax,%r14,8), %zmm29, %zmm26

// CHECK: vpermpd (%rcx){1to8}, %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x50,0x16,0x11]
          vpermpd (%rcx){1to8}, %zmm29, %zmm26

// CHECK: vpermpd 8128(%rdx), %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x40,0x16,0x52,0x7f]
          vpermpd 8128(%rdx), %zmm29, %zmm26

// CHECK: vpermpd 8192(%rdx), %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x40,0x16,0x92,0x00,0x20,0x00,0x00]
          vpermpd 8192(%rdx), %zmm29, %zmm26

// CHECK: vpermpd -8192(%rdx), %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x40,0x16,0x52,0x80]
          vpermpd -8192(%rdx), %zmm29, %zmm26

// CHECK: vpermpd -8256(%rdx), %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x40,0x16,0x92,0xc0,0xdf,0xff,0xff]
          vpermpd -8256(%rdx), %zmm29, %zmm26

// CHECK: vpermpd 1016(%rdx){1to8}, %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x50,0x16,0x52,0x7f]
          vpermpd 1016(%rdx){1to8}, %zmm29, %zmm26

// CHECK: vpermpd 1024(%rdx){1to8}, %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x50,0x16,0x92,0x00,0x04,0x00,0x00]
          vpermpd 1024(%rdx){1to8}, %zmm29, %zmm26

// CHECK: vpermpd -1024(%rdx){1to8}, %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x50,0x16,0x52,0x80]
          vpermpd -1024(%rdx){1to8}, %zmm29, %zmm26

// CHECK: vpermpd -1032(%rdx){1to8}, %zmm29, %zmm26
// CHECK:  encoding: [0x62,0x62,0x95,0x50,0x16,0x92,0xf8,0xfb,0xff,0xff]
          vpermpd -1032(%rdx){1to8}, %zmm29, %zmm26

// CHECK: vpermpd $171, %zmm27, %zmm3
// CHECK:  encoding: [0x62,0x93,0xfd,0x48,0x01,0xdb,0xab]
          vpermpd $0xab, %zmm27, %zmm3

// CHECK: vpermpd $171, %zmm27, %zmm3 {%k2}
// CHECK:  encoding: [0x62,0x93,0xfd,0x4a,0x01,0xdb,0xab]
          vpermpd $0xab, %zmm27, %zmm3 {%k2}

// CHECK: vpermpd $171, %zmm27, %zmm3 {%k2} {z}
// CHECK:  encoding: [0x62,0x93,0xfd,0xca,0x01,0xdb,0xab]
          vpermpd $0xab, %zmm27, %zmm3 {%k2} {z}

// CHECK: vpermpd $123, %zmm27, %zmm3
// CHECK:  encoding: [0x62,0x93,0xfd,0x48,0x01,0xdb,0x7b]
          vpermpd $0x7b, %zmm27, %zmm3

// CHECK: vpermpd $123, (%rcx), %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x01,0x19,0x7b]
          vpermpd $0x7b, (%rcx), %zmm3

// CHECK: vpermpd $123, 291(%rax,%r14,8), %zmm3
// CHECK:  encoding: [0x62,0xb3,0xfd,0x48,0x01,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpermpd $0x7b, 291(%rax,%r14,8), %zmm3

// CHECK: vpermpd $123, (%rcx){1to8}, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x01,0x19,0x7b]
          vpermpd $0x7b, (%rcx){1to8}, %zmm3

// CHECK: vpermpd $123, 8128(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x01,0x5a,0x7f,0x7b]
          vpermpd $0x7b, 8128(%rdx), %zmm3

// CHECK: vpermpd $123, 8192(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x01,0x9a,0x00,0x20,0x00,0x00,0x7b]
          vpermpd $0x7b, 8192(%rdx), %zmm3

// CHECK: vpermpd $123, -8192(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x01,0x5a,0x80,0x7b]
          vpermpd $0x7b, -8192(%rdx), %zmm3

// CHECK: vpermpd $123, -8256(%rdx), %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x01,0x9a,0xc0,0xdf,0xff,0xff,0x7b]
          vpermpd $0x7b, -8256(%rdx), %zmm3

// CHECK: vpermpd $123, 1016(%rdx){1to8}, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x01,0x5a,0x7f,0x7b]
          vpermpd $0x7b, 1016(%rdx){1to8}, %zmm3

// CHECK: vpermpd $123, 1024(%rdx){1to8}, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x01,0x9a,0x00,0x04,0x00,0x00,0x7b]
          vpermpd $0x7b, 1024(%rdx){1to8}, %zmm3

// CHECK: vpermpd $123, -1024(%rdx){1to8}, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x01,0x5a,0x80,0x7b]
          vpermpd $0x7b, -1024(%rdx){1to8}, %zmm3

// CHECK: vpermpd $123, -1032(%rdx){1to8}, %zmm3
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x01,0x9a,0xf8,0xfb,0xff,0xff,0x7b]
          vpermpd $0x7b, -1032(%rdx){1to8}, %zmm3

// CHECK: vpermd %zmm9, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x1d,0x40,0x36,0xf1]
          vpermd %zmm9, %zmm28, %zmm22

// CHECK: vpermd %zmm9, %zmm28, %zmm22 {%k1}
// CHECK:  encoding: [0x62,0xc2,0x1d,0x41,0x36,0xf1]
          vpermd %zmm9, %zmm28, %zmm22 {%k1}

// CHECK: vpermd %zmm9, %zmm28, %zmm22 {%k1} {z}
// CHECK:  encoding: [0x62,0xc2,0x1d,0xc1,0x36,0xf1]
          vpermd %zmm9, %zmm28, %zmm22 {%k1} {z}

// CHECK: vpermd (%rcx), %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x40,0x36,0x31]
          vpermd (%rcx), %zmm28, %zmm22

// CHECK: vpermd 291(%rax,%r14,8), %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xa2,0x1d,0x40,0x36,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpermd 291(%rax,%r14,8), %zmm28, %zmm22

// CHECK: vpermd (%rcx){1to16}, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x50,0x36,0x31]
          vpermd (%rcx){1to16}, %zmm28, %zmm22

// CHECK: vpermd 8128(%rdx), %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x40,0x36,0x72,0x7f]
          vpermd 8128(%rdx), %zmm28, %zmm22

// CHECK: vpermd 8192(%rdx), %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x40,0x36,0xb2,0x00,0x20,0x00,0x00]
          vpermd 8192(%rdx), %zmm28, %zmm22

// CHECK: vpermd -8192(%rdx), %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x40,0x36,0x72,0x80]
          vpermd -8192(%rdx), %zmm28, %zmm22

// CHECK: vpermd -8256(%rdx), %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x40,0x36,0xb2,0xc0,0xdf,0xff,0xff]
          vpermd -8256(%rdx), %zmm28, %zmm22

// CHECK: vpermd 508(%rdx){1to16}, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x50,0x36,0x72,0x7f]
          vpermd 508(%rdx){1to16}, %zmm28, %zmm22

// CHECK: vpermd 512(%rdx){1to16}, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x50,0x36,0xb2,0x00,0x02,0x00,0x00]
          vpermd 512(%rdx){1to16}, %zmm28, %zmm22

// CHECK: vpermd -512(%rdx){1to16}, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x50,0x36,0x72,0x80]
          vpermd -512(%rdx){1to16}, %zmm28, %zmm22

// CHECK: vpermd -516(%rdx){1to16}, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x50,0x36,0xb2,0xfc,0xfd,0xff,0xff]
          vpermd -516(%rdx){1to16}, %zmm28, %zmm22

// CHECK:  vcvtsi2sdl %eax, %xmm10, %xmm7
// CHECK:  encoding: [0xc5,0xab,0x2a,0xf8]
          vcvtsi2sd %eax, %xmm10, %xmm7

// CHECK: vcvtsi2sdl %ebp, %xmm10, %xmm7
// CHECK:  encoding: [0xc5,0xab,0x2a,0xfd]
          vcvtsi2sd %ebp, %xmm10, %xmm7

// CHECK: vcvtsi2sdl %r13d, %xmm10, %xmm7
// CHECK:  encoding: [0xc4,0xc1,0x2b,0x2a,0xfd]
          vcvtsi2sd %r13d, %xmm10, %xmm7

// CHECK: vcvtsi2sdl (%rcx), %xmm10, %xmm7
// CHECK:  encoding: [0xc5,0xab,0x2a,0x39]
          vcvtsi2sdl (%rcx), %xmm10, %xmm7

// CHECK: vcvtsi2sdl 291(%rax,%r14,8), %xmm10, %xmm7
// CHECK:  encoding: [0xc4,0xa1,0x2b,0x2a,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vcvtsi2sdl 291(%rax,%r14,8), %xmm10, %xmm7

// CHECK: vcvtsi2sdl 508(%rdx), %xmm10, %xmm7
// CHECK:  encoding: [0xc5,0xab,0x2a,0xba,0xfc,0x01,0x00,0x00]
          vcvtsi2sdl 508(%rdx), %xmm10, %xmm7

// CHECK: vcvtsi2sdl 512(%rdx), %xmm10, %xmm7
// CHECK:  encoding: [0xc5,0xab,0x2a,0xba,0x00,0x02,0x00,0x00]
          vcvtsi2sdl 512(%rdx), %xmm10, %xmm7

// CHECK: vcvtsi2sdl -512(%rdx), %xmm10, %xmm7
// CHECK:  encoding: [0xc5,0xab,0x2a,0xba,0x00,0xfe,0xff,0xff]
          vcvtsi2sdl -512(%rdx), %xmm10, %xmm7

// CHECK: vcvtsi2sdl -516(%rdx), %xmm10, %xmm7
// CHECK:  encoding: [0xc5,0xab,0x2a,0xba,0xfc,0xfd,0xff,0xff]
          vcvtsi2sdl -516(%rdx), %xmm10, %xmm7
// CHECK: vcvtsi2sdq %rax, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x08,0x2a,0xe8]
          vcvtsi2sd %rax, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %rax,  {rn-sae}, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x18,0x2a,0xe8]
          vcvtsi2sd %rax,  {rn-sae}, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %rax,  {ru-sae}, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x58,0x2a,0xe8]
          vcvtsi2sd %rax,  {ru-sae}, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %rax,  {rd-sae}, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x38,0x2a,0xe8]
          vcvtsi2sd %rax,  {rd-sae}, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %rax,  {rz-sae}, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x78,0x2a,0xe8]
          vcvtsi2sd %rax,  {rz-sae}, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %r8, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x41,0x9f,0x08,0x2a,0xe8]
          vcvtsi2sd %r8, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %r8,  {rn-sae}, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x41,0x9f,0x18,0x2a,0xe8]
          vcvtsi2sd %r8,  {rn-sae}, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %r8,  {ru-sae}, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x41,0x9f,0x58,0x2a,0xe8]
          vcvtsi2sd %r8,  {ru-sae}, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %r8,  {rd-sae}, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x41,0x9f,0x38,0x2a,0xe8]
          vcvtsi2sd %r8,  {rd-sae}, %xmm12, %xmm29

// CHECK: vcvtsi2sdq %r8,  {rz-sae}, %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x41,0x9f,0x78,0x2a,0xe8]
          vcvtsi2sd %r8,  {rz-sae}, %xmm12, %xmm29

// CHECK: vcvtsi2sdq (%rcx), %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x08,0x2a,0x29]
          vcvtsi2sdq (%rcx), %xmm12, %xmm29

// CHECK: vcvtsi2sdq 291(%rax,%r14,8), %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x21,0x9f,0x08,0x2a,0xac,0xf0,0x23,0x01,0x00,0x00]
          vcvtsi2sdq 291(%rax,%r14,8), %xmm12, %xmm29

// CHECK: vcvtsi2sdq 1016(%rdx), %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x08,0x2a,0x6a,0x7f]
          vcvtsi2sdq 1016(%rdx), %xmm12, %xmm29

// CHECK: vcvtsi2sdq 1024(%rdx), %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x08,0x2a,0xaa,0x00,0x04,0x00,0x00]
          vcvtsi2sdq 1024(%rdx), %xmm12, %xmm29

// CHECK: vcvtsi2sdq -1024(%rdx), %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x08,0x2a,0x6a,0x80]
          vcvtsi2sdq -1024(%rdx), %xmm12, %xmm29

// CHECK: vcvtsi2sdq -1032(%rdx), %xmm12, %xmm29
// CHECK:  encoding: [0x62,0x61,0x9f,0x08,0x2a,0xaa,0xf8,0xfb,0xff,0xff]
          vcvtsi2sdq -1032(%rdx), %xmm12, %xmm29

// CHECK: vcvtsi2ssl %eax, %xmm10, %xmm15
// CHECK:  encoding: [0xc5,0x2a,0x2a,0xf8]
          vcvtsi2ss %eax, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %eax,  {rn-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x71,0x2e,0x18,0x2a,0xf8]
          vcvtsi2ss %eax,  {rn-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %eax,  {ru-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x71,0x2e,0x58,0x2a,0xf8]
          vcvtsi2ss %eax,  {ru-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %eax,  {rd-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x71,0x2e,0x38,0x2a,0xf8]
          vcvtsi2ss %eax,  {rd-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %eax,  {rz-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x71,0x2e,0x78,0x2a,0xf8]
          vcvtsi2ss %eax,  {rz-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %ebp, %xmm10, %xmm15
// CHECK:  encoding: [0xc5,0x2a,0x2a,0xfd]
          vcvtsi2ss %ebp, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %ebp,  {rn-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x71,0x2e,0x18,0x2a,0xfd]
          vcvtsi2ss %ebp,  {rn-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %ebp,  {ru-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x71,0x2e,0x58,0x2a,0xfd]
          vcvtsi2ss %ebp,  {ru-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %ebp,  {rd-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x71,0x2e,0x38,0x2a,0xfd]
          vcvtsi2ss %ebp,  {rd-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %ebp,  {rz-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x71,0x2e,0x78,0x2a,0xfd]
          vcvtsi2ss %ebp,  {rz-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %r13d, %xmm10, %xmm15
// CHECK:  encoding: [0xc4,0x41,0x2a,0x2a,0xfd]
          vcvtsi2ss %r13d, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %r13d,  {rn-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x51,0x2e,0x18,0x2a,0xfd]
          vcvtsi2ss %r13d,  {rn-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %r13d,  {ru-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x51,0x2e,0x58,0x2a,0xfd]
          vcvtsi2ss %r13d,  {ru-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %r13d,  {rd-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x51,0x2e,0x38,0x2a,0xfd]
          vcvtsi2ss %r13d,  {rd-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl %r13d,  {rz-sae}, %xmm10, %xmm15
// CHECK:  encoding: [0x62,0x51,0x2e,0x78,0x2a,0xfd]
          vcvtsi2ss %r13d,  {rz-sae}, %xmm10, %xmm15

// CHECK: vcvtsi2ssl (%rcx), %xmm10, %xmm15
// CHECK:  encoding: [0xc5,0x2a,0x2a,0x39]
          vcvtsi2ssl (%rcx), %xmm10, %xmm15

// CHECK: vcvtsi2ssl 291(%rax,%r14,8), %xmm10, %xmm15
// CHECK:  encoding: [0xc4,0x21,0x2a,0x2a,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vcvtsi2ssl 291(%rax,%r14,8), %xmm10, %xmm15

// CHECK: vcvtsi2ssl 508(%rdx), %xmm10, %xmm15
// CHECK:  encoding: [0xc5,0x2a,0x2a,0xba,0xfc,0x01,0x00,0x00]
          vcvtsi2ssl 508(%rdx), %xmm10, %xmm15

// CHECK: vcvtsi2ssl 512(%rdx), %xmm10, %xmm15
// CHECK:  encoding: [0xc5,0x2a,0x2a,0xba,0x00,0x02,0x00,0x00]
          vcvtsi2ssl 512(%rdx), %xmm10, %xmm15

// CHECK: vcvtsi2ssl -512(%rdx), %xmm10, %xmm15
// CHECK:  encoding: [0xc5,0x2a,0x2a,0xba,0x00,0xfe,0xff,0xff]
          vcvtsi2ssl -512(%rdx), %xmm10, %xmm15

// CHECK: vcvtsi2ssl -516(%rdx), %xmm10, %xmm15
// CHECK:  encoding: [0xc5,0x2a,0x2a,0xba,0xfc,0xfd,0xff,0xff]
          vcvtsi2ssl -516(%rdx), %xmm10, %xmm15
// CHECK: vcvtsi2ssq %rax, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x08,0x2a,0xc0]
          vcvtsi2ss %rax, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %rax,  {rn-sae}, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x18,0x2a,0xc0]
          vcvtsi2ss %rax,  {rn-sae}, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %rax,  {ru-sae}, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x58,0x2a,0xc0]
          vcvtsi2ss %rax,  {ru-sae}, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %rax,  {rd-sae}, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x38,0x2a,0xc0]
          vcvtsi2ss %rax,  {rd-sae}, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %rax,  {rz-sae}, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x78,0x2a,0xc0]
          vcvtsi2ss %rax,  {rz-sae}, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %r8, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xc1,0xae,0x08,0x2a,0xc0]
          vcvtsi2ss %r8, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %r8,  {rn-sae}, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xc1,0xae,0x18,0x2a,0xc0]
          vcvtsi2ss %r8,  {rn-sae}, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %r8,  {ru-sae}, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xc1,0xae,0x58,0x2a,0xc0]
          vcvtsi2ss %r8,  {ru-sae}, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %r8,  {rd-sae}, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xc1,0xae,0x38,0x2a,0xc0]
          vcvtsi2ss %r8,  {rd-sae}, %xmm10, %xmm16

// CHECK: vcvtsi2ssq %r8,  {rz-sae}, %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xc1,0xae,0x78,0x2a,0xc0]
          vcvtsi2ss %r8,  {rz-sae}, %xmm10, %xmm16

// CHECK: vcvtsi2ssq (%rcx), %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x08,0x2a,0x01]
          vcvtsi2ssq (%rcx), %xmm10, %xmm16

// CHECK: vcvtsi2ssq 291(%rax,%r14,8), %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xa1,0xae,0x08,0x2a,0x84,0xf0,0x23,0x01,0x00,0x00]
          vcvtsi2ssq 291(%rax,%r14,8), %xmm10, %xmm16

// CHECK: vcvtsi2ssq 1016(%rdx), %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x08,0x2a,0x42,0x7f]
          vcvtsi2ssq 1016(%rdx), %xmm10, %xmm16

// CHECK: vcvtsi2ssq 1024(%rdx), %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x08,0x2a,0x82,0x00,0x04,0x00,0x00]
          vcvtsi2ssq 1024(%rdx), %xmm10, %xmm16

// CHECK: vcvtsi2ssq -1024(%rdx), %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x08,0x2a,0x42,0x80]
          vcvtsi2ssq -1024(%rdx), %xmm10, %xmm16

// CHECK: vcvtsi2ssq -1032(%rdx), %xmm10, %xmm16
// CHECK:  encoding: [0x62,0xe1,0xae,0x08,0x2a,0x82,0xf8,0xfb,0xff,0xff]
          vcvtsi2ssq -1032(%rdx), %xmm10, %xmm16

// CHECK:  vcvtusi2sdl  %eax, %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x77,0x08,0x7b,0xd8]
          vcvtusi2sd %eax, %xmm1, %xmm19

// CHECK:  vcvtusi2sdl  %ebp, %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x77,0x08,0x7b,0xdd]
          vcvtusi2sd %ebp, %xmm1, %xmm19

// CHECK:  vcvtusi2sdl  %r13d, %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xc1,0x77,0x08,0x7b,0xdd]
          vcvtusi2sd %r13d, %xmm1, %xmm19

// CHECK: vcvtusi2sdl (%rcx), %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x77,0x08,0x7b,0x19]
          vcvtusi2sdl (%rcx), %xmm1, %xmm19

// CHECK: vcvtusi2sdl 291(%rax,%r14,8), %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xa1,0x77,0x08,0x7b,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vcvtusi2sdl 291(%rax,%r14,8), %xmm1, %xmm19

// CHECK: vcvtusi2sdl 508(%rdx), %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x77,0x08,0x7b,0x5a,0x7f]
          vcvtusi2sdl 508(%rdx), %xmm1, %xmm19

// CHECK: vcvtusi2sdl 512(%rdx), %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x77,0x08,0x7b,0x9a,0x00,0x02,0x00,0x00]
          vcvtusi2sdl 512(%rdx), %xmm1, %xmm19

// CHECK: vcvtusi2sdl -512(%rdx), %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x77,0x08,0x7b,0x5a,0x80]
          vcvtusi2sdl -512(%rdx), %xmm1, %xmm19

// CHECK: vcvtusi2sdl -516(%rdx), %xmm1, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x77,0x08,0x7b,0x9a,0xfc,0xfd,0xff,0xff]
          vcvtusi2sdl -516(%rdx), %xmm1, %xmm19

// CHECK: vcvtusi2sdq %rax, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x00,0x7b,0xf0]
          vcvtusi2sd %rax, %xmm26, %xmm14

// CHECK: vcvtusi2sdq %rax, {rn-sae}, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x10,0x7b,0xf0]
          vcvtusi2sd %rax, {rn-sae}, %xmm26, %xmm14

// CHECK: vcvtusi2sdq %rax, {ru-sae}, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x50,0x7b,0xf0]
          vcvtusi2sd %rax, {ru-sae}, %xmm26, %xmm14

// CHECK: vcvtusi2sdq %rax, {rd-sae}, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x30,0x7b,0xf0]
          vcvtusi2sd %rax, {rd-sae}, %xmm26, %xmm14

// CHECK: vcvtusi2sdq %rax, {rz-sae}, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x70,0x7b,0xf0]
          vcvtusi2sd %rax, {rz-sae}, %xmm26, %xmm14

// CHECK: vcvtusi2sdq %r8, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x51,0xaf,0x00,0x7b,0xf0]
          vcvtusi2sd %r8, %xmm26, %xmm14

// CHECK: vcvtusi2sdq %r8, {rn-sae}, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x51,0xaf,0x10,0x7b,0xf0]
          vcvtusi2sd %r8, {rn-sae}, %xmm26, %xmm14

// CHECK:  vcvtusi2sdq  %r8, {ru-sae}, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x51,0xaf,0x50,0x7b,0xf0]
          vcvtusi2sd %r8, {ru-sae}, %xmm26, %xmm14

// CHECK:  vcvtusi2sdq  %r8, {rd-sae}, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x51,0xaf,0x30,0x7b,0xf0]
          vcvtusi2sd %r8, {rd-sae}, %xmm26, %xmm14

// CHECK:  vcvtusi2sdq  %r8, {rz-sae}, %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x51,0xaf,0x70,0x7b,0xf0]
          vcvtusi2sd %r8, {rz-sae}, %xmm26, %xmm14

// CHECK: vcvtusi2sdq (%rcx), %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x00,0x7b,0x31]
          vcvtusi2sdq (%rcx), %xmm26, %xmm14

// CHECK: vcvtusi2sdq 291(%rax,%r14,8), %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x31,0xaf,0x00,0x7b,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vcvtusi2sdq 291(%rax,%r14,8), %xmm26, %xmm14

// CHECK: vcvtusi2sdq 1016(%rdx), %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x00,0x7b,0x72,0x7f]
          vcvtusi2sdq 1016(%rdx), %xmm26, %xmm14

// CHECK: vcvtusi2sdq 1024(%rdx), %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x00,0x7b,0xb2,0x00,0x04,0x00,0x00]
          vcvtusi2sdq 1024(%rdx), %xmm26, %xmm14

// CHECK: vcvtusi2sdq -1024(%rdx), %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x00,0x7b,0x72,0x80]
          vcvtusi2sdq -1024(%rdx), %xmm26, %xmm14

// CHECK: vcvtusi2sdq -1032(%rdx), %xmm26, %xmm14
// CHECK:  encoding: [0x62,0x71,0xaf,0x00,0x7b,0xb2,0xf8,0xfb,0xff,0xff]
          vcvtusi2sdq -1032(%rdx), %xmm26, %xmm14

// CHECK: vcvtusi2ssl %eax, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x00,0x7b,0xe8]
          vcvtusi2ss %eax, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %eax, {rn-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x10,0x7b,0xe8]
          vcvtusi2ss %eax, {rn-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %eax, {ru-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x50,0x7b,0xe8]
          vcvtusi2ss %eax, {ru-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %eax, {rd-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x30,0x7b,0xe8]
          vcvtusi2ss %eax, {rd-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %eax, {rz-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x70,0x7b,0xe8]
          vcvtusi2ss %eax, {rz-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %ebp, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x00,0x7b,0xed]
          vcvtusi2ss %ebp, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %ebp, {rn-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x10,0x7b,0xed]
          vcvtusi2ss %ebp, {rn-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %ebp, {ru-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x50,0x7b,0xed]
          vcvtusi2ss %ebp, {ru-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %ebp, {rd-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x30,0x7b,0xed]
          vcvtusi2ss %ebp, {rd-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %ebp, {rz-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x70,0x7b,0xed]
          vcvtusi2ss %ebp, {rz-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %r13d, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xd1,0x2e,0x00,0x7b,0xed]
          vcvtusi2ss %r13d, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %r13d, {rn-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xd1,0x2e,0x10,0x7b,0xed]
          vcvtusi2ss %r13d, {rn-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %r13d, {ru-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xd1,0x2e,0x50,0x7b,0xed]
          vcvtusi2ss %r13d, {ru-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %r13d, {rd-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xd1,0x2e,0x30,0x7b,0xed]
          vcvtusi2ss %r13d, {rd-sae}, %xmm26, %xmm5

// CHECK:  vcvtusi2ssl  %r13d, {rz-sae}, %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xd1,0x2e,0x70,0x7b,0xed]
          vcvtusi2ss %r13d, {rz-sae}, %xmm26, %xmm5

// CHECK: vcvtusi2ssl (%rcx), %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x00,0x7b,0x29]
          vcvtusi2ssl (%rcx), %xmm26, %xmm5

// CHECK: vcvtusi2ssl 291(%rax,%r14,8), %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xb1,0x2e,0x00,0x7b,0xac,0xf0,0x23,0x01,0x00,0x00]
          vcvtusi2ssl 291(%rax,%r14,8), %xmm26, %xmm5

// CHECK: vcvtusi2ssl 508(%rdx), %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x00,0x7b,0x6a,0x7f]
          vcvtusi2ssl 508(%rdx), %xmm26, %xmm5

// CHECK: vcvtusi2ssl 512(%rdx), %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x00,0x7b,0xaa,0x00,0x02,0x00,0x00]
          vcvtusi2ssl 512(%rdx), %xmm26, %xmm5

// CHECK: vcvtusi2ssl -512(%rdx), %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x00,0x7b,0x6a,0x80]
          vcvtusi2ssl -512(%rdx), %xmm26, %xmm5

// CHECK: vcvtusi2ssl -516(%rdx), %xmm26, %xmm5
// CHECK:  encoding: [0x62,0xf1,0x2e,0x00,0x7b,0xaa,0xfc,0xfd,0xff,0xff]
          vcvtusi2ssl -516(%rdx), %xmm26, %xmm5

// CHECK:  vcvtusi2ssq  %rax, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x00,0x7b,0xf0]
          vcvtusi2ss %rax, %xmm22, %xmm14

// CHECK:  vcvtusi2ssq  %rax, {rn-sae}, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x10,0x7b,0xf0]
          vcvtusi2ss %rax, {rn-sae}, %xmm22, %xmm14

// CHECK:  vcvtusi2ssq  %rax, {ru-sae}, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x50,0x7b,0xf0]
          vcvtusi2ss %rax, {ru-sae}, %xmm22, %xmm14

// CHECK:  vcvtusi2ssq  %rax, {rd-sae}, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x30,0x7b,0xf0]
          vcvtusi2ss %rax, {rd-sae}, %xmm22, %xmm14

// CHECK:  vcvtusi2ssq  %rax, {rz-sae}, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x70,0x7b,0xf0]
          vcvtusi2ss %rax, {rz-sae}, %xmm22, %xmm14

// CHECK:  vcvtusi2ssq  %r8, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x51,0xce,0x00,0x7b,0xf0]
          vcvtusi2ss %r8, %xmm22, %xmm14

// CHECK:  vcvtusi2ssq  %r8, {rn-sae}, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x51,0xce,0x10,0x7b,0xf0]
          vcvtusi2ss %r8, {rn-sae}, %xmm22, %xmm14

// CHECK:  vcvtusi2ssq  %r8, {ru-sae}, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x51,0xce,0x50,0x7b,0xf0]
          vcvtusi2ss %r8, {ru-sae}, %xmm22, %xmm14

// CHECK:  vcvtusi2ssq  %r8, {rd-sae}, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x51,0xce,0x30,0x7b,0xf0]
          vcvtusi2ss %r8, {rd-sae}, %xmm22, %xmm14

// CHECK: vcvtusi2ssq %r8, {rz-sae}, %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x51,0xce,0x70,0x7b,0xf0]
          vcvtusi2ss %r8, {rz-sae}, %xmm22, %xmm14

// CHECK: vcvtusi2ssq (%rcx), %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x00,0x7b,0x31]
          vcvtusi2ssq (%rcx), %xmm22, %xmm14

// CHECK: vcvtusi2ssq 291(%rax,%r14,8), %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x31,0xce,0x00,0x7b,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vcvtusi2ssq 291(%rax,%r14,8), %xmm22, %xmm14

// CHECK: vcvtusi2ssq 1016(%rdx), %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x00,0x7b,0x72,0x7f]
          vcvtusi2ssq 1016(%rdx), %xmm22, %xmm14

// CHECK: vcvtusi2ssq 1024(%rdx), %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x00,0x7b,0xb2,0x00,0x04,0x00,0x00]
          vcvtusi2ssq 1024(%rdx), %xmm22, %xmm14

// CHECK: vcvtusi2ssq -1024(%rdx), %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x00,0x7b,0x72,0x80]
          vcvtusi2ssq -1024(%rdx), %xmm22, %xmm14

// CHECK: vcvtusi2ssq -1032(%rdx), %xmm22, %xmm14
// CHECK:  encoding: [0x62,0x71,0xce,0x00,0x7b,0xb2,0xf8,0xfb,0xff,0xff]
          vcvtusi2ssq -1032(%rdx), %xmm22, %xmm14

// CHECK: vfmadd132ps %zmm25, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0x92,0x5d,0x40,0x98,0xc9]
          vfmadd132ps %zmm25, %zmm20, %zmm1

// CHECK: vfmadd132ps %zmm25, %zmm20, %zmm1 {%k1}
// CHECK:  encoding: [0x62,0x92,0x5d,0x41,0x98,0xc9]
          vfmadd132ps %zmm25, %zmm20, %zmm1 {%k1}

// CHECK: vfmadd132ps %zmm25, %zmm20, %zmm1 {%k1} {z}
// CHECK:  encoding: [0x62,0x92,0x5d,0xc1,0x98,0xc9]
          vfmadd132ps %zmm25, %zmm20, %zmm1 {%k1} {z}

// CHECK: vfmadd132ps {rn-sae}, %zmm25, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0x92,0x5d,0x10,0x98,0xc9]
          vfmadd132ps {rn-sae}, %zmm25, %zmm20, %zmm1

// CHECK: vfmadd132ps {ru-sae}, %zmm25, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0x92,0x5d,0x50,0x98,0xc9]
          vfmadd132ps {ru-sae}, %zmm25, %zmm20, %zmm1

// CHECK: vfmadd132ps {rd-sae}, %zmm25, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0x92,0x5d,0x30,0x98,0xc9]
          vfmadd132ps {rd-sae}, %zmm25, %zmm20, %zmm1

// CHECK: vfmadd132ps {rz-sae}, %zmm25, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0x92,0x5d,0x70,0x98,0xc9]
          vfmadd132ps {rz-sae}, %zmm25, %zmm20, %zmm1

// CHECK: vfmadd132ps (%rcx), %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x40,0x98,0x09]
          vfmadd132ps (%rcx), %zmm20, %zmm1

// CHECK: vfmadd132ps 291(%rax,%r14,8), %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xb2,0x5d,0x40,0x98,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmadd132ps 291(%rax,%r14,8), %zmm20, %zmm1

// CHECK: vfmadd132ps (%rcx){1to16}, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x50,0x98,0x09]
          vfmadd132ps (%rcx){1to16}, %zmm20, %zmm1

// CHECK: vfmadd132ps 8128(%rdx), %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x40,0x98,0x4a,0x7f]
          vfmadd132ps 8128(%rdx), %zmm20, %zmm1

// CHECK: vfmadd132ps 8192(%rdx), %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x40,0x98,0x8a,0x00,0x20,0x00,0x00]
          vfmadd132ps 8192(%rdx), %zmm20, %zmm1

// CHECK: vfmadd132ps -8192(%rdx), %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x40,0x98,0x4a,0x80]
          vfmadd132ps -8192(%rdx), %zmm20, %zmm1

// CHECK: vfmadd132ps -8256(%rdx), %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x40,0x98,0x8a,0xc0,0xdf,0xff,0xff]
          vfmadd132ps -8256(%rdx), %zmm20, %zmm1

// CHECK: vfmadd132ps 508(%rdx){1to16}, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x50,0x98,0x4a,0x7f]
          vfmadd132ps 508(%rdx){1to16}, %zmm20, %zmm1

// CHECK: vfmadd132ps 512(%rdx){1to16}, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x50,0x98,0x8a,0x00,0x02,0x00,0x00]
          vfmadd132ps 512(%rdx){1to16}, %zmm20, %zmm1

// CHECK: vfmadd132ps -512(%rdx){1to16}, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x50,0x98,0x4a,0x80]
          vfmadd132ps -512(%rdx){1to16}, %zmm20, %zmm1

// CHECK: vfmadd132ps -516(%rdx){1to16}, %zmm20, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x5d,0x50,0x98,0x8a,0xfc,0xfd,0xff,0xff]
          vfmadd132ps -516(%rdx){1to16}, %zmm20, %zmm1

// CHECK: vfmadd132pd %zmm21, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x22,0xfd,0x40,0x98,0xd5]
          vfmadd132pd %zmm21, %zmm16, %zmm26

// CHECK: vfmadd132pd %zmm21, %zmm16, %zmm26 {%k5}
// CHECK:  encoding: [0x62,0x22,0xfd,0x45,0x98,0xd5]
          vfmadd132pd %zmm21, %zmm16, %zmm26 {%k5}

// CHECK: vfmadd132pd %zmm21, %zmm16, %zmm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0xfd,0xc5,0x98,0xd5]
          vfmadd132pd %zmm21, %zmm16, %zmm26 {%k5} {z}

// CHECK: vfmadd132pd {rn-sae}, %zmm21, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x22,0xfd,0x10,0x98,0xd5]
          vfmadd132pd {rn-sae}, %zmm21, %zmm16, %zmm26

// CHECK: vfmadd132pd {ru-sae}, %zmm21, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x22,0xfd,0x50,0x98,0xd5]
          vfmadd132pd {ru-sae}, %zmm21, %zmm16, %zmm26

// CHECK: vfmadd132pd {rd-sae}, %zmm21, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x22,0xfd,0x30,0x98,0xd5]
          vfmadd132pd {rd-sae}, %zmm21, %zmm16, %zmm26

// CHECK: vfmadd132pd {rz-sae}, %zmm21, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x22,0xfd,0x70,0x98,0xd5]
          vfmadd132pd {rz-sae}, %zmm21, %zmm16, %zmm26

// CHECK: vfmadd132pd (%rcx), %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x40,0x98,0x11]
          vfmadd132pd (%rcx), %zmm16, %zmm26

// CHECK: vfmadd132pd 291(%rax,%r14,8), %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x22,0xfd,0x40,0x98,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmadd132pd 291(%rax,%r14,8), %zmm16, %zmm26

// CHECK: vfmadd132pd (%rcx){1to8}, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x50,0x98,0x11]
          vfmadd132pd (%rcx){1to8}, %zmm16, %zmm26

// CHECK: vfmadd132pd 8128(%rdx), %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x40,0x98,0x52,0x7f]
          vfmadd132pd 8128(%rdx), %zmm16, %zmm26

// CHECK: vfmadd132pd 8192(%rdx), %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x40,0x98,0x92,0x00,0x20,0x00,0x00]
          vfmadd132pd 8192(%rdx), %zmm16, %zmm26

// CHECK: vfmadd132pd -8192(%rdx), %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x40,0x98,0x52,0x80]
          vfmadd132pd -8192(%rdx), %zmm16, %zmm26

// CHECK: vfmadd132pd -8256(%rdx), %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x40,0x98,0x92,0xc0,0xdf,0xff,0xff]
          vfmadd132pd -8256(%rdx), %zmm16, %zmm26

// CHECK: vfmadd132pd 1016(%rdx){1to8}, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x50,0x98,0x52,0x7f]
          vfmadd132pd 1016(%rdx){1to8}, %zmm16, %zmm26

// CHECK: vfmadd132pd 1024(%rdx){1to8}, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x50,0x98,0x92,0x00,0x04,0x00,0x00]
          vfmadd132pd 1024(%rdx){1to8}, %zmm16, %zmm26

// CHECK: vfmadd132pd -1024(%rdx){1to8}, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x50,0x98,0x52,0x80]
          vfmadd132pd -1024(%rdx){1to8}, %zmm16, %zmm26

// CHECK: vfmadd132pd -1032(%rdx){1to8}, %zmm16, %zmm26
// CHECK:  encoding: [0x62,0x62,0xfd,0x50,0x98,0x92,0xf8,0xfb,0xff,0xff]
          vfmadd132pd -1032(%rdx){1to8}, %zmm16, %zmm26

// CHECK: vfmadd213ps %zmm14, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xc2,0x65,0x40,0xa8,0xe6]
          vfmadd213ps %zmm14, %zmm19, %zmm20

// CHECK: vfmadd213ps %zmm14, %zmm19, %zmm20 {%k4}
// CHECK:  encoding: [0x62,0xc2,0x65,0x44,0xa8,0xe6]
          vfmadd213ps %zmm14, %zmm19, %zmm20 {%k4}

// CHECK: vfmadd213ps %zmm14, %zmm19, %zmm20 {%k4} {z}
// CHECK:  encoding: [0x62,0xc2,0x65,0xc4,0xa8,0xe6]
          vfmadd213ps %zmm14, %zmm19, %zmm20 {%k4} {z}

// CHECK: vfmadd213ps {rn-sae}, %zmm14, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xc2,0x65,0x10,0xa8,0xe6]
          vfmadd213ps {rn-sae}, %zmm14, %zmm19, %zmm20

// CHECK: vfmadd213ps {ru-sae}, %zmm14, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xc2,0x65,0x50,0xa8,0xe6]
          vfmadd213ps {ru-sae}, %zmm14, %zmm19, %zmm20

// CHECK: vfmadd213ps {rd-sae}, %zmm14, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xc2,0x65,0x30,0xa8,0xe6]
          vfmadd213ps {rd-sae}, %zmm14, %zmm19, %zmm20

// CHECK: vfmadd213ps {rz-sae}, %zmm14, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xc2,0x65,0x70,0xa8,0xe6]
          vfmadd213ps {rz-sae}, %zmm14, %zmm19, %zmm20

// CHECK: vfmadd213ps (%rcx), %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x40,0xa8,0x21]
          vfmadd213ps (%rcx), %zmm19, %zmm20

// CHECK: vfmadd213ps 291(%rax,%r14,8), %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xa2,0x65,0x40,0xa8,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd213ps 291(%rax,%r14,8), %zmm19, %zmm20

// CHECK: vfmadd213ps (%rcx){1to16}, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x50,0xa8,0x21]
          vfmadd213ps (%rcx){1to16}, %zmm19, %zmm20

// CHECK: vfmadd213ps 8128(%rdx), %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x40,0xa8,0x62,0x7f]
          vfmadd213ps 8128(%rdx), %zmm19, %zmm20

// CHECK: vfmadd213ps 8192(%rdx), %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x40,0xa8,0xa2,0x00,0x20,0x00,0x00]
          vfmadd213ps 8192(%rdx), %zmm19, %zmm20

// CHECK: vfmadd213ps -8192(%rdx), %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x40,0xa8,0x62,0x80]
          vfmadd213ps -8192(%rdx), %zmm19, %zmm20

// CHECK: vfmadd213ps -8256(%rdx), %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x40,0xa8,0xa2,0xc0,0xdf,0xff,0xff]
          vfmadd213ps -8256(%rdx), %zmm19, %zmm20

// CHECK: vfmadd213ps 508(%rdx){1to16}, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x50,0xa8,0x62,0x7f]
          vfmadd213ps 508(%rdx){1to16}, %zmm19, %zmm20

// CHECK: vfmadd213ps 512(%rdx){1to16}, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x50,0xa8,0xa2,0x00,0x02,0x00,0x00]
          vfmadd213ps 512(%rdx){1to16}, %zmm19, %zmm20

// CHECK: vfmadd213ps -512(%rdx){1to16}, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x50,0xa8,0x62,0x80]
          vfmadd213ps -512(%rdx){1to16}, %zmm19, %zmm20

// CHECK: vfmadd213ps -516(%rdx){1to16}, %zmm19, %zmm20
// CHECK:  encoding: [0x62,0xe2,0x65,0x50,0xa8,0xa2,0xfc,0xfd,0xff,0xff]
          vfmadd213ps -516(%rdx){1to16}, %zmm19, %zmm20

// CHECK: vfmadd213pd %zmm25, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0x82,0xfd,0x40,0xa8,0xd1]
          vfmadd213pd %zmm25, %zmm16, %zmm18

// CHECK: vfmadd213pd %zmm25, %zmm16, %zmm18 {%k3}
// CHECK:  encoding: [0x62,0x82,0xfd,0x43,0xa8,0xd1]
          vfmadd213pd %zmm25, %zmm16, %zmm18 {%k3}

// CHECK: vfmadd213pd %zmm25, %zmm16, %zmm18 {%k3} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0xc3,0xa8,0xd1]
          vfmadd213pd %zmm25, %zmm16, %zmm18 {%k3} {z}

// CHECK: vfmadd213pd {rn-sae}, %zmm25, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0x82,0xfd,0x10,0xa8,0xd1]
          vfmadd213pd {rn-sae}, %zmm25, %zmm16, %zmm18

// CHECK: vfmadd213pd {ru-sae}, %zmm25, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0x82,0xfd,0x50,0xa8,0xd1]
          vfmadd213pd {ru-sae}, %zmm25, %zmm16, %zmm18

// CHECK: vfmadd213pd {rd-sae}, %zmm25, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0x82,0xfd,0x30,0xa8,0xd1]
          vfmadd213pd {rd-sae}, %zmm25, %zmm16, %zmm18

// CHECK: vfmadd213pd {rz-sae}, %zmm25, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0x82,0xfd,0x70,0xa8,0xd1]
          vfmadd213pd {rz-sae}, %zmm25, %zmm16, %zmm18

// CHECK: vfmadd213pd (%rcx), %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xa8,0x11]
          vfmadd213pd (%rcx), %zmm16, %zmm18

// CHECK: vfmadd213pd 291(%rax,%r14,8), %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xa2,0xfd,0x40,0xa8,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmadd213pd 291(%rax,%r14,8), %zmm16, %zmm18

// CHECK: vfmadd213pd (%rcx){1to8}, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xa8,0x11]
          vfmadd213pd (%rcx){1to8}, %zmm16, %zmm18

// CHECK: vfmadd213pd 8128(%rdx), %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xa8,0x52,0x7f]
          vfmadd213pd 8128(%rdx), %zmm16, %zmm18

// CHECK: vfmadd213pd 8192(%rdx), %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xa8,0x92,0x00,0x20,0x00,0x00]
          vfmadd213pd 8192(%rdx), %zmm16, %zmm18

// CHECK: vfmadd213pd -8192(%rdx), %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xa8,0x52,0x80]
          vfmadd213pd -8192(%rdx), %zmm16, %zmm18

// CHECK: vfmadd213pd -8256(%rdx), %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xa8,0x92,0xc0,0xdf,0xff,0xff]
          vfmadd213pd -8256(%rdx), %zmm16, %zmm18

// CHECK: vfmadd213pd 1016(%rdx){1to8}, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xa8,0x52,0x7f]
          vfmadd213pd 1016(%rdx){1to8}, %zmm16, %zmm18

// CHECK: vfmadd213pd 1024(%rdx){1to8}, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xa8,0x92,0x00,0x04,0x00,0x00]
          vfmadd213pd 1024(%rdx){1to8}, %zmm16, %zmm18

// CHECK: vfmadd213pd -1024(%rdx){1to8}, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xa8,0x52,0x80]
          vfmadd213pd -1024(%rdx){1to8}, %zmm16, %zmm18

// CHECK: vfmadd213pd -1032(%rdx){1to8}, %zmm16, %zmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xa8,0x92,0xf8,0xfb,0xff,0xff]
          vfmadd213pd -1032(%rdx){1to8}, %zmm16, %zmm18

// CHECK: vfmadd231ps %zmm25, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x02,0x1d,0x40,0xb8,0xd9]
          vfmadd231ps %zmm25, %zmm28, %zmm27

// CHECK: vfmadd231ps %zmm25, %zmm28, %zmm27 {%k3}
// CHECK:  encoding: [0x62,0x02,0x1d,0x43,0xb8,0xd9]
          vfmadd231ps %zmm25, %zmm28, %zmm27 {%k3}

// CHECK: vfmadd231ps %zmm25, %zmm28, %zmm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0x1d,0xc3,0xb8,0xd9]
          vfmadd231ps %zmm25, %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd231ps {rn-sae}, %zmm25, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x02,0x1d,0x10,0xb8,0xd9]
          vfmadd231ps {rn-sae}, %zmm25, %zmm28, %zmm27

// CHECK: vfmadd231ps {ru-sae}, %zmm25, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x02,0x1d,0x50,0xb8,0xd9]
          vfmadd231ps {ru-sae}, %zmm25, %zmm28, %zmm27

// CHECK: vfmadd231ps {rd-sae}, %zmm25, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x02,0x1d,0x30,0xb8,0xd9]
          vfmadd231ps {rd-sae}, %zmm25, %zmm28, %zmm27

// CHECK: vfmadd231ps {rz-sae}, %zmm25, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x02,0x1d,0x70,0xb8,0xd9]
          vfmadd231ps {rz-sae}, %zmm25, %zmm28, %zmm27

// CHECK: vfmadd231ps (%rcx), %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x40,0xb8,0x19]
          vfmadd231ps (%rcx), %zmm28, %zmm27

// CHECK: vfmadd231ps 291(%rax,%r14,8), %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x22,0x1d,0x40,0xb8,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfmadd231ps 291(%rax,%r14,8), %zmm28, %zmm27

// CHECK: vfmadd231ps (%rcx){1to16}, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x50,0xb8,0x19]
          vfmadd231ps (%rcx){1to16}, %zmm28, %zmm27

// CHECK: vfmadd231ps 8128(%rdx), %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x40,0xb8,0x5a,0x7f]
          vfmadd231ps 8128(%rdx), %zmm28, %zmm27

// CHECK: vfmadd231ps 8192(%rdx), %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x40,0xb8,0x9a,0x00,0x20,0x00,0x00]
          vfmadd231ps 8192(%rdx), %zmm28, %zmm27

// CHECK: vfmadd231ps -8192(%rdx), %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x40,0xb8,0x5a,0x80]
          vfmadd231ps -8192(%rdx), %zmm28, %zmm27

// CHECK: vfmadd231ps -8256(%rdx), %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x40,0xb8,0x9a,0xc0,0xdf,0xff,0xff]
          vfmadd231ps -8256(%rdx), %zmm28, %zmm27

// CHECK: vfmadd231ps 508(%rdx){1to16}, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x50,0xb8,0x5a,0x7f]
          vfmadd231ps 508(%rdx){1to16}, %zmm28, %zmm27

// CHECK: vfmadd231ps 512(%rdx){1to16}, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x50,0xb8,0x9a,0x00,0x02,0x00,0x00]
          vfmadd231ps 512(%rdx){1to16}, %zmm28, %zmm27

// CHECK: vfmadd231ps -512(%rdx){1to16}, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x50,0xb8,0x5a,0x80]
          vfmadd231ps -512(%rdx){1to16}, %zmm28, %zmm27

// CHECK: vfmadd231ps -516(%rdx){1to16}, %zmm28, %zmm27
// CHECK:  encoding: [0x62,0x62,0x1d,0x50,0xb8,0x9a,0xfc,0xfd,0xff,0xff]
          vfmadd231ps -516(%rdx){1to16}, %zmm28, %zmm27

// CHECK: vfmadd231pd %zmm9, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x42,0xcd,0x48,0xb8,0xf1]
          vfmadd231pd %zmm9, %zmm6, %zmm30

// CHECK: vfmadd231pd %zmm9, %zmm6, %zmm30 {%k4}
// CHECK:  encoding: [0x62,0x42,0xcd,0x4c,0xb8,0xf1]
          vfmadd231pd %zmm9, %zmm6, %zmm30 {%k4}

// CHECK: vfmadd231pd %zmm9, %zmm6, %zmm30 {%k4} {z}
// CHECK:  encoding: [0x62,0x42,0xcd,0xcc,0xb8,0xf1]
          vfmadd231pd %zmm9, %zmm6, %zmm30 {%k4} {z}

// CHECK: vfmadd231pd {rn-sae}, %zmm9, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x42,0xcd,0x18,0xb8,0xf1]
          vfmadd231pd {rn-sae}, %zmm9, %zmm6, %zmm30

// CHECK: vfmadd231pd {ru-sae}, %zmm9, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x42,0xcd,0x58,0xb8,0xf1]
          vfmadd231pd {ru-sae}, %zmm9, %zmm6, %zmm30

// CHECK: vfmadd231pd {rd-sae}, %zmm9, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x42,0xcd,0x38,0xb8,0xf1]
          vfmadd231pd {rd-sae}, %zmm9, %zmm6, %zmm30

// CHECK: vfmadd231pd {rz-sae}, %zmm9, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x42,0xcd,0x78,0xb8,0xf1]
          vfmadd231pd {rz-sae}, %zmm9, %zmm6, %zmm30

// CHECK: vfmadd231pd (%rcx), %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xb8,0x31]
          vfmadd231pd (%rcx), %zmm6, %zmm30

// CHECK: vfmadd231pd 291(%rax,%r14,8), %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x22,0xcd,0x48,0xb8,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd231pd 291(%rax,%r14,8), %zmm6, %zmm30

// CHECK: vfmadd231pd (%rcx){1to8}, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xb8,0x31]
          vfmadd231pd (%rcx){1to8}, %zmm6, %zmm30

// CHECK: vfmadd231pd 8128(%rdx), %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xb8,0x72,0x7f]
          vfmadd231pd 8128(%rdx), %zmm6, %zmm30

// CHECK: vfmadd231pd 8192(%rdx), %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xb8,0xb2,0x00,0x20,0x00,0x00]
          vfmadd231pd 8192(%rdx), %zmm6, %zmm30

// CHECK: vfmadd231pd -8192(%rdx), %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xb8,0x72,0x80]
          vfmadd231pd -8192(%rdx), %zmm6, %zmm30

// CHECK: vfmadd231pd -8256(%rdx), %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xb8,0xb2,0xc0,0xdf,0xff,0xff]
          vfmadd231pd -8256(%rdx), %zmm6, %zmm30

// CHECK: vfmadd231pd 1016(%rdx){1to8}, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xb8,0x72,0x7f]
          vfmadd231pd 1016(%rdx){1to8}, %zmm6, %zmm30

// CHECK: vfmadd231pd 1024(%rdx){1to8}, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xb8,0xb2,0x00,0x04,0x00,0x00]
          vfmadd231pd 1024(%rdx){1to8}, %zmm6, %zmm30

// CHECK: vfmadd231pd -1024(%rdx){1to8}, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xb8,0x72,0x80]
          vfmadd231pd -1024(%rdx){1to8}, %zmm6, %zmm30

// CHECK: vfmadd231pd -1032(%rdx){1to8}, %zmm6, %zmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xb8,0xb2,0xf8,0xfb,0xff,0xff]
          vfmadd231pd -1032(%rdx){1to8}, %zmm6, %zmm30

// CHECK: vfmsub132ps %zmm16, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xb2,0x15,0x48,0x9a,0xc8]
          vfmsub132ps %zmm16, %zmm13, %zmm1

// CHECK: vfmsub132ps %zmm16, %zmm13, %zmm1 {%k4}
// CHECK:  encoding: [0x62,0xb2,0x15,0x4c,0x9a,0xc8]
          vfmsub132ps %zmm16, %zmm13, %zmm1 {%k4}

// CHECK: vfmsub132ps %zmm16, %zmm13, %zmm1 {%k4} {z}
// CHECK:  encoding: [0x62,0xb2,0x15,0xcc,0x9a,0xc8]
          vfmsub132ps %zmm16, %zmm13, %zmm1 {%k4} {z}

// CHECK: vfmsub132ps {rn-sae}, %zmm16, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xb2,0x15,0x18,0x9a,0xc8]
          vfmsub132ps {rn-sae}, %zmm16, %zmm13, %zmm1

// CHECK: vfmsub132ps {ru-sae}, %zmm16, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xb2,0x15,0x58,0x9a,0xc8]
          vfmsub132ps {ru-sae}, %zmm16, %zmm13, %zmm1

// CHECK: vfmsub132ps {rd-sae}, %zmm16, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xb2,0x15,0x38,0x9a,0xc8]
          vfmsub132ps {rd-sae}, %zmm16, %zmm13, %zmm1

// CHECK: vfmsub132ps {rz-sae}, %zmm16, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xb2,0x15,0x78,0x9a,0xc8]
          vfmsub132ps {rz-sae}, %zmm16, %zmm13, %zmm1

// CHECK: vfmsub132ps (%rcx), %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x9a,0x09]
          vfmsub132ps (%rcx), %zmm13, %zmm1

// CHECK: vfmsub132ps 291(%rax,%r14,8), %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xb2,0x15,0x48,0x9a,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmsub132ps 291(%rax,%r14,8), %zmm13, %zmm1

// CHECK: vfmsub132ps (%rcx){1to16}, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x9a,0x09]
          vfmsub132ps (%rcx){1to16}, %zmm13, %zmm1

// CHECK: vfmsub132ps 8128(%rdx), %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x9a,0x4a,0x7f]
          vfmsub132ps 8128(%rdx), %zmm13, %zmm1

// CHECK: vfmsub132ps 8192(%rdx), %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x9a,0x8a,0x00,0x20,0x00,0x00]
          vfmsub132ps 8192(%rdx), %zmm13, %zmm1

// CHECK: vfmsub132ps -8192(%rdx), %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x9a,0x4a,0x80]
          vfmsub132ps -8192(%rdx), %zmm13, %zmm1

// CHECK: vfmsub132ps -8256(%rdx), %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x9a,0x8a,0xc0,0xdf,0xff,0xff]
          vfmsub132ps -8256(%rdx), %zmm13, %zmm1

// CHECK: vfmsub132ps 508(%rdx){1to16}, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x9a,0x4a,0x7f]
          vfmsub132ps 508(%rdx){1to16}, %zmm13, %zmm1

// CHECK: vfmsub132ps 512(%rdx){1to16}, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x9a,0x8a,0x00,0x02,0x00,0x00]
          vfmsub132ps 512(%rdx){1to16}, %zmm13, %zmm1

// CHECK: vfmsub132ps -512(%rdx){1to16}, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x9a,0x4a,0x80]
          vfmsub132ps -512(%rdx){1to16}, %zmm13, %zmm1

// CHECK: vfmsub132ps -516(%rdx){1to16}, %zmm13, %zmm1
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x9a,0x8a,0xfc,0xfd,0xff,0xff]
          vfmsub132ps -516(%rdx){1to16}, %zmm13, %zmm1

// CHECK: vfmsub132pd %zmm27, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0x82,0x9d,0x48,0x9a,0xf3]
          vfmsub132pd %zmm27, %zmm12, %zmm22

// CHECK: vfmsub132pd %zmm27, %zmm12, %zmm22 {%k2}
// CHECK:  encoding: [0x62,0x82,0x9d,0x4a,0x9a,0xf3]
          vfmsub132pd %zmm27, %zmm12, %zmm22 {%k2}

// CHECK: vfmsub132pd %zmm27, %zmm12, %zmm22 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x9d,0xca,0x9a,0xf3]
          vfmsub132pd %zmm27, %zmm12, %zmm22 {%k2} {z}

// CHECK: vfmsub132pd {rn-sae}, %zmm27, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0x82,0x9d,0x18,0x9a,0xf3]
          vfmsub132pd {rn-sae}, %zmm27, %zmm12, %zmm22

// CHECK: vfmsub132pd {ru-sae}, %zmm27, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0x82,0x9d,0x58,0x9a,0xf3]
          vfmsub132pd {ru-sae}, %zmm27, %zmm12, %zmm22

// CHECK: vfmsub132pd {rd-sae}, %zmm27, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0x82,0x9d,0x38,0x9a,0xf3]
          vfmsub132pd {rd-sae}, %zmm27, %zmm12, %zmm22

// CHECK: vfmsub132pd {rz-sae}, %zmm27, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0x82,0x9d,0x78,0x9a,0xf3]
          vfmsub132pd {rz-sae}, %zmm27, %zmm12, %zmm22

// CHECK: vfmsub132pd (%rcx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x48,0x9a,0x31]
          vfmsub132pd (%rcx), %zmm12, %zmm22

// CHECK: vfmsub132pd 291(%rax,%r14,8), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xa2,0x9d,0x48,0x9a,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub132pd 291(%rax,%r14,8), %zmm12, %zmm22

// CHECK: vfmsub132pd (%rcx){1to8}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x58,0x9a,0x31]
          vfmsub132pd (%rcx){1to8}, %zmm12, %zmm22

// CHECK: vfmsub132pd 8128(%rdx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x48,0x9a,0x72,0x7f]
          vfmsub132pd 8128(%rdx), %zmm12, %zmm22

// CHECK: vfmsub132pd 8192(%rdx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x48,0x9a,0xb2,0x00,0x20,0x00,0x00]
          vfmsub132pd 8192(%rdx), %zmm12, %zmm22

// CHECK: vfmsub132pd -8192(%rdx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x48,0x9a,0x72,0x80]
          vfmsub132pd -8192(%rdx), %zmm12, %zmm22

// CHECK: vfmsub132pd -8256(%rdx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x48,0x9a,0xb2,0xc0,0xdf,0xff,0xff]
          vfmsub132pd -8256(%rdx), %zmm12, %zmm22

// CHECK: vfmsub132pd 1016(%rdx){1to8}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x58,0x9a,0x72,0x7f]
          vfmsub132pd 1016(%rdx){1to8}, %zmm12, %zmm22

// CHECK: vfmsub132pd 1024(%rdx){1to8}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x58,0x9a,0xb2,0x00,0x04,0x00,0x00]
          vfmsub132pd 1024(%rdx){1to8}, %zmm12, %zmm22

// CHECK: vfmsub132pd -1024(%rdx){1to8}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x58,0x9a,0x72,0x80]
          vfmsub132pd -1024(%rdx){1to8}, %zmm12, %zmm22

// CHECK: vfmsub132pd -1032(%rdx){1to8}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x58,0x9a,0xb2,0xf8,0xfb,0xff,0xff]
          vfmsub132pd -1032(%rdx){1to8}, %zmm12, %zmm22

// CHECK: vfmsub213ps %zmm10, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x4d,0x40,0xaa,0xf2]
          vfmsub213ps %zmm10, %zmm22, %zmm22

// CHECK: vfmsub213ps %zmm10, %zmm22, %zmm22 {%k6}
// CHECK:  encoding: [0x62,0xc2,0x4d,0x46,0xaa,0xf2]
          vfmsub213ps %zmm10, %zmm22, %zmm22 {%k6}

// CHECK: vfmsub213ps %zmm10, %zmm22, %zmm22 {%k6} {z}
// CHECK:  encoding: [0x62,0xc2,0x4d,0xc6,0xaa,0xf2]
          vfmsub213ps %zmm10, %zmm22, %zmm22 {%k6} {z}

// CHECK: vfmsub213ps {rn-sae}, %zmm10, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x4d,0x10,0xaa,0xf2]
          vfmsub213ps {rn-sae}, %zmm10, %zmm22, %zmm22

// CHECK: vfmsub213ps {ru-sae}, %zmm10, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x4d,0x50,0xaa,0xf2]
          vfmsub213ps {ru-sae}, %zmm10, %zmm22, %zmm22

// CHECK: vfmsub213ps {rd-sae}, %zmm10, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x4d,0x30,0xaa,0xf2]
          vfmsub213ps {rd-sae}, %zmm10, %zmm22, %zmm22

// CHECK: vfmsub213ps {rz-sae}, %zmm10, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x4d,0x70,0xaa,0xf2]
          vfmsub213ps {rz-sae}, %zmm10, %zmm22, %zmm22

// CHECK: vfmsub213ps (%rcx), %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x40,0xaa,0x31]
          vfmsub213ps (%rcx), %zmm22, %zmm22

// CHECK: vfmsub213ps 291(%rax,%r14,8), %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xa2,0x4d,0x40,0xaa,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub213ps 291(%rax,%r14,8), %zmm22, %zmm22

// CHECK: vfmsub213ps (%rcx){1to16}, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x50,0xaa,0x31]
          vfmsub213ps (%rcx){1to16}, %zmm22, %zmm22

// CHECK: vfmsub213ps 8128(%rdx), %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x40,0xaa,0x72,0x7f]
          vfmsub213ps 8128(%rdx), %zmm22, %zmm22

// CHECK: vfmsub213ps 8192(%rdx), %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x40,0xaa,0xb2,0x00,0x20,0x00,0x00]
          vfmsub213ps 8192(%rdx), %zmm22, %zmm22

// CHECK: vfmsub213ps -8192(%rdx), %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x40,0xaa,0x72,0x80]
          vfmsub213ps -8192(%rdx), %zmm22, %zmm22

// CHECK: vfmsub213ps -8256(%rdx), %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x40,0xaa,0xb2,0xc0,0xdf,0xff,0xff]
          vfmsub213ps -8256(%rdx), %zmm22, %zmm22

// CHECK: vfmsub213ps 508(%rdx){1to16}, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x50,0xaa,0x72,0x7f]
          vfmsub213ps 508(%rdx){1to16}, %zmm22, %zmm22

// CHECK: vfmsub213ps 512(%rdx){1to16}, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x50,0xaa,0xb2,0x00,0x02,0x00,0x00]
          vfmsub213ps 512(%rdx){1to16}, %zmm22, %zmm22

// CHECK: vfmsub213ps -512(%rdx){1to16}, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x50,0xaa,0x72,0x80]
          vfmsub213ps -512(%rdx){1to16}, %zmm22, %zmm22

// CHECK: vfmsub213ps -516(%rdx){1to16}, %zmm22, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x4d,0x50,0xaa,0xb2,0xfc,0xfd,0xff,0xff]
          vfmsub213ps -516(%rdx){1to16}, %zmm22, %zmm22

// CHECK: vfmsub213pd %zmm4, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x48,0xaa,0xec]
          vfmsub213pd %zmm4, %zmm10, %zmm5

// CHECK: vfmsub213pd %zmm4, %zmm10, %zmm5 {%k1}
// CHECK:  encoding: [0x62,0xf2,0xad,0x49,0xaa,0xec]
          vfmsub213pd %zmm4, %zmm10, %zmm5 {%k1}

// CHECK: vfmsub213pd %zmm4, %zmm10, %zmm5 {%k1} {z}
// CHECK:  encoding: [0x62,0xf2,0xad,0xc9,0xaa,0xec]
          vfmsub213pd %zmm4, %zmm10, %zmm5 {%k1} {z}

// CHECK: vfmsub213pd {rn-sae}, %zmm4, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x18,0xaa,0xec]
          vfmsub213pd {rn-sae}, %zmm4, %zmm10, %zmm5

// CHECK: vfmsub213pd {ru-sae}, %zmm4, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x58,0xaa,0xec]
          vfmsub213pd {ru-sae}, %zmm4, %zmm10, %zmm5

// CHECK: vfmsub213pd {rd-sae}, %zmm4, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x38,0xaa,0xec]
          vfmsub213pd {rd-sae}, %zmm4, %zmm10, %zmm5

// CHECK: vfmsub213pd {rz-sae}, %zmm4, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x78,0xaa,0xec]
          vfmsub213pd {rz-sae}, %zmm4, %zmm10, %zmm5

// CHECK: vfmsub213pd (%rcx), %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x48,0xaa,0x29]
          vfmsub213pd (%rcx), %zmm10, %zmm5

// CHECK: vfmsub213pd 291(%rax,%r14,8), %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xb2,0xad,0x48,0xaa,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmsub213pd 291(%rax,%r14,8), %zmm10, %zmm5

// CHECK: vfmsub213pd (%rcx){1to8}, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x58,0xaa,0x29]
          vfmsub213pd (%rcx){1to8}, %zmm10, %zmm5

// CHECK: vfmsub213pd 8128(%rdx), %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x48,0xaa,0x6a,0x7f]
          vfmsub213pd 8128(%rdx), %zmm10, %zmm5

// CHECK: vfmsub213pd 8192(%rdx), %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x48,0xaa,0xaa,0x00,0x20,0x00,0x00]
          vfmsub213pd 8192(%rdx), %zmm10, %zmm5

// CHECK: vfmsub213pd -8192(%rdx), %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x48,0xaa,0x6a,0x80]
          vfmsub213pd -8192(%rdx), %zmm10, %zmm5

// CHECK: vfmsub213pd -8256(%rdx), %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x48,0xaa,0xaa,0xc0,0xdf,0xff,0xff]
          vfmsub213pd -8256(%rdx), %zmm10, %zmm5

// CHECK: vfmsub213pd 1016(%rdx){1to8}, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x58,0xaa,0x6a,0x7f]
          vfmsub213pd 1016(%rdx){1to8}, %zmm10, %zmm5

// CHECK: vfmsub213pd 1024(%rdx){1to8}, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x58,0xaa,0xaa,0x00,0x04,0x00,0x00]
          vfmsub213pd 1024(%rdx){1to8}, %zmm10, %zmm5

// CHECK: vfmsub213pd -1024(%rdx){1to8}, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x58,0xaa,0x6a,0x80]
          vfmsub213pd -1024(%rdx){1to8}, %zmm10, %zmm5

// CHECK: vfmsub213pd -1032(%rdx){1to8}, %zmm10, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xad,0x58,0xaa,0xaa,0xf8,0xfb,0xff,0xff]
          vfmsub213pd -1032(%rdx){1to8}, %zmm10, %zmm5

// CHECK: vfmsub231ps %zmm27, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0x92,0x55,0x40,0xba,0xf3]
          vfmsub231ps %zmm27, %zmm21, %zmm6

// CHECK: vfmsub231ps %zmm27, %zmm21, %zmm6 {%k3}
// CHECK:  encoding: [0x62,0x92,0x55,0x43,0xba,0xf3]
          vfmsub231ps %zmm27, %zmm21, %zmm6 {%k3}

// CHECK: vfmsub231ps %zmm27, %zmm21, %zmm6 {%k3} {z}
// CHECK:  encoding: [0x62,0x92,0x55,0xc3,0xba,0xf3]
          vfmsub231ps %zmm27, %zmm21, %zmm6 {%k3} {z}

// CHECK: vfmsub231ps {rn-sae}, %zmm27, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0x92,0x55,0x10,0xba,0xf3]
          vfmsub231ps {rn-sae}, %zmm27, %zmm21, %zmm6

// CHECK: vfmsub231ps {ru-sae}, %zmm27, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0x92,0x55,0x50,0xba,0xf3]
          vfmsub231ps {ru-sae}, %zmm27, %zmm21, %zmm6

// CHECK: vfmsub231ps {rd-sae}, %zmm27, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0x92,0x55,0x30,0xba,0xf3]
          vfmsub231ps {rd-sae}, %zmm27, %zmm21, %zmm6

// CHECK: vfmsub231ps {rz-sae}, %zmm27, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0x92,0x55,0x70,0xba,0xf3]
          vfmsub231ps {rz-sae}, %zmm27, %zmm21, %zmm6

// CHECK: vfmsub231ps (%rcx), %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x40,0xba,0x31]
          vfmsub231ps (%rcx), %zmm21, %zmm6

// CHECK: vfmsub231ps 291(%rax,%r14,8), %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xb2,0x55,0x40,0xba,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub231ps 291(%rax,%r14,8), %zmm21, %zmm6

// CHECK: vfmsub231ps (%rcx){1to16}, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x50,0xba,0x31]
          vfmsub231ps (%rcx){1to16}, %zmm21, %zmm6

// CHECK: vfmsub231ps 8128(%rdx), %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x40,0xba,0x72,0x7f]
          vfmsub231ps 8128(%rdx), %zmm21, %zmm6

// CHECK: vfmsub231ps 8192(%rdx), %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x40,0xba,0xb2,0x00,0x20,0x00,0x00]
          vfmsub231ps 8192(%rdx), %zmm21, %zmm6

// CHECK: vfmsub231ps -8192(%rdx), %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x40,0xba,0x72,0x80]
          vfmsub231ps -8192(%rdx), %zmm21, %zmm6

// CHECK: vfmsub231ps -8256(%rdx), %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x40,0xba,0xb2,0xc0,0xdf,0xff,0xff]
          vfmsub231ps -8256(%rdx), %zmm21, %zmm6

// CHECK: vfmsub231ps 508(%rdx){1to16}, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x50,0xba,0x72,0x7f]
          vfmsub231ps 508(%rdx){1to16}, %zmm21, %zmm6

// CHECK: vfmsub231ps 512(%rdx){1to16}, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x50,0xba,0xb2,0x00,0x02,0x00,0x00]
          vfmsub231ps 512(%rdx){1to16}, %zmm21, %zmm6

// CHECK: vfmsub231ps -512(%rdx){1to16}, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x50,0xba,0x72,0x80]
          vfmsub231ps -512(%rdx){1to16}, %zmm21, %zmm6

// CHECK: vfmsub231ps -516(%rdx){1to16}, %zmm21, %zmm6
// CHECK:  encoding: [0x62,0xf2,0x55,0x50,0xba,0xb2,0xfc,0xfd,0xff,0xff]
          vfmsub231ps -516(%rdx){1to16}, %zmm21, %zmm6

// CHECK: vfmsub231pd %zmm11, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xd2,0x9d,0x48,0xba,0xeb]
          vfmsub231pd %zmm11, %zmm12, %zmm5

// CHECK: vfmsub231pd %zmm11, %zmm12, %zmm5 {%k2}
// CHECK:  encoding: [0x62,0xd2,0x9d,0x4a,0xba,0xeb]
          vfmsub231pd %zmm11, %zmm12, %zmm5 {%k2}

// CHECK: vfmsub231pd %zmm11, %zmm12, %zmm5 {%k2} {z}
// CHECK:  encoding: [0x62,0xd2,0x9d,0xca,0xba,0xeb]
          vfmsub231pd %zmm11, %zmm12, %zmm5 {%k2} {z}

// CHECK: vfmsub231pd {rn-sae}, %zmm11, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xd2,0x9d,0x18,0xba,0xeb]
          vfmsub231pd {rn-sae}, %zmm11, %zmm12, %zmm5

// CHECK: vfmsub231pd {ru-sae}, %zmm11, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xd2,0x9d,0x58,0xba,0xeb]
          vfmsub231pd {ru-sae}, %zmm11, %zmm12, %zmm5

// CHECK: vfmsub231pd {rd-sae}, %zmm11, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xd2,0x9d,0x38,0xba,0xeb]
          vfmsub231pd {rd-sae}, %zmm11, %zmm12, %zmm5

// CHECK: vfmsub231pd {rz-sae}, %zmm11, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xd2,0x9d,0x78,0xba,0xeb]
          vfmsub231pd {rz-sae}, %zmm11, %zmm12, %zmm5

// CHECK: vfmsub231pd (%rcx), %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x48,0xba,0x29]
          vfmsub231pd (%rcx), %zmm12, %zmm5

// CHECK: vfmsub231pd 291(%rax,%r14,8), %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xb2,0x9d,0x48,0xba,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmsub231pd 291(%rax,%r14,8), %zmm12, %zmm5

// CHECK: vfmsub231pd (%rcx){1to8}, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x58,0xba,0x29]
          vfmsub231pd (%rcx){1to8}, %zmm12, %zmm5

// CHECK: vfmsub231pd 8128(%rdx), %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x48,0xba,0x6a,0x7f]
          vfmsub231pd 8128(%rdx), %zmm12, %zmm5

// CHECK: vfmsub231pd 8192(%rdx), %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x48,0xba,0xaa,0x00,0x20,0x00,0x00]
          vfmsub231pd 8192(%rdx), %zmm12, %zmm5

// CHECK: vfmsub231pd -8192(%rdx), %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x48,0xba,0x6a,0x80]
          vfmsub231pd -8192(%rdx), %zmm12, %zmm5

// CHECK: vfmsub231pd -8256(%rdx), %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x48,0xba,0xaa,0xc0,0xdf,0xff,0xff]
          vfmsub231pd -8256(%rdx), %zmm12, %zmm5

// CHECK: vfmsub231pd 1016(%rdx){1to8}, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x58,0xba,0x6a,0x7f]
          vfmsub231pd 1016(%rdx){1to8}, %zmm12, %zmm5

// CHECK: vfmsub231pd 1024(%rdx){1to8}, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x58,0xba,0xaa,0x00,0x04,0x00,0x00]
          vfmsub231pd 1024(%rdx){1to8}, %zmm12, %zmm5

// CHECK: vfmsub231pd -1024(%rdx){1to8}, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x58,0xba,0x6a,0x80]
          vfmsub231pd -1024(%rdx){1to8}, %zmm12, %zmm5

// CHECK: vfmsub231pd -1032(%rdx){1to8}, %zmm12, %zmm5
// CHECK:  encoding: [0x62,0xf2,0x9d,0x58,0xba,0xaa,0xf8,0xfb,0xff,0xff]
          vfmsub231pd -1032(%rdx){1to8}, %zmm12, %zmm5

// CHECK: vfmaddsub132ps %zmm20, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x32,0x35,0x48,0x96,0xd4]
          vfmaddsub132ps %zmm20, %zmm9, %zmm10

// CHECK: vfmaddsub132ps %zmm20, %zmm9, %zmm10 {%k3}
// CHECK:  encoding: [0x62,0x32,0x35,0x4b,0x96,0xd4]
          vfmaddsub132ps %zmm20, %zmm9, %zmm10 {%k3}

// CHECK: vfmaddsub132ps %zmm20, %zmm9, %zmm10 {%k3} {z}
// CHECK:  encoding: [0x62,0x32,0x35,0xcb,0x96,0xd4]
          vfmaddsub132ps %zmm20, %zmm9, %zmm10 {%k3} {z}

// CHECK: vfmaddsub132ps {rn-sae}, %zmm20, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x32,0x35,0x18,0x96,0xd4]
          vfmaddsub132ps {rn-sae}, %zmm20, %zmm9, %zmm10

// CHECK: vfmaddsub132ps {ru-sae}, %zmm20, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x32,0x35,0x58,0x96,0xd4]
          vfmaddsub132ps {ru-sae}, %zmm20, %zmm9, %zmm10

// CHECK: vfmaddsub132ps {rd-sae}, %zmm20, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x32,0x35,0x38,0x96,0xd4]
          vfmaddsub132ps {rd-sae}, %zmm20, %zmm9, %zmm10

// CHECK: vfmaddsub132ps {rz-sae}, %zmm20, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x32,0x35,0x78,0x96,0xd4]
          vfmaddsub132ps {rz-sae}, %zmm20, %zmm9, %zmm10

// CHECK: vfmaddsub132ps (%rcx), %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x48,0x96,0x11]
          vfmaddsub132ps (%rcx), %zmm9, %zmm10

// CHECK: vfmaddsub132ps 291(%rax,%r14,8), %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x32,0x35,0x48,0x96,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub132ps 291(%rax,%r14,8), %zmm9, %zmm10

// CHECK: vfmaddsub132ps (%rcx){1to16}, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x58,0x96,0x11]
          vfmaddsub132ps (%rcx){1to16}, %zmm9, %zmm10

// CHECK: vfmaddsub132ps 8128(%rdx), %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x48,0x96,0x52,0x7f]
          vfmaddsub132ps 8128(%rdx), %zmm9, %zmm10

// CHECK: vfmaddsub132ps 8192(%rdx), %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x48,0x96,0x92,0x00,0x20,0x00,0x00]
          vfmaddsub132ps 8192(%rdx), %zmm9, %zmm10

// CHECK: vfmaddsub132ps -8192(%rdx), %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x48,0x96,0x52,0x80]
          vfmaddsub132ps -8192(%rdx), %zmm9, %zmm10

// CHECK: vfmaddsub132ps -8256(%rdx), %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x48,0x96,0x92,0xc0,0xdf,0xff,0xff]
          vfmaddsub132ps -8256(%rdx), %zmm9, %zmm10

// CHECK: vfmaddsub132ps 508(%rdx){1to16}, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x58,0x96,0x52,0x7f]
          vfmaddsub132ps 508(%rdx){1to16}, %zmm9, %zmm10

// CHECK: vfmaddsub132ps 512(%rdx){1to16}, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x58,0x96,0x92,0x00,0x02,0x00,0x00]
          vfmaddsub132ps 512(%rdx){1to16}, %zmm9, %zmm10

// CHECK: vfmaddsub132ps -512(%rdx){1to16}, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x58,0x96,0x52,0x80]
          vfmaddsub132ps -512(%rdx){1to16}, %zmm9, %zmm10

// CHECK: vfmaddsub132ps -516(%rdx){1to16}, %zmm9, %zmm10
// CHECK:  encoding: [0x62,0x72,0x35,0x58,0x96,0x92,0xfc,0xfd,0xff,0xff]
          vfmaddsub132ps -516(%rdx){1to16}, %zmm9, %zmm10

// CHECK: vfmaddsub132pd %zmm21, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xb5,0x40,0x96,0xe5]
          vfmaddsub132pd %zmm21, %zmm25, %zmm20

// CHECK: vfmaddsub132pd %zmm21, %zmm25, %zmm20 {%k2}
// CHECK:  encoding: [0x62,0xa2,0xb5,0x42,0x96,0xe5]
          vfmaddsub132pd %zmm21, %zmm25, %zmm20 {%k2}

// CHECK: vfmaddsub132pd %zmm21, %zmm25, %zmm20 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0xb5,0xc2,0x96,0xe5]
          vfmaddsub132pd %zmm21, %zmm25, %zmm20 {%k2} {z}

// CHECK: vfmaddsub132pd {rn-sae}, %zmm21, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xb5,0x10,0x96,0xe5]
          vfmaddsub132pd {rn-sae}, %zmm21, %zmm25, %zmm20

// CHECK: vfmaddsub132pd {ru-sae}, %zmm21, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xb5,0x50,0x96,0xe5]
          vfmaddsub132pd {ru-sae}, %zmm21, %zmm25, %zmm20

// CHECK: vfmaddsub132pd {rd-sae}, %zmm21, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xb5,0x30,0x96,0xe5]
          vfmaddsub132pd {rd-sae}, %zmm21, %zmm25, %zmm20

// CHECK: vfmaddsub132pd {rz-sae}, %zmm21, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xb5,0x70,0x96,0xe5]
          vfmaddsub132pd {rz-sae}, %zmm21, %zmm25, %zmm20

// CHECK: vfmaddsub132pd (%rcx), %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x40,0x96,0x21]
          vfmaddsub132pd (%rcx), %zmm25, %zmm20

// CHECK: vfmaddsub132pd 291(%rax,%r14,8), %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xb5,0x40,0x96,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub132pd 291(%rax,%r14,8), %zmm25, %zmm20

// CHECK: vfmaddsub132pd (%rcx){1to8}, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x50,0x96,0x21]
          vfmaddsub132pd (%rcx){1to8}, %zmm25, %zmm20

// CHECK: vfmaddsub132pd 8128(%rdx), %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x40,0x96,0x62,0x7f]
          vfmaddsub132pd 8128(%rdx), %zmm25, %zmm20

// CHECK: vfmaddsub132pd 8192(%rdx), %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x40,0x96,0xa2,0x00,0x20,0x00,0x00]
          vfmaddsub132pd 8192(%rdx), %zmm25, %zmm20

// CHECK: vfmaddsub132pd -8192(%rdx), %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x40,0x96,0x62,0x80]
          vfmaddsub132pd -8192(%rdx), %zmm25, %zmm20

// CHECK: vfmaddsub132pd -8256(%rdx), %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x40,0x96,0xa2,0xc0,0xdf,0xff,0xff]
          vfmaddsub132pd -8256(%rdx), %zmm25, %zmm20

// CHECK: vfmaddsub132pd 1016(%rdx){1to8}, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x50,0x96,0x62,0x7f]
          vfmaddsub132pd 1016(%rdx){1to8}, %zmm25, %zmm20

// CHECK: vfmaddsub132pd 1024(%rdx){1to8}, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x50,0x96,0xa2,0x00,0x04,0x00,0x00]
          vfmaddsub132pd 1024(%rdx){1to8}, %zmm25, %zmm20

// CHECK: vfmaddsub132pd -1024(%rdx){1to8}, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x50,0x96,0x62,0x80]
          vfmaddsub132pd -1024(%rdx){1to8}, %zmm25, %zmm20

// CHECK: vfmaddsub132pd -1032(%rdx){1to8}, %zmm25, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xb5,0x50,0x96,0xa2,0xf8,0xfb,0xff,0xff]
          vfmaddsub132pd -1032(%rdx){1to8}, %zmm25, %zmm20

// CHECK: vfmaddsub213ps %zmm28, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0x82,0x3d,0x40,0xa6,0xcc]
          vfmaddsub213ps %zmm28, %zmm24, %zmm17

// CHECK: vfmaddsub213ps %zmm28, %zmm24, %zmm17 {%k6}
// CHECK:  encoding: [0x62,0x82,0x3d,0x46,0xa6,0xcc]
          vfmaddsub213ps %zmm28, %zmm24, %zmm17 {%k6}

// CHECK: vfmaddsub213ps %zmm28, %zmm24, %zmm17 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0x3d,0xc6,0xa6,0xcc]
          vfmaddsub213ps %zmm28, %zmm24, %zmm17 {%k6} {z}

// CHECK: vfmaddsub213ps {rn-sae}, %zmm28, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0x82,0x3d,0x10,0xa6,0xcc]
          vfmaddsub213ps {rn-sae}, %zmm28, %zmm24, %zmm17

// CHECK: vfmaddsub213ps {ru-sae}, %zmm28, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0x82,0x3d,0x50,0xa6,0xcc]
          vfmaddsub213ps {ru-sae}, %zmm28, %zmm24, %zmm17

// CHECK: vfmaddsub213ps {rd-sae}, %zmm28, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0x82,0x3d,0x30,0xa6,0xcc]
          vfmaddsub213ps {rd-sae}, %zmm28, %zmm24, %zmm17

// CHECK: vfmaddsub213ps {rz-sae}, %zmm28, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0x82,0x3d,0x70,0xa6,0xcc]
          vfmaddsub213ps {rz-sae}, %zmm28, %zmm24, %zmm17

// CHECK: vfmaddsub213ps (%rcx), %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x40,0xa6,0x09]
          vfmaddsub213ps (%rcx), %zmm24, %zmm17

// CHECK: vfmaddsub213ps 291(%rax,%r14,8), %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xa2,0x3d,0x40,0xa6,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub213ps 291(%rax,%r14,8), %zmm24, %zmm17

// CHECK: vfmaddsub213ps (%rcx){1to16}, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x50,0xa6,0x09]
          vfmaddsub213ps (%rcx){1to16}, %zmm24, %zmm17

// CHECK: vfmaddsub213ps 8128(%rdx), %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x40,0xa6,0x4a,0x7f]
          vfmaddsub213ps 8128(%rdx), %zmm24, %zmm17

// CHECK: vfmaddsub213ps 8192(%rdx), %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x40,0xa6,0x8a,0x00,0x20,0x00,0x00]
          vfmaddsub213ps 8192(%rdx), %zmm24, %zmm17

// CHECK: vfmaddsub213ps -8192(%rdx), %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x40,0xa6,0x4a,0x80]
          vfmaddsub213ps -8192(%rdx), %zmm24, %zmm17

// CHECK: vfmaddsub213ps -8256(%rdx), %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x40,0xa6,0x8a,0xc0,0xdf,0xff,0xff]
          vfmaddsub213ps -8256(%rdx), %zmm24, %zmm17

// CHECK: vfmaddsub213ps 508(%rdx){1to16}, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x50,0xa6,0x4a,0x7f]
          vfmaddsub213ps 508(%rdx){1to16}, %zmm24, %zmm17

// CHECK: vfmaddsub213ps 512(%rdx){1to16}, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x50,0xa6,0x8a,0x00,0x02,0x00,0x00]
          vfmaddsub213ps 512(%rdx){1to16}, %zmm24, %zmm17

// CHECK: vfmaddsub213ps -512(%rdx){1to16}, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x50,0xa6,0x4a,0x80]
          vfmaddsub213ps -512(%rdx){1to16}, %zmm24, %zmm17

// CHECK: vfmaddsub213ps -516(%rdx){1to16}, %zmm24, %zmm17
// CHECK:  encoding: [0x62,0xe2,0x3d,0x50,0xa6,0x8a,0xfc,0xfd,0xff,0xff]
          vfmaddsub213ps -516(%rdx){1to16}, %zmm24, %zmm17

// CHECK: vfmaddsub213pd %zmm10, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x42,0xcd,0x48,0xa6,0xd2]
          vfmaddsub213pd %zmm10, %zmm6, %zmm26

// CHECK: vfmaddsub213pd %zmm10, %zmm6, %zmm26 {%k6}
// CHECK:  encoding: [0x62,0x42,0xcd,0x4e,0xa6,0xd2]
          vfmaddsub213pd %zmm10, %zmm6, %zmm26 {%k6}

// CHECK: vfmaddsub213pd %zmm10, %zmm6, %zmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x42,0xcd,0xce,0xa6,0xd2]
          vfmaddsub213pd %zmm10, %zmm6, %zmm26 {%k6} {z}

// CHECK: vfmaddsub213pd {rn-sae}, %zmm10, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x42,0xcd,0x18,0xa6,0xd2]
          vfmaddsub213pd {rn-sae}, %zmm10, %zmm6, %zmm26

// CHECK: vfmaddsub213pd {ru-sae}, %zmm10, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x42,0xcd,0x58,0xa6,0xd2]
          vfmaddsub213pd {ru-sae}, %zmm10, %zmm6, %zmm26

// CHECK: vfmaddsub213pd {rd-sae}, %zmm10, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x42,0xcd,0x38,0xa6,0xd2]
          vfmaddsub213pd {rd-sae}, %zmm10, %zmm6, %zmm26

// CHECK: vfmaddsub213pd {rz-sae}, %zmm10, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x42,0xcd,0x78,0xa6,0xd2]
          vfmaddsub213pd {rz-sae}, %zmm10, %zmm6, %zmm26

// CHECK: vfmaddsub213pd (%rcx), %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xa6,0x11]
          vfmaddsub213pd (%rcx), %zmm6, %zmm26

// CHECK: vfmaddsub213pd 291(%rax,%r14,8), %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x22,0xcd,0x48,0xa6,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub213pd 291(%rax,%r14,8), %zmm6, %zmm26

// CHECK: vfmaddsub213pd (%rcx){1to8}, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xa6,0x11]
          vfmaddsub213pd (%rcx){1to8}, %zmm6, %zmm26

// CHECK: vfmaddsub213pd 8128(%rdx), %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xa6,0x52,0x7f]
          vfmaddsub213pd 8128(%rdx), %zmm6, %zmm26

// CHECK: vfmaddsub213pd 8192(%rdx), %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xa6,0x92,0x00,0x20,0x00,0x00]
          vfmaddsub213pd 8192(%rdx), %zmm6, %zmm26

// CHECK: vfmaddsub213pd -8192(%rdx), %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xa6,0x52,0x80]
          vfmaddsub213pd -8192(%rdx), %zmm6, %zmm26

// CHECK: vfmaddsub213pd -8256(%rdx), %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x48,0xa6,0x92,0xc0,0xdf,0xff,0xff]
          vfmaddsub213pd -8256(%rdx), %zmm6, %zmm26

// CHECK: vfmaddsub213pd 1016(%rdx){1to8}, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xa6,0x52,0x7f]
          vfmaddsub213pd 1016(%rdx){1to8}, %zmm6, %zmm26

// CHECK: vfmaddsub213pd 1024(%rdx){1to8}, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xa6,0x92,0x00,0x04,0x00,0x00]
          vfmaddsub213pd 1024(%rdx){1to8}, %zmm6, %zmm26

// CHECK: vfmaddsub213pd -1024(%rdx){1to8}, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xa6,0x52,0x80]
          vfmaddsub213pd -1024(%rdx){1to8}, %zmm6, %zmm26

// CHECK: vfmaddsub213pd -1032(%rdx){1to8}, %zmm6, %zmm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x58,0xa6,0x92,0xf8,0xfb,0xff,0xff]
          vfmaddsub213pd -1032(%rdx){1to8}, %zmm6, %zmm26

// CHECK: vfmaddsub231ps %zmm19, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x32,0x55,0x40,0xb6,0xfb]
          vfmaddsub231ps %zmm19, %zmm21, %zmm15

// CHECK: vfmaddsub231ps %zmm19, %zmm21, %zmm15 {%k6}
// CHECK:  encoding: [0x62,0x32,0x55,0x46,0xb6,0xfb]
          vfmaddsub231ps %zmm19, %zmm21, %zmm15 {%k6}

// CHECK: vfmaddsub231ps %zmm19, %zmm21, %zmm15 {%k6} {z}
// CHECK:  encoding: [0x62,0x32,0x55,0xc6,0xb6,0xfb]
          vfmaddsub231ps %zmm19, %zmm21, %zmm15 {%k6} {z}

// CHECK: vfmaddsub231ps {rn-sae}, %zmm19, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x32,0x55,0x10,0xb6,0xfb]
          vfmaddsub231ps {rn-sae}, %zmm19, %zmm21, %zmm15

// CHECK: vfmaddsub231ps {ru-sae}, %zmm19, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x32,0x55,0x50,0xb6,0xfb]
          vfmaddsub231ps {ru-sae}, %zmm19, %zmm21, %zmm15

// CHECK: vfmaddsub231ps {rd-sae}, %zmm19, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x32,0x55,0x30,0xb6,0xfb]
          vfmaddsub231ps {rd-sae}, %zmm19, %zmm21, %zmm15

// CHECK: vfmaddsub231ps {rz-sae}, %zmm19, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x32,0x55,0x70,0xb6,0xfb]
          vfmaddsub231ps {rz-sae}, %zmm19, %zmm21, %zmm15

// CHECK: vfmaddsub231ps (%rcx), %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x40,0xb6,0x39]
          vfmaddsub231ps (%rcx), %zmm21, %zmm15

// CHECK: vfmaddsub231ps 291(%rax,%r14,8), %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x32,0x55,0x40,0xb6,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub231ps 291(%rax,%r14,8), %zmm21, %zmm15

// CHECK: vfmaddsub231ps (%rcx){1to16}, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x50,0xb6,0x39]
          vfmaddsub231ps (%rcx){1to16}, %zmm21, %zmm15

// CHECK: vfmaddsub231ps 8128(%rdx), %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x40,0xb6,0x7a,0x7f]
          vfmaddsub231ps 8128(%rdx), %zmm21, %zmm15

// CHECK: vfmaddsub231ps 8192(%rdx), %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x40,0xb6,0xba,0x00,0x20,0x00,0x00]
          vfmaddsub231ps 8192(%rdx), %zmm21, %zmm15

// CHECK: vfmaddsub231ps -8192(%rdx), %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x40,0xb6,0x7a,0x80]
          vfmaddsub231ps -8192(%rdx), %zmm21, %zmm15

// CHECK: vfmaddsub231ps -8256(%rdx), %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x40,0xb6,0xba,0xc0,0xdf,0xff,0xff]
          vfmaddsub231ps -8256(%rdx), %zmm21, %zmm15

// CHECK: vfmaddsub231ps 508(%rdx){1to16}, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x50,0xb6,0x7a,0x7f]
          vfmaddsub231ps 508(%rdx){1to16}, %zmm21, %zmm15

// CHECK: vfmaddsub231ps 512(%rdx){1to16}, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x50,0xb6,0xba,0x00,0x02,0x00,0x00]
          vfmaddsub231ps 512(%rdx){1to16}, %zmm21, %zmm15

// CHECK: vfmaddsub231ps -512(%rdx){1to16}, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x50,0xb6,0x7a,0x80]
          vfmaddsub231ps -512(%rdx){1to16}, %zmm21, %zmm15

// CHECK: vfmaddsub231ps -516(%rdx){1to16}, %zmm21, %zmm15
// CHECK:  encoding: [0x62,0x72,0x55,0x50,0xb6,0xba,0xfc,0xfd,0xff,0xff]
          vfmaddsub231ps -516(%rdx){1to16}, %zmm21, %zmm15

// CHECK: vfmaddsub231pd %zmm24, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x12,0xa5,0x40,0xb6,0xc8]
          vfmaddsub231pd %zmm24, %zmm27, %zmm9

// CHECK: vfmaddsub231pd %zmm24, %zmm27, %zmm9 {%k7}
// CHECK:  encoding: [0x62,0x12,0xa5,0x47,0xb6,0xc8]
          vfmaddsub231pd %zmm24, %zmm27, %zmm9 {%k7}

// CHECK: vfmaddsub231pd %zmm24, %zmm27, %zmm9 {%k7} {z}
// CHECK:  encoding: [0x62,0x12,0xa5,0xc7,0xb6,0xc8]
          vfmaddsub231pd %zmm24, %zmm27, %zmm9 {%k7} {z}

// CHECK: vfmaddsub231pd {rn-sae}, %zmm24, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x12,0xa5,0x10,0xb6,0xc8]
          vfmaddsub231pd {rn-sae}, %zmm24, %zmm27, %zmm9

// CHECK: vfmaddsub231pd {ru-sae}, %zmm24, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x12,0xa5,0x50,0xb6,0xc8]
          vfmaddsub231pd {ru-sae}, %zmm24, %zmm27, %zmm9

// CHECK: vfmaddsub231pd {rd-sae}, %zmm24, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x12,0xa5,0x30,0xb6,0xc8]
          vfmaddsub231pd {rd-sae}, %zmm24, %zmm27, %zmm9

// CHECK: vfmaddsub231pd {rz-sae}, %zmm24, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x12,0xa5,0x70,0xb6,0xc8]
          vfmaddsub231pd {rz-sae}, %zmm24, %zmm27, %zmm9

// CHECK: vfmaddsub231pd (%rcx), %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x40,0xb6,0x09]
          vfmaddsub231pd (%rcx), %zmm27, %zmm9

// CHECK: vfmaddsub231pd 291(%rax,%r14,8), %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x32,0xa5,0x40,0xb6,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub231pd 291(%rax,%r14,8), %zmm27, %zmm9

// CHECK: vfmaddsub231pd (%rcx){1to8}, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x50,0xb6,0x09]
          vfmaddsub231pd (%rcx){1to8}, %zmm27, %zmm9

// CHECK: vfmaddsub231pd 8128(%rdx), %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x40,0xb6,0x4a,0x7f]
          vfmaddsub231pd 8128(%rdx), %zmm27, %zmm9

// CHECK: vfmaddsub231pd 8192(%rdx), %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x40,0xb6,0x8a,0x00,0x20,0x00,0x00]
          vfmaddsub231pd 8192(%rdx), %zmm27, %zmm9

// CHECK: vfmaddsub231pd -8192(%rdx), %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x40,0xb6,0x4a,0x80]
          vfmaddsub231pd -8192(%rdx), %zmm27, %zmm9

// CHECK: vfmaddsub231pd -8256(%rdx), %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x40,0xb6,0x8a,0xc0,0xdf,0xff,0xff]
          vfmaddsub231pd -8256(%rdx), %zmm27, %zmm9

// CHECK: vfmaddsub231pd 1016(%rdx){1to8}, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x50,0xb6,0x4a,0x7f]
          vfmaddsub231pd 1016(%rdx){1to8}, %zmm27, %zmm9

// CHECK: vfmaddsub231pd 1024(%rdx){1to8}, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x50,0xb6,0x8a,0x00,0x04,0x00,0x00]
          vfmaddsub231pd 1024(%rdx){1to8}, %zmm27, %zmm9

// CHECK: vfmaddsub231pd -1024(%rdx){1to8}, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x50,0xb6,0x4a,0x80]
          vfmaddsub231pd -1024(%rdx){1to8}, %zmm27, %zmm9

// CHECK: vfmaddsub231pd -1032(%rdx){1to8}, %zmm27, %zmm9
// CHECK:  encoding: [0x62,0x72,0xa5,0x50,0xb6,0x8a,0xf8,0xfb,0xff,0xff]
          vfmaddsub231pd -1032(%rdx){1to8}, %zmm27, %zmm9

// CHECK: vfmsubadd132ps %zmm21, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xb2,0x15,0x48,0x97,0xd5]
          vfmsubadd132ps %zmm21, %zmm13, %zmm2

// CHECK: vfmsubadd132ps %zmm21, %zmm13, %zmm2 {%k7}
// CHECK:  encoding: [0x62,0xb2,0x15,0x4f,0x97,0xd5]
          vfmsubadd132ps %zmm21, %zmm13, %zmm2 {%k7}

// CHECK: vfmsubadd132ps %zmm21, %zmm13, %zmm2 {%k7} {z}
// CHECK:  encoding: [0x62,0xb2,0x15,0xcf,0x97,0xd5]
          vfmsubadd132ps %zmm21, %zmm13, %zmm2 {%k7} {z}

// CHECK: vfmsubadd132ps {rn-sae}, %zmm21, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xb2,0x15,0x18,0x97,0xd5]
          vfmsubadd132ps {rn-sae}, %zmm21, %zmm13, %zmm2

// CHECK: vfmsubadd132ps {ru-sae}, %zmm21, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xb2,0x15,0x58,0x97,0xd5]
          vfmsubadd132ps {ru-sae}, %zmm21, %zmm13, %zmm2

// CHECK: vfmsubadd132ps {rd-sae}, %zmm21, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xb2,0x15,0x38,0x97,0xd5]
          vfmsubadd132ps {rd-sae}, %zmm21, %zmm13, %zmm2

// CHECK: vfmsubadd132ps {rz-sae}, %zmm21, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xb2,0x15,0x78,0x97,0xd5]
          vfmsubadd132ps {rz-sae}, %zmm21, %zmm13, %zmm2

// CHECK: vfmsubadd132ps (%rcx), %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x97,0x11]
          vfmsubadd132ps (%rcx), %zmm13, %zmm2

// CHECK: vfmsubadd132ps 291(%rax,%r14,8), %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xb2,0x15,0x48,0x97,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd132ps 291(%rax,%r14,8), %zmm13, %zmm2

// CHECK: vfmsubadd132ps (%rcx){1to16}, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x97,0x11]
          vfmsubadd132ps (%rcx){1to16}, %zmm13, %zmm2

// CHECK: vfmsubadd132ps 8128(%rdx), %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x97,0x52,0x7f]
          vfmsubadd132ps 8128(%rdx), %zmm13, %zmm2

// CHECK: vfmsubadd132ps 8192(%rdx), %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x97,0x92,0x00,0x20,0x00,0x00]
          vfmsubadd132ps 8192(%rdx), %zmm13, %zmm2

// CHECK: vfmsubadd132ps -8192(%rdx), %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x97,0x52,0x80]
          vfmsubadd132ps -8192(%rdx), %zmm13, %zmm2

// CHECK: vfmsubadd132ps -8256(%rdx), %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x48,0x97,0x92,0xc0,0xdf,0xff,0xff]
          vfmsubadd132ps -8256(%rdx), %zmm13, %zmm2

// CHECK: vfmsubadd132ps 508(%rdx){1to16}, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x97,0x52,0x7f]
          vfmsubadd132ps 508(%rdx){1to16}, %zmm13, %zmm2

// CHECK: vfmsubadd132ps 512(%rdx){1to16}, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x97,0x92,0x00,0x02,0x00,0x00]
          vfmsubadd132ps 512(%rdx){1to16}, %zmm13, %zmm2

// CHECK: vfmsubadd132ps -512(%rdx){1to16}, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x97,0x52,0x80]
          vfmsubadd132ps -512(%rdx){1to16}, %zmm13, %zmm2

// CHECK: vfmsubadd132ps -516(%rdx){1to16}, %zmm13, %zmm2
// CHECK:  encoding: [0x62,0xf2,0x15,0x58,0x97,0x92,0xfc,0xfd,0xff,0xff]
          vfmsubadd132ps -516(%rdx){1to16}, %zmm13, %zmm2

// CHECK: vfmsubadd132pd %zmm18, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xa2,0x9d,0x40,0x97,0xea]
          vfmsubadd132pd %zmm18, %zmm28, %zmm21

// CHECK: vfmsubadd132pd %zmm18, %zmm28, %zmm21 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x9d,0x47,0x97,0xea]
          vfmsubadd132pd %zmm18, %zmm28, %zmm21 {%k7}

// CHECK: vfmsubadd132pd %zmm18, %zmm28, %zmm21 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x9d,0xc7,0x97,0xea]
          vfmsubadd132pd %zmm18, %zmm28, %zmm21 {%k7} {z}

// CHECK: vfmsubadd132pd {rn-sae}, %zmm18, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xa2,0x9d,0x10,0x97,0xea]
          vfmsubadd132pd {rn-sae}, %zmm18, %zmm28, %zmm21

// CHECK: vfmsubadd132pd {ru-sae}, %zmm18, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xa2,0x9d,0x50,0x97,0xea]
          vfmsubadd132pd {ru-sae}, %zmm18, %zmm28, %zmm21

// CHECK: vfmsubadd132pd {rd-sae}, %zmm18, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xa2,0x9d,0x30,0x97,0xea]
          vfmsubadd132pd {rd-sae}, %zmm18, %zmm28, %zmm21

// CHECK: vfmsubadd132pd {rz-sae}, %zmm18, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xa2,0x9d,0x70,0x97,0xea]
          vfmsubadd132pd {rz-sae}, %zmm18, %zmm28, %zmm21

// CHECK: vfmsubadd132pd (%rcx), %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x97,0x29]
          vfmsubadd132pd (%rcx), %zmm28, %zmm21

// CHECK: vfmsubadd132pd 291(%rax,%r14,8), %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xa2,0x9d,0x40,0x97,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd132pd 291(%rax,%r14,8), %zmm28, %zmm21

// CHECK: vfmsubadd132pd (%rcx){1to8}, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x97,0x29]
          vfmsubadd132pd (%rcx){1to8}, %zmm28, %zmm21

// CHECK: vfmsubadd132pd 8128(%rdx), %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x97,0x6a,0x7f]
          vfmsubadd132pd 8128(%rdx), %zmm28, %zmm21

// CHECK: vfmsubadd132pd 8192(%rdx), %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x97,0xaa,0x00,0x20,0x00,0x00]
          vfmsubadd132pd 8192(%rdx), %zmm28, %zmm21

// CHECK: vfmsubadd132pd -8192(%rdx), %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x97,0x6a,0x80]
          vfmsubadd132pd -8192(%rdx), %zmm28, %zmm21

// CHECK: vfmsubadd132pd -8256(%rdx), %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x97,0xaa,0xc0,0xdf,0xff,0xff]
          vfmsubadd132pd -8256(%rdx), %zmm28, %zmm21

// CHECK: vfmsubadd132pd 1016(%rdx){1to8}, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x97,0x6a,0x7f]
          vfmsubadd132pd 1016(%rdx){1to8}, %zmm28, %zmm21

// CHECK: vfmsubadd132pd 1024(%rdx){1to8}, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x97,0xaa,0x00,0x04,0x00,0x00]
          vfmsubadd132pd 1024(%rdx){1to8}, %zmm28, %zmm21

// CHECK: vfmsubadd132pd -1024(%rdx){1to8}, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x97,0x6a,0x80]
          vfmsubadd132pd -1024(%rdx){1to8}, %zmm28, %zmm21

// CHECK: vfmsubadd132pd -1032(%rdx){1to8}, %zmm28, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x97,0xaa,0xf8,0xfb,0xff,0xff]
          vfmsubadd132pd -1032(%rdx){1to8}, %zmm28, %zmm21

// CHECK: vfmsubadd213ps %zmm14, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x1d,0x48,0xa7,0xf6]
          vfmsubadd213ps %zmm14, %zmm12, %zmm22

// CHECK: vfmsubadd213ps %zmm14, %zmm12, %zmm22 {%k6}
// CHECK:  encoding: [0x62,0xc2,0x1d,0x4e,0xa7,0xf6]
          vfmsubadd213ps %zmm14, %zmm12, %zmm22 {%k6}

// CHECK: vfmsubadd213ps %zmm14, %zmm12, %zmm22 {%k6} {z}
// CHECK:  encoding: [0x62,0xc2,0x1d,0xce,0xa7,0xf6]
          vfmsubadd213ps %zmm14, %zmm12, %zmm22 {%k6} {z}

// CHECK: vfmsubadd213ps {rn-sae}, %zmm14, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x1d,0x18,0xa7,0xf6]
          vfmsubadd213ps {rn-sae}, %zmm14, %zmm12, %zmm22

// CHECK: vfmsubadd213ps {ru-sae}, %zmm14, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x1d,0x58,0xa7,0xf6]
          vfmsubadd213ps {ru-sae}, %zmm14, %zmm12, %zmm22

// CHECK: vfmsubadd213ps {rd-sae}, %zmm14, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x1d,0x38,0xa7,0xf6]
          vfmsubadd213ps {rd-sae}, %zmm14, %zmm12, %zmm22

// CHECK: vfmsubadd213ps {rz-sae}, %zmm14, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xc2,0x1d,0x78,0xa7,0xf6]
          vfmsubadd213ps {rz-sae}, %zmm14, %zmm12, %zmm22

// CHECK: vfmsubadd213ps (%rcx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x48,0xa7,0x31]
          vfmsubadd213ps (%rcx), %zmm12, %zmm22

// CHECK: vfmsubadd213ps 291(%rax,%r14,8), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xa2,0x1d,0x48,0xa7,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd213ps 291(%rax,%r14,8), %zmm12, %zmm22

// CHECK: vfmsubadd213ps (%rcx){1to16}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x58,0xa7,0x31]
          vfmsubadd213ps (%rcx){1to16}, %zmm12, %zmm22

// CHECK: vfmsubadd213ps 8128(%rdx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x48,0xa7,0x72,0x7f]
          vfmsubadd213ps 8128(%rdx), %zmm12, %zmm22

// CHECK: vfmsubadd213ps 8192(%rdx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x48,0xa7,0xb2,0x00,0x20,0x00,0x00]
          vfmsubadd213ps 8192(%rdx), %zmm12, %zmm22

// CHECK: vfmsubadd213ps -8192(%rdx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x48,0xa7,0x72,0x80]
          vfmsubadd213ps -8192(%rdx), %zmm12, %zmm22

// CHECK: vfmsubadd213ps -8256(%rdx), %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x48,0xa7,0xb2,0xc0,0xdf,0xff,0xff]
          vfmsubadd213ps -8256(%rdx), %zmm12, %zmm22

// CHECK: vfmsubadd213ps 508(%rdx){1to16}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x58,0xa7,0x72,0x7f]
          vfmsubadd213ps 508(%rdx){1to16}, %zmm12, %zmm22

// CHECK: vfmsubadd213ps 512(%rdx){1to16}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x58,0xa7,0xb2,0x00,0x02,0x00,0x00]
          vfmsubadd213ps 512(%rdx){1to16}, %zmm12, %zmm22

// CHECK: vfmsubadd213ps -512(%rdx){1to16}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x58,0xa7,0x72,0x80]
          vfmsubadd213ps -512(%rdx){1to16}, %zmm12, %zmm22

// CHECK: vfmsubadd213ps -516(%rdx){1to16}, %zmm12, %zmm22
// CHECK:  encoding: [0x62,0xe2,0x1d,0x58,0xa7,0xb2,0xfc,0xfd,0xff,0xff]
          vfmsubadd213ps -516(%rdx){1to16}, %zmm12, %zmm22

// CHECK: vfmsubadd213pd %zmm2, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x40,0xa7,0xd2]
          vfmsubadd213pd %zmm2, %zmm23, %zmm2

// CHECK: vfmsubadd213pd %zmm2, %zmm23, %zmm2 {%k6}
// CHECK:  encoding: [0x62,0xf2,0xc5,0x46,0xa7,0xd2]
          vfmsubadd213pd %zmm2, %zmm23, %zmm2 {%k6}

// CHECK: vfmsubadd213pd %zmm2, %zmm23, %zmm2 {%k6} {z}
// CHECK:  encoding: [0x62,0xf2,0xc5,0xc6,0xa7,0xd2]
          vfmsubadd213pd %zmm2, %zmm23, %zmm2 {%k6} {z}

// CHECK: vfmsubadd213pd {rn-sae}, %zmm2, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x10,0xa7,0xd2]
          vfmsubadd213pd {rn-sae}, %zmm2, %zmm23, %zmm2

// CHECK: vfmsubadd213pd {ru-sae}, %zmm2, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x50,0xa7,0xd2]
          vfmsubadd213pd {ru-sae}, %zmm2, %zmm23, %zmm2

// CHECK: vfmsubadd213pd {rd-sae}, %zmm2, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x30,0xa7,0xd2]
          vfmsubadd213pd {rd-sae}, %zmm2, %zmm23, %zmm2

// CHECK: vfmsubadd213pd {rz-sae}, %zmm2, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x70,0xa7,0xd2]
          vfmsubadd213pd {rz-sae}, %zmm2, %zmm23, %zmm2

// CHECK: vfmsubadd213pd (%rcx), %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x40,0xa7,0x11]
          vfmsubadd213pd (%rcx), %zmm23, %zmm2

// CHECK: vfmsubadd213pd 291(%rax,%r14,8), %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xb2,0xc5,0x40,0xa7,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd213pd 291(%rax,%r14,8), %zmm23, %zmm2

// CHECK: vfmsubadd213pd (%rcx){1to8}, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x50,0xa7,0x11]
          vfmsubadd213pd (%rcx){1to8}, %zmm23, %zmm2

// CHECK: vfmsubadd213pd 8128(%rdx), %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x40,0xa7,0x52,0x7f]
          vfmsubadd213pd 8128(%rdx), %zmm23, %zmm2

// CHECK: vfmsubadd213pd 8192(%rdx), %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x40,0xa7,0x92,0x00,0x20,0x00,0x00]
          vfmsubadd213pd 8192(%rdx), %zmm23, %zmm2

// CHECK: vfmsubadd213pd -8192(%rdx), %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x40,0xa7,0x52,0x80]
          vfmsubadd213pd -8192(%rdx), %zmm23, %zmm2

// CHECK: vfmsubadd213pd -8256(%rdx), %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x40,0xa7,0x92,0xc0,0xdf,0xff,0xff]
          vfmsubadd213pd -8256(%rdx), %zmm23, %zmm2

// CHECK: vfmsubadd213pd 1016(%rdx){1to8}, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x50,0xa7,0x52,0x7f]
          vfmsubadd213pd 1016(%rdx){1to8}, %zmm23, %zmm2

// CHECK: vfmsubadd213pd 1024(%rdx){1to8}, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x50,0xa7,0x92,0x00,0x04,0x00,0x00]
          vfmsubadd213pd 1024(%rdx){1to8}, %zmm23, %zmm2

// CHECK: vfmsubadd213pd -1024(%rdx){1to8}, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x50,0xa7,0x52,0x80]
          vfmsubadd213pd -1024(%rdx){1to8}, %zmm23, %zmm2

// CHECK: vfmsubadd213pd -1032(%rdx){1to8}, %zmm23, %zmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x50,0xa7,0x92,0xf8,0xfb,0xff,0xff]
          vfmsubadd213pd -1032(%rdx){1to8}, %zmm23, %zmm2

// CHECK: vfmsubadd231ps %zmm1, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x40,0xb7,0xc1]
          vfmsubadd231ps %zmm1, %zmm19, %zmm8

// CHECK: vfmsubadd231ps %zmm1, %zmm19, %zmm8 {%k2}
// CHECK:  encoding: [0x62,0x72,0x65,0x42,0xb7,0xc1]
          vfmsubadd231ps %zmm1, %zmm19, %zmm8 {%k2}

// CHECK: vfmsubadd231ps %zmm1, %zmm19, %zmm8 {%k2} {z}
// CHECK:  encoding: [0x62,0x72,0x65,0xc2,0xb7,0xc1]
          vfmsubadd231ps %zmm1, %zmm19, %zmm8 {%k2} {z}

// CHECK: vfmsubadd231ps {rn-sae}, %zmm1, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x10,0xb7,0xc1]
          vfmsubadd231ps {rn-sae}, %zmm1, %zmm19, %zmm8

// CHECK: vfmsubadd231ps {ru-sae}, %zmm1, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x50,0xb7,0xc1]
          vfmsubadd231ps {ru-sae}, %zmm1, %zmm19, %zmm8

// CHECK: vfmsubadd231ps {rd-sae}, %zmm1, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x30,0xb7,0xc1]
          vfmsubadd231ps {rd-sae}, %zmm1, %zmm19, %zmm8

// CHECK: vfmsubadd231ps {rz-sae}, %zmm1, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x70,0xb7,0xc1]
          vfmsubadd231ps {rz-sae}, %zmm1, %zmm19, %zmm8

// CHECK: vfmsubadd231ps (%rcx), %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x40,0xb7,0x01]
          vfmsubadd231ps (%rcx), %zmm19, %zmm8

// CHECK: vfmsubadd231ps 291(%rax,%r14,8), %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x32,0x65,0x40,0xb7,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd231ps 291(%rax,%r14,8), %zmm19, %zmm8

// CHECK: vfmsubadd231ps (%rcx){1to16}, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x50,0xb7,0x01]
          vfmsubadd231ps (%rcx){1to16}, %zmm19, %zmm8

// CHECK: vfmsubadd231ps 8128(%rdx), %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x40,0xb7,0x42,0x7f]
          vfmsubadd231ps 8128(%rdx), %zmm19, %zmm8

// CHECK: vfmsubadd231ps 8192(%rdx), %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x40,0xb7,0x82,0x00,0x20,0x00,0x00]
          vfmsubadd231ps 8192(%rdx), %zmm19, %zmm8

// CHECK: vfmsubadd231ps -8192(%rdx), %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x40,0xb7,0x42,0x80]
          vfmsubadd231ps -8192(%rdx), %zmm19, %zmm8

// CHECK: vfmsubadd231ps -8256(%rdx), %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x40,0xb7,0x82,0xc0,0xdf,0xff,0xff]
          vfmsubadd231ps -8256(%rdx), %zmm19, %zmm8

// CHECK: vfmsubadd231ps 508(%rdx){1to16}, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x50,0xb7,0x42,0x7f]
          vfmsubadd231ps 508(%rdx){1to16}, %zmm19, %zmm8

// CHECK: vfmsubadd231ps 512(%rdx){1to16}, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x50,0xb7,0x82,0x00,0x02,0x00,0x00]
          vfmsubadd231ps 512(%rdx){1to16}, %zmm19, %zmm8

// CHECK: vfmsubadd231ps -512(%rdx){1to16}, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x50,0xb7,0x42,0x80]
          vfmsubadd231ps -512(%rdx){1to16}, %zmm19, %zmm8

// CHECK: vfmsubadd231ps -516(%rdx){1to16}, %zmm19, %zmm8
// CHECK:  encoding: [0x62,0x72,0x65,0x50,0xb7,0x82,0xfc,0xfd,0xff,0xff]
          vfmsubadd231ps -516(%rdx){1to16}, %zmm19, %zmm8

// CHECK: vfmsubadd231pd %zmm21, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xa2,0xa5,0x40,0xb7,0xc5]
          vfmsubadd231pd %zmm21, %zmm27, %zmm16

// CHECK: vfmsubadd231pd %zmm21, %zmm27, %zmm16 {%k2}
// CHECK:  encoding: [0x62,0xa2,0xa5,0x42,0xb7,0xc5]
          vfmsubadd231pd %zmm21, %zmm27, %zmm16 {%k2}

// CHECK: vfmsubadd231pd %zmm21, %zmm27, %zmm16 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0xa5,0xc2,0xb7,0xc5]
          vfmsubadd231pd %zmm21, %zmm27, %zmm16 {%k2} {z}

// CHECK: vfmsubadd231pd {rn-sae}, %zmm21, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xa2,0xa5,0x10,0xb7,0xc5]
          vfmsubadd231pd {rn-sae}, %zmm21, %zmm27, %zmm16

// CHECK: vfmsubadd231pd {ru-sae}, %zmm21, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xa2,0xa5,0x50,0xb7,0xc5]
          vfmsubadd231pd {ru-sae}, %zmm21, %zmm27, %zmm16

// CHECK: vfmsubadd231pd {rd-sae}, %zmm21, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xa2,0xa5,0x30,0xb7,0xc5]
          vfmsubadd231pd {rd-sae}, %zmm21, %zmm27, %zmm16

// CHECK: vfmsubadd231pd {rz-sae}, %zmm21, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xa2,0xa5,0x70,0xb7,0xc5]
          vfmsubadd231pd {rz-sae}, %zmm21, %zmm27, %zmm16

// CHECK: vfmsubadd231pd (%rcx), %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x40,0xb7,0x01]
          vfmsubadd231pd (%rcx), %zmm27, %zmm16

// CHECK: vfmsubadd231pd 291(%rax,%r14,8), %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xa2,0xa5,0x40,0xb7,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd231pd 291(%rax,%r14,8), %zmm27, %zmm16

// CHECK: vfmsubadd231pd (%rcx){1to8}, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x50,0xb7,0x01]
          vfmsubadd231pd (%rcx){1to8}, %zmm27, %zmm16

// CHECK: vfmsubadd231pd 8128(%rdx), %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x40,0xb7,0x42,0x7f]
          vfmsubadd231pd 8128(%rdx), %zmm27, %zmm16

// CHECK: vfmsubadd231pd 8192(%rdx), %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x40,0xb7,0x82,0x00,0x20,0x00,0x00]
          vfmsubadd231pd 8192(%rdx), %zmm27, %zmm16

// CHECK: vfmsubadd231pd -8192(%rdx), %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x40,0xb7,0x42,0x80]
          vfmsubadd231pd -8192(%rdx), %zmm27, %zmm16

// CHECK: vfmsubadd231pd -8256(%rdx), %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x40,0xb7,0x82,0xc0,0xdf,0xff,0xff]
          vfmsubadd231pd -8256(%rdx), %zmm27, %zmm16

// CHECK: vfmsubadd231pd 1016(%rdx){1to8}, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x50,0xb7,0x42,0x7f]
          vfmsubadd231pd 1016(%rdx){1to8}, %zmm27, %zmm16

// CHECK: vfmsubadd231pd 1024(%rdx){1to8}, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x50,0xb7,0x82,0x00,0x04,0x00,0x00]
          vfmsubadd231pd 1024(%rdx){1to8}, %zmm27, %zmm16

// CHECK: vfmsubadd231pd -1024(%rdx){1to8}, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x50,0xb7,0x42,0x80]
          vfmsubadd231pd -1024(%rdx){1to8}, %zmm27, %zmm16

// CHECK: vfmsubadd231pd -1032(%rdx){1to8}, %zmm27, %zmm16
// CHECK:  encoding: [0x62,0xe2,0xa5,0x50,0xb7,0x82,0xf8,0xfb,0xff,0xff]
          vfmsubadd231pd -1032(%rdx){1to8}, %zmm27, %zmm16

// CHECK: vfnmadd132ps %zmm10, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xc2,0x7d,0x40,0x9c,0xea]
          vfnmadd132ps %zmm10, %zmm16, %zmm21

// CHECK: vfnmadd132ps %zmm10, %zmm16, %zmm21 {%k5}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x45,0x9c,0xea]
          vfnmadd132ps %zmm10, %zmm16, %zmm21 {%k5}

// CHECK: vfnmadd132ps %zmm10, %zmm16, %zmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0xc2,0x7d,0xc5,0x9c,0xea]
          vfnmadd132ps %zmm10, %zmm16, %zmm21 {%k5} {z}

// CHECK: vfnmadd132ps {rn-sae}, %zmm10, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xc2,0x7d,0x10,0x9c,0xea]
          vfnmadd132ps {rn-sae}, %zmm10, %zmm16, %zmm21

// CHECK: vfnmadd132ps {ru-sae}, %zmm10, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xc2,0x7d,0x50,0x9c,0xea]
          vfnmadd132ps {ru-sae}, %zmm10, %zmm16, %zmm21

// CHECK: vfnmadd132ps {rd-sae}, %zmm10, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xc2,0x7d,0x30,0x9c,0xea]
          vfnmadd132ps {rd-sae}, %zmm10, %zmm16, %zmm21

// CHECK: vfnmadd132ps {rz-sae}, %zmm10, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xc2,0x7d,0x70,0x9c,0xea]
          vfnmadd132ps {rz-sae}, %zmm10, %zmm16, %zmm21

// CHECK: vfnmadd132ps (%rcx), %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x40,0x9c,0x29]
          vfnmadd132ps (%rcx), %zmm16, %zmm21

// CHECK: vfnmadd132ps 291(%rax,%r14,8), %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xa2,0x7d,0x40,0x9c,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd132ps 291(%rax,%r14,8), %zmm16, %zmm21

// CHECK: vfnmadd132ps (%rcx){1to16}, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x50,0x9c,0x29]
          vfnmadd132ps (%rcx){1to16}, %zmm16, %zmm21

// CHECK: vfnmadd132ps 8128(%rdx), %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x40,0x9c,0x6a,0x7f]
          vfnmadd132ps 8128(%rdx), %zmm16, %zmm21

// CHECK: vfnmadd132ps 8192(%rdx), %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x40,0x9c,0xaa,0x00,0x20,0x00,0x00]
          vfnmadd132ps 8192(%rdx), %zmm16, %zmm21

// CHECK: vfnmadd132ps -8192(%rdx), %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x40,0x9c,0x6a,0x80]
          vfnmadd132ps -8192(%rdx), %zmm16, %zmm21

// CHECK: vfnmadd132ps -8256(%rdx), %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x40,0x9c,0xaa,0xc0,0xdf,0xff,0xff]
          vfnmadd132ps -8256(%rdx), %zmm16, %zmm21

// CHECK: vfnmadd132ps 508(%rdx){1to16}, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x50,0x9c,0x6a,0x7f]
          vfnmadd132ps 508(%rdx){1to16}, %zmm16, %zmm21

// CHECK: vfnmadd132ps 512(%rdx){1to16}, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x50,0x9c,0xaa,0x00,0x02,0x00,0x00]
          vfnmadd132ps 512(%rdx){1to16}, %zmm16, %zmm21

// CHECK: vfnmadd132ps -512(%rdx){1to16}, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x50,0x9c,0x6a,0x80]
          vfnmadd132ps -512(%rdx){1to16}, %zmm16, %zmm21

// CHECK: vfnmadd132ps -516(%rdx){1to16}, %zmm16, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x50,0x9c,0xaa,0xfc,0xfd,0xff,0xff]
          vfnmadd132ps -516(%rdx){1to16}, %zmm16, %zmm21

// CHECK: vfnmadd132pd %zmm1, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x48,0x9c,0xe1]
          vfnmadd132pd %zmm1, %zmm14, %zmm12

// CHECK: vfnmadd132pd %zmm1, %zmm14, %zmm12 {%k7}
// CHECK:  encoding: [0x62,0x72,0x8d,0x4f,0x9c,0xe1]
          vfnmadd132pd %zmm1, %zmm14, %zmm12 {%k7}

// CHECK: vfnmadd132pd %zmm1, %zmm14, %zmm12 {%k7} {z}
// CHECK:  encoding: [0x62,0x72,0x8d,0xcf,0x9c,0xe1]
          vfnmadd132pd %zmm1, %zmm14, %zmm12 {%k7} {z}

// CHECK: vfnmadd132pd {rn-sae}, %zmm1, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x18,0x9c,0xe1]
          vfnmadd132pd {rn-sae}, %zmm1, %zmm14, %zmm12

// CHECK: vfnmadd132pd {ru-sae}, %zmm1, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x58,0x9c,0xe1]
          vfnmadd132pd {ru-sae}, %zmm1, %zmm14, %zmm12

// CHECK: vfnmadd132pd {rd-sae}, %zmm1, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x38,0x9c,0xe1]
          vfnmadd132pd {rd-sae}, %zmm1, %zmm14, %zmm12

// CHECK: vfnmadd132pd {rz-sae}, %zmm1, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x78,0x9c,0xe1]
          vfnmadd132pd {rz-sae}, %zmm1, %zmm14, %zmm12

// CHECK: vfnmadd132pd (%rcx), %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x48,0x9c,0x21]
          vfnmadd132pd (%rcx), %zmm14, %zmm12

// CHECK: vfnmadd132pd 291(%rax,%r14,8), %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x32,0x8d,0x48,0x9c,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd132pd 291(%rax,%r14,8), %zmm14, %zmm12

// CHECK: vfnmadd132pd (%rcx){1to8}, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x58,0x9c,0x21]
          vfnmadd132pd (%rcx){1to8}, %zmm14, %zmm12

// CHECK: vfnmadd132pd 8128(%rdx), %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x48,0x9c,0x62,0x7f]
          vfnmadd132pd 8128(%rdx), %zmm14, %zmm12

// CHECK: vfnmadd132pd 8192(%rdx), %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x48,0x9c,0xa2,0x00,0x20,0x00,0x00]
          vfnmadd132pd 8192(%rdx), %zmm14, %zmm12

// CHECK: vfnmadd132pd -8192(%rdx), %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x48,0x9c,0x62,0x80]
          vfnmadd132pd -8192(%rdx), %zmm14, %zmm12

// CHECK: vfnmadd132pd -8256(%rdx), %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x48,0x9c,0xa2,0xc0,0xdf,0xff,0xff]
          vfnmadd132pd -8256(%rdx), %zmm14, %zmm12

// CHECK: vfnmadd132pd 1016(%rdx){1to8}, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x58,0x9c,0x62,0x7f]
          vfnmadd132pd 1016(%rdx){1to8}, %zmm14, %zmm12

// CHECK: vfnmadd132pd 1024(%rdx){1to8}, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x58,0x9c,0xa2,0x00,0x04,0x00,0x00]
          vfnmadd132pd 1024(%rdx){1to8}, %zmm14, %zmm12

// CHECK: vfnmadd132pd -1024(%rdx){1to8}, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x58,0x9c,0x62,0x80]
          vfnmadd132pd -1024(%rdx){1to8}, %zmm14, %zmm12

// CHECK: vfnmadd132pd -1032(%rdx){1to8}, %zmm14, %zmm12
// CHECK:  encoding: [0x62,0x72,0x8d,0x58,0x9c,0xa2,0xf8,0xfb,0xff,0xff]
          vfnmadd132pd -1032(%rdx){1to8}, %zmm14, %zmm12

// CHECK: vfnmadd213ps %zmm6, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x48,0xac,0xd6]
          vfnmadd213ps %zmm6, %zmm10, %zmm26

// CHECK: vfnmadd213ps %zmm6, %zmm10, %zmm26 {%k6}
// CHECK:  encoding: [0x62,0x62,0x2d,0x4e,0xac,0xd6]
          vfnmadd213ps %zmm6, %zmm10, %zmm26 {%k6}

// CHECK: vfnmadd213ps %zmm6, %zmm10, %zmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x62,0x2d,0xce,0xac,0xd6]
          vfnmadd213ps %zmm6, %zmm10, %zmm26 {%k6} {z}

// CHECK: vfnmadd213ps {rn-sae}, %zmm6, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x18,0xac,0xd6]
          vfnmadd213ps {rn-sae}, %zmm6, %zmm10, %zmm26

// CHECK: vfnmadd213ps {ru-sae}, %zmm6, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x58,0xac,0xd6]
          vfnmadd213ps {ru-sae}, %zmm6, %zmm10, %zmm26

// CHECK: vfnmadd213ps {rd-sae}, %zmm6, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x38,0xac,0xd6]
          vfnmadd213ps {rd-sae}, %zmm6, %zmm10, %zmm26

// CHECK: vfnmadd213ps {rz-sae}, %zmm6, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x78,0xac,0xd6]
          vfnmadd213ps {rz-sae}, %zmm6, %zmm10, %zmm26

// CHECK: vfnmadd213ps (%rcx), %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x48,0xac,0x11]
          vfnmadd213ps (%rcx), %zmm10, %zmm26

// CHECK: vfnmadd213ps 291(%rax,%r14,8), %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x22,0x2d,0x48,0xac,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd213ps 291(%rax,%r14,8), %zmm10, %zmm26

// CHECK: vfnmadd213ps (%rcx){1to16}, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x58,0xac,0x11]
          vfnmadd213ps (%rcx){1to16}, %zmm10, %zmm26

// CHECK: vfnmadd213ps 8128(%rdx), %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x48,0xac,0x52,0x7f]
          vfnmadd213ps 8128(%rdx), %zmm10, %zmm26

// CHECK: vfnmadd213ps 8192(%rdx), %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x48,0xac,0x92,0x00,0x20,0x00,0x00]
          vfnmadd213ps 8192(%rdx), %zmm10, %zmm26

// CHECK: vfnmadd213ps -8192(%rdx), %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x48,0xac,0x52,0x80]
          vfnmadd213ps -8192(%rdx), %zmm10, %zmm26

// CHECK: vfnmadd213ps -8256(%rdx), %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x48,0xac,0x92,0xc0,0xdf,0xff,0xff]
          vfnmadd213ps -8256(%rdx), %zmm10, %zmm26

// CHECK: vfnmadd213ps 508(%rdx){1to16}, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x58,0xac,0x52,0x7f]
          vfnmadd213ps 508(%rdx){1to16}, %zmm10, %zmm26

// CHECK: vfnmadd213ps 512(%rdx){1to16}, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x58,0xac,0x92,0x00,0x02,0x00,0x00]
          vfnmadd213ps 512(%rdx){1to16}, %zmm10, %zmm26

// CHECK: vfnmadd213ps -512(%rdx){1to16}, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x58,0xac,0x52,0x80]
          vfnmadd213ps -512(%rdx){1to16}, %zmm10, %zmm26

// CHECK: vfnmadd213ps -516(%rdx){1to16}, %zmm10, %zmm26
// CHECK:  encoding: [0x62,0x62,0x2d,0x58,0xac,0x92,0xfc,0xfd,0xff,0xff]
          vfnmadd213ps -516(%rdx){1to16}, %zmm10, %zmm26

// CHECK: vfnmadd213pd %zmm9, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xc2,0xfd,0x40,0xac,0xc9]
          vfnmadd213pd %zmm9, %zmm16, %zmm17

// CHECK: vfnmadd213pd %zmm9, %zmm16, %zmm17 {%k4}
// CHECK:  encoding: [0x62,0xc2,0xfd,0x44,0xac,0xc9]
          vfnmadd213pd %zmm9, %zmm16, %zmm17 {%k4}

// CHECK: vfnmadd213pd %zmm9, %zmm16, %zmm17 {%k4} {z}
// CHECK:  encoding: [0x62,0xc2,0xfd,0xc4,0xac,0xc9]
          vfnmadd213pd %zmm9, %zmm16, %zmm17 {%k4} {z}

// CHECK: vfnmadd213pd {rn-sae}, %zmm9, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xc2,0xfd,0x10,0xac,0xc9]
          vfnmadd213pd {rn-sae}, %zmm9, %zmm16, %zmm17

// CHECK: vfnmadd213pd {ru-sae}, %zmm9, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xc2,0xfd,0x50,0xac,0xc9]
          vfnmadd213pd {ru-sae}, %zmm9, %zmm16, %zmm17

// CHECK: vfnmadd213pd {rd-sae}, %zmm9, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xc2,0xfd,0x30,0xac,0xc9]
          vfnmadd213pd {rd-sae}, %zmm9, %zmm16, %zmm17

// CHECK: vfnmadd213pd {rz-sae}, %zmm9, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xc2,0xfd,0x70,0xac,0xc9]
          vfnmadd213pd {rz-sae}, %zmm9, %zmm16, %zmm17

// CHECK: vfnmadd213pd (%rcx), %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xac,0x09]
          vfnmadd213pd (%rcx), %zmm16, %zmm17

// CHECK: vfnmadd213pd 291(%rax,%r14,8), %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xa2,0xfd,0x40,0xac,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd213pd 291(%rax,%r14,8), %zmm16, %zmm17

// CHECK: vfnmadd213pd (%rcx){1to8}, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xac,0x09]
          vfnmadd213pd (%rcx){1to8}, %zmm16, %zmm17

// CHECK: vfnmadd213pd 8128(%rdx), %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xac,0x4a,0x7f]
          vfnmadd213pd 8128(%rdx), %zmm16, %zmm17

// CHECK: vfnmadd213pd 8192(%rdx), %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xac,0x8a,0x00,0x20,0x00,0x00]
          vfnmadd213pd 8192(%rdx), %zmm16, %zmm17

// CHECK: vfnmadd213pd -8192(%rdx), %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xac,0x4a,0x80]
          vfnmadd213pd -8192(%rdx), %zmm16, %zmm17

// CHECK: vfnmadd213pd -8256(%rdx), %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x40,0xac,0x8a,0xc0,0xdf,0xff,0xff]
          vfnmadd213pd -8256(%rdx), %zmm16, %zmm17

// CHECK: vfnmadd213pd 1016(%rdx){1to8}, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xac,0x4a,0x7f]
          vfnmadd213pd 1016(%rdx){1to8}, %zmm16, %zmm17

// CHECK: vfnmadd213pd 1024(%rdx){1to8}, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xac,0x8a,0x00,0x04,0x00,0x00]
          vfnmadd213pd 1024(%rdx){1to8}, %zmm16, %zmm17

// CHECK: vfnmadd213pd -1024(%rdx){1to8}, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xac,0x4a,0x80]
          vfnmadd213pd -1024(%rdx){1to8}, %zmm16, %zmm17

// CHECK: vfnmadd213pd -1032(%rdx){1to8}, %zmm16, %zmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x50,0xac,0x8a,0xf8,0xfb,0xff,0xff]
          vfnmadd213pd -1032(%rdx){1to8}, %zmm16, %zmm17

// CHECK: vfnmadd231ps %zmm24, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x12,0x45,0x48,0xbc,0xf0]
          vfnmadd231ps %zmm24, %zmm7, %zmm14

// CHECK: vfnmadd231ps %zmm24, %zmm7, %zmm14 {%k5}
// CHECK:  encoding: [0x62,0x12,0x45,0x4d,0xbc,0xf0]
          vfnmadd231ps %zmm24, %zmm7, %zmm14 {%k5}

// CHECK: vfnmadd231ps %zmm24, %zmm7, %zmm14 {%k5} {z}
// CHECK:  encoding: [0x62,0x12,0x45,0xcd,0xbc,0xf0]
          vfnmadd231ps %zmm24, %zmm7, %zmm14 {%k5} {z}

// CHECK: vfnmadd231ps {rn-sae}, %zmm24, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x12,0x45,0x18,0xbc,0xf0]
          vfnmadd231ps {rn-sae}, %zmm24, %zmm7, %zmm14

// CHECK: vfnmadd231ps {ru-sae}, %zmm24, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x12,0x45,0x58,0xbc,0xf0]
          vfnmadd231ps {ru-sae}, %zmm24, %zmm7, %zmm14

// CHECK: vfnmadd231ps {rd-sae}, %zmm24, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x12,0x45,0x38,0xbc,0xf0]
          vfnmadd231ps {rd-sae}, %zmm24, %zmm7, %zmm14

// CHECK: vfnmadd231ps {rz-sae}, %zmm24, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x12,0x45,0x78,0xbc,0xf0]
          vfnmadd231ps {rz-sae}, %zmm24, %zmm7, %zmm14

// CHECK: vfnmadd231ps (%rcx), %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x48,0xbc,0x31]
          vfnmadd231ps (%rcx), %zmm7, %zmm14

// CHECK: vfnmadd231ps 291(%rax,%r14,8), %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x32,0x45,0x48,0xbc,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd231ps 291(%rax,%r14,8), %zmm7, %zmm14

// CHECK: vfnmadd231ps (%rcx){1to16}, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x58,0xbc,0x31]
          vfnmadd231ps (%rcx){1to16}, %zmm7, %zmm14

// CHECK: vfnmadd231ps 8128(%rdx), %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x48,0xbc,0x72,0x7f]
          vfnmadd231ps 8128(%rdx), %zmm7, %zmm14

// CHECK: vfnmadd231ps 8192(%rdx), %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x48,0xbc,0xb2,0x00,0x20,0x00,0x00]
          vfnmadd231ps 8192(%rdx), %zmm7, %zmm14

// CHECK: vfnmadd231ps -8192(%rdx), %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x48,0xbc,0x72,0x80]
          vfnmadd231ps -8192(%rdx), %zmm7, %zmm14

// CHECK: vfnmadd231ps -8256(%rdx), %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x48,0xbc,0xb2,0xc0,0xdf,0xff,0xff]
          vfnmadd231ps -8256(%rdx), %zmm7, %zmm14

// CHECK: vfnmadd231ps 508(%rdx){1to16}, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x58,0xbc,0x72,0x7f]
          vfnmadd231ps 508(%rdx){1to16}, %zmm7, %zmm14

// CHECK: vfnmadd231ps 512(%rdx){1to16}, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x58,0xbc,0xb2,0x00,0x02,0x00,0x00]
          vfnmadd231ps 512(%rdx){1to16}, %zmm7, %zmm14

// CHECK: vfnmadd231ps -512(%rdx){1to16}, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x58,0xbc,0x72,0x80]
          vfnmadd231ps -512(%rdx){1to16}, %zmm7, %zmm14

// CHECK: vfnmadd231ps -516(%rdx){1to16}, %zmm7, %zmm14
// CHECK:  encoding: [0x62,0x72,0x45,0x58,0xbc,0xb2,0xfc,0xfd,0xff,0xff]
          vfnmadd231ps -516(%rdx){1to16}, %zmm7, %zmm14

// CHECK: vfnmadd231pd %zmm16, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x32,0xa5,0x48,0xbc,0xe0]
          vfnmadd231pd %zmm16, %zmm11, %zmm12

// CHECK: vfnmadd231pd %zmm16, %zmm11, %zmm12 {%k6}
// CHECK:  encoding: [0x62,0x32,0xa5,0x4e,0xbc,0xe0]
          vfnmadd231pd %zmm16, %zmm11, %zmm12 {%k6}

// CHECK: vfnmadd231pd %zmm16, %zmm11, %zmm12 {%k6} {z}
// CHECK:  encoding: [0x62,0x32,0xa5,0xce,0xbc,0xe0]
          vfnmadd231pd %zmm16, %zmm11, %zmm12 {%k6} {z}

// CHECK: vfnmadd231pd {rn-sae}, %zmm16, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x32,0xa5,0x18,0xbc,0xe0]
          vfnmadd231pd {rn-sae}, %zmm16, %zmm11, %zmm12

// CHECK: vfnmadd231pd {ru-sae}, %zmm16, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x32,0xa5,0x58,0xbc,0xe0]
          vfnmadd231pd {ru-sae}, %zmm16, %zmm11, %zmm12

// CHECK: vfnmadd231pd {rd-sae}, %zmm16, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x32,0xa5,0x38,0xbc,0xe0]
          vfnmadd231pd {rd-sae}, %zmm16, %zmm11, %zmm12

// CHECK: vfnmadd231pd {rz-sae}, %zmm16, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x32,0xa5,0x78,0xbc,0xe0]
          vfnmadd231pd {rz-sae}, %zmm16, %zmm11, %zmm12

// CHECK: vfnmadd231pd (%rcx), %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x48,0xbc,0x21]
          vfnmadd231pd (%rcx), %zmm11, %zmm12

// CHECK: vfnmadd231pd 291(%rax,%r14,8), %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x32,0xa5,0x48,0xbc,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd231pd 291(%rax,%r14,8), %zmm11, %zmm12

// CHECK: vfnmadd231pd (%rcx){1to8}, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x58,0xbc,0x21]
          vfnmadd231pd (%rcx){1to8}, %zmm11, %zmm12

// CHECK: vfnmadd231pd 8128(%rdx), %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x48,0xbc,0x62,0x7f]
          vfnmadd231pd 8128(%rdx), %zmm11, %zmm12

// CHECK: vfnmadd231pd 8192(%rdx), %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x48,0xbc,0xa2,0x00,0x20,0x00,0x00]
          vfnmadd231pd 8192(%rdx), %zmm11, %zmm12

// CHECK: vfnmadd231pd -8192(%rdx), %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x48,0xbc,0x62,0x80]
          vfnmadd231pd -8192(%rdx), %zmm11, %zmm12

// CHECK: vfnmadd231pd -8256(%rdx), %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x48,0xbc,0xa2,0xc0,0xdf,0xff,0xff]
          vfnmadd231pd -8256(%rdx), %zmm11, %zmm12

// CHECK: vfnmadd231pd 1016(%rdx){1to8}, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x58,0xbc,0x62,0x7f]
          vfnmadd231pd 1016(%rdx){1to8}, %zmm11, %zmm12

// CHECK: vfnmadd231pd 1024(%rdx){1to8}, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x58,0xbc,0xa2,0x00,0x04,0x00,0x00]
          vfnmadd231pd 1024(%rdx){1to8}, %zmm11, %zmm12

// CHECK: vfnmadd231pd -1024(%rdx){1to8}, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x58,0xbc,0x62,0x80]
          vfnmadd231pd -1024(%rdx){1to8}, %zmm11, %zmm12

// CHECK: vfnmadd231pd -1032(%rdx){1to8}, %zmm11, %zmm12
// CHECK:  encoding: [0x62,0x72,0xa5,0x58,0xbc,0xa2,0xf8,0xfb,0xff,0xff]
          vfnmadd231pd -1032(%rdx){1to8}, %zmm11, %zmm12

// CHECK: vfnmsub132ps %zmm6, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x40,0x9e,0xe6]
          vfnmsub132ps %zmm6, %zmm18, %zmm4

// CHECK: vfnmsub132ps %zmm6, %zmm18, %zmm4 {%k2}
// CHECK:  encoding: [0x62,0xf2,0x6d,0x42,0x9e,0xe6]
          vfnmsub132ps %zmm6, %zmm18, %zmm4 {%k2}

// CHECK: vfnmsub132ps %zmm6, %zmm18, %zmm4 {%k2} {z}
// CHECK:  encoding: [0x62,0xf2,0x6d,0xc2,0x9e,0xe6]
          vfnmsub132ps %zmm6, %zmm18, %zmm4 {%k2} {z}

// CHECK: vfnmsub132ps {rn-sae}, %zmm6, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x10,0x9e,0xe6]
          vfnmsub132ps {rn-sae}, %zmm6, %zmm18, %zmm4

// CHECK: vfnmsub132ps {ru-sae}, %zmm6, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x50,0x9e,0xe6]
          vfnmsub132ps {ru-sae}, %zmm6, %zmm18, %zmm4

// CHECK: vfnmsub132ps {rd-sae}, %zmm6, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x30,0x9e,0xe6]
          vfnmsub132ps {rd-sae}, %zmm6, %zmm18, %zmm4

// CHECK: vfnmsub132ps {rz-sae}, %zmm6, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x70,0x9e,0xe6]
          vfnmsub132ps {rz-sae}, %zmm6, %zmm18, %zmm4

// CHECK: vfnmsub132ps (%rcx), %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x40,0x9e,0x21]
          vfnmsub132ps (%rcx), %zmm18, %zmm4

// CHECK: vfnmsub132ps 291(%rax,%r14,8), %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xb2,0x6d,0x40,0x9e,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub132ps 291(%rax,%r14,8), %zmm18, %zmm4

// CHECK: vfnmsub132ps (%rcx){1to16}, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x50,0x9e,0x21]
          vfnmsub132ps (%rcx){1to16}, %zmm18, %zmm4

// CHECK: vfnmsub132ps 8128(%rdx), %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x40,0x9e,0x62,0x7f]
          vfnmsub132ps 8128(%rdx), %zmm18, %zmm4

// CHECK: vfnmsub132ps 8192(%rdx), %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x40,0x9e,0xa2,0x00,0x20,0x00,0x00]
          vfnmsub132ps 8192(%rdx), %zmm18, %zmm4

// CHECK: vfnmsub132ps -8192(%rdx), %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x40,0x9e,0x62,0x80]
          vfnmsub132ps -8192(%rdx), %zmm18, %zmm4

// CHECK: vfnmsub132ps -8256(%rdx), %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x40,0x9e,0xa2,0xc0,0xdf,0xff,0xff]
          vfnmsub132ps -8256(%rdx), %zmm18, %zmm4

// CHECK: vfnmsub132ps 508(%rdx){1to16}, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x50,0x9e,0x62,0x7f]
          vfnmsub132ps 508(%rdx){1to16}, %zmm18, %zmm4

// CHECK: vfnmsub132ps 512(%rdx){1to16}, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x50,0x9e,0xa2,0x00,0x02,0x00,0x00]
          vfnmsub132ps 512(%rdx){1to16}, %zmm18, %zmm4

// CHECK: vfnmsub132ps -512(%rdx){1to16}, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x50,0x9e,0x62,0x80]
          vfnmsub132ps -512(%rdx){1to16}, %zmm18, %zmm4

// CHECK: vfnmsub132ps -516(%rdx){1to16}, %zmm18, %zmm4
// CHECK:  encoding: [0x62,0xf2,0x6d,0x50,0x9e,0xa2,0xfc,0xfd,0xff,0xff]
          vfnmsub132ps -516(%rdx){1to16}, %zmm18, %zmm4

// CHECK: vfnmsub132pd %zmm6, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x48,0x9e,0xe6]
          vfnmsub132pd %zmm6, %zmm5, %zmm28

// CHECK: vfnmsub132pd %zmm6, %zmm5, %zmm28 {%k2}
// CHECK:  encoding: [0x62,0x62,0xd5,0x4a,0x9e,0xe6]
          vfnmsub132pd %zmm6, %zmm5, %zmm28 {%k2}

// CHECK: vfnmsub132pd %zmm6, %zmm5, %zmm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x62,0xd5,0xca,0x9e,0xe6]
          vfnmsub132pd %zmm6, %zmm5, %zmm28 {%k2} {z}

// CHECK: vfnmsub132pd {rn-sae}, %zmm6, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x18,0x9e,0xe6]
          vfnmsub132pd {rn-sae}, %zmm6, %zmm5, %zmm28

// CHECK: vfnmsub132pd {ru-sae}, %zmm6, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x58,0x9e,0xe6]
          vfnmsub132pd {ru-sae}, %zmm6, %zmm5, %zmm28

// CHECK: vfnmsub132pd {rd-sae}, %zmm6, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x38,0x9e,0xe6]
          vfnmsub132pd {rd-sae}, %zmm6, %zmm5, %zmm28

// CHECK: vfnmsub132pd {rz-sae}, %zmm6, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x78,0x9e,0xe6]
          vfnmsub132pd {rz-sae}, %zmm6, %zmm5, %zmm28

// CHECK: vfnmsub132pd (%rcx), %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x48,0x9e,0x21]
          vfnmsub132pd (%rcx), %zmm5, %zmm28

// CHECK: vfnmsub132pd 291(%rax,%r14,8), %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x22,0xd5,0x48,0x9e,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub132pd 291(%rax,%r14,8), %zmm5, %zmm28

// CHECK: vfnmsub132pd (%rcx){1to8}, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x58,0x9e,0x21]
          vfnmsub132pd (%rcx){1to8}, %zmm5, %zmm28

// CHECK: vfnmsub132pd 8128(%rdx), %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x48,0x9e,0x62,0x7f]
          vfnmsub132pd 8128(%rdx), %zmm5, %zmm28

// CHECK: vfnmsub132pd 8192(%rdx), %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x48,0x9e,0xa2,0x00,0x20,0x00,0x00]
          vfnmsub132pd 8192(%rdx), %zmm5, %zmm28

// CHECK: vfnmsub132pd -8192(%rdx), %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x48,0x9e,0x62,0x80]
          vfnmsub132pd -8192(%rdx), %zmm5, %zmm28

// CHECK: vfnmsub132pd -8256(%rdx), %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x48,0x9e,0xa2,0xc0,0xdf,0xff,0xff]
          vfnmsub132pd -8256(%rdx), %zmm5, %zmm28

// CHECK: vfnmsub132pd 1016(%rdx){1to8}, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x58,0x9e,0x62,0x7f]
          vfnmsub132pd 1016(%rdx){1to8}, %zmm5, %zmm28

// CHECK: vfnmsub132pd 1024(%rdx){1to8}, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x58,0x9e,0xa2,0x00,0x04,0x00,0x00]
          vfnmsub132pd 1024(%rdx){1to8}, %zmm5, %zmm28

// CHECK: vfnmsub132pd -1024(%rdx){1to8}, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x58,0x9e,0x62,0x80]
          vfnmsub132pd -1024(%rdx){1to8}, %zmm5, %zmm28

// CHECK: vfnmsub132pd -1032(%rdx){1to8}, %zmm5, %zmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x58,0x9e,0xa2,0xf8,0xfb,0xff,0xff]
          vfnmsub132pd -1032(%rdx){1to8}, %zmm5, %zmm28

// CHECK: vfnmsub213ps %zmm2, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x48,0xae,0xea]
          vfnmsub213ps %zmm2, %zmm13, %zmm21

// CHECK: vfnmsub213ps %zmm2, %zmm13, %zmm21 {%k3}
// CHECK:  encoding: [0x62,0xe2,0x15,0x4b,0xae,0xea]
          vfnmsub213ps %zmm2, %zmm13, %zmm21 {%k3}

// CHECK: vfnmsub213ps %zmm2, %zmm13, %zmm21 {%k3} {z}
// CHECK:  encoding: [0x62,0xe2,0x15,0xcb,0xae,0xea]
          vfnmsub213ps %zmm2, %zmm13, %zmm21 {%k3} {z}

// CHECK: vfnmsub213ps {rn-sae}, %zmm2, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x18,0xae,0xea]
          vfnmsub213ps {rn-sae}, %zmm2, %zmm13, %zmm21

// CHECK: vfnmsub213ps {ru-sae}, %zmm2, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x58,0xae,0xea]
          vfnmsub213ps {ru-sae}, %zmm2, %zmm13, %zmm21

// CHECK: vfnmsub213ps {rd-sae}, %zmm2, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x38,0xae,0xea]
          vfnmsub213ps {rd-sae}, %zmm2, %zmm13, %zmm21

// CHECK: vfnmsub213ps {rz-sae}, %zmm2, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x78,0xae,0xea]
          vfnmsub213ps {rz-sae}, %zmm2, %zmm13, %zmm21

// CHECK: vfnmsub213ps (%rcx), %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x48,0xae,0x29]
          vfnmsub213ps (%rcx), %zmm13, %zmm21

// CHECK: vfnmsub213ps 291(%rax,%r14,8), %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xa2,0x15,0x48,0xae,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub213ps 291(%rax,%r14,8), %zmm13, %zmm21

// CHECK: vfnmsub213ps (%rcx){1to16}, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x58,0xae,0x29]
          vfnmsub213ps (%rcx){1to16}, %zmm13, %zmm21

// CHECK: vfnmsub213ps 8128(%rdx), %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x48,0xae,0x6a,0x7f]
          vfnmsub213ps 8128(%rdx), %zmm13, %zmm21

// CHECK: vfnmsub213ps 8192(%rdx), %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x48,0xae,0xaa,0x00,0x20,0x00,0x00]
          vfnmsub213ps 8192(%rdx), %zmm13, %zmm21

// CHECK: vfnmsub213ps -8192(%rdx), %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x48,0xae,0x6a,0x80]
          vfnmsub213ps -8192(%rdx), %zmm13, %zmm21

// CHECK: vfnmsub213ps -8256(%rdx), %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x48,0xae,0xaa,0xc0,0xdf,0xff,0xff]
          vfnmsub213ps -8256(%rdx), %zmm13, %zmm21

// CHECK: vfnmsub213ps 508(%rdx){1to16}, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x58,0xae,0x6a,0x7f]
          vfnmsub213ps 508(%rdx){1to16}, %zmm13, %zmm21

// CHECK: vfnmsub213ps 512(%rdx){1to16}, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x58,0xae,0xaa,0x00,0x02,0x00,0x00]
          vfnmsub213ps 512(%rdx){1to16}, %zmm13, %zmm21

// CHECK: vfnmsub213ps -512(%rdx){1to16}, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x58,0xae,0x6a,0x80]
          vfnmsub213ps -512(%rdx){1to16}, %zmm13, %zmm21

// CHECK: vfnmsub213ps -516(%rdx){1to16}, %zmm13, %zmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x58,0xae,0xaa,0xfc,0xfd,0xff,0xff]
          vfnmsub213ps -516(%rdx){1to16}, %zmm13, %zmm21

// CHECK: vfnmsub213pd %zmm11, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xc2,0xed,0x40,0xae,0xfb]
          vfnmsub213pd %zmm11, %zmm18, %zmm23

// CHECK: vfnmsub213pd %zmm11, %zmm18, %zmm23 {%k2}
// CHECK:  encoding: [0x62,0xc2,0xed,0x42,0xae,0xfb]
          vfnmsub213pd %zmm11, %zmm18, %zmm23 {%k2}

// CHECK: vfnmsub213pd %zmm11, %zmm18, %zmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0xc2,0xed,0xc2,0xae,0xfb]
          vfnmsub213pd %zmm11, %zmm18, %zmm23 {%k2} {z}

// CHECK: vfnmsub213pd {rn-sae}, %zmm11, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xc2,0xed,0x10,0xae,0xfb]
          vfnmsub213pd {rn-sae}, %zmm11, %zmm18, %zmm23

// CHECK: vfnmsub213pd {ru-sae}, %zmm11, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xc2,0xed,0x50,0xae,0xfb]
          vfnmsub213pd {ru-sae}, %zmm11, %zmm18, %zmm23

// CHECK: vfnmsub213pd {rd-sae}, %zmm11, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xc2,0xed,0x30,0xae,0xfb]
          vfnmsub213pd {rd-sae}, %zmm11, %zmm18, %zmm23

// CHECK: vfnmsub213pd {rz-sae}, %zmm11, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xc2,0xed,0x70,0xae,0xfb]
          vfnmsub213pd {rz-sae}, %zmm11, %zmm18, %zmm23

// CHECK: vfnmsub213pd (%rcx), %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x40,0xae,0x39]
          vfnmsub213pd (%rcx), %zmm18, %zmm23

// CHECK: vfnmsub213pd 291(%rax,%r14,8), %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xa2,0xed,0x40,0xae,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub213pd 291(%rax,%r14,8), %zmm18, %zmm23

// CHECK: vfnmsub213pd (%rcx){1to8}, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x50,0xae,0x39]
          vfnmsub213pd (%rcx){1to8}, %zmm18, %zmm23

// CHECK: vfnmsub213pd 8128(%rdx), %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x40,0xae,0x7a,0x7f]
          vfnmsub213pd 8128(%rdx), %zmm18, %zmm23

// CHECK: vfnmsub213pd 8192(%rdx), %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x40,0xae,0xba,0x00,0x20,0x00,0x00]
          vfnmsub213pd 8192(%rdx), %zmm18, %zmm23

// CHECK: vfnmsub213pd -8192(%rdx), %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x40,0xae,0x7a,0x80]
          vfnmsub213pd -8192(%rdx), %zmm18, %zmm23

// CHECK: vfnmsub213pd -8256(%rdx), %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x40,0xae,0xba,0xc0,0xdf,0xff,0xff]
          vfnmsub213pd -8256(%rdx), %zmm18, %zmm23

// CHECK: vfnmsub213pd 1016(%rdx){1to8}, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x50,0xae,0x7a,0x7f]
          vfnmsub213pd 1016(%rdx){1to8}, %zmm18, %zmm23

// CHECK: vfnmsub213pd 1024(%rdx){1to8}, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x50,0xae,0xba,0x00,0x04,0x00,0x00]
          vfnmsub213pd 1024(%rdx){1to8}, %zmm18, %zmm23

// CHECK: vfnmsub213pd -1024(%rdx){1to8}, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x50,0xae,0x7a,0x80]
          vfnmsub213pd -1024(%rdx){1to8}, %zmm18, %zmm23

// CHECK: vfnmsub213pd -1032(%rdx){1to8}, %zmm18, %zmm23
// CHECK:  encoding: [0x62,0xe2,0xed,0x50,0xae,0xba,0xf8,0xfb,0xff,0xff]
          vfnmsub213pd -1032(%rdx){1to8}, %zmm18, %zmm23

// CHECK: vfnmsub231ps %zmm13, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x52,0x4d,0x48,0xbe,0xc5]
          vfnmsub231ps %zmm13, %zmm6, %zmm8

// CHECK: vfnmsub231ps %zmm13, %zmm6, %zmm8 {%k2}
// CHECK:  encoding: [0x62,0x52,0x4d,0x4a,0xbe,0xc5]
          vfnmsub231ps %zmm13, %zmm6, %zmm8 {%k2}

// CHECK: vfnmsub231ps %zmm13, %zmm6, %zmm8 {%k2} {z}
// CHECK:  encoding: [0x62,0x52,0x4d,0xca,0xbe,0xc5]
          vfnmsub231ps %zmm13, %zmm6, %zmm8 {%k2} {z}

// CHECK: vfnmsub231ps {rn-sae}, %zmm13, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x52,0x4d,0x18,0xbe,0xc5]
          vfnmsub231ps {rn-sae}, %zmm13, %zmm6, %zmm8

// CHECK: vfnmsub231ps {ru-sae}, %zmm13, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x52,0x4d,0x58,0xbe,0xc5]
          vfnmsub231ps {ru-sae}, %zmm13, %zmm6, %zmm8

// CHECK: vfnmsub231ps {rd-sae}, %zmm13, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x52,0x4d,0x38,0xbe,0xc5]
          vfnmsub231ps {rd-sae}, %zmm13, %zmm6, %zmm8

// CHECK: vfnmsub231ps {rz-sae}, %zmm13, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x52,0x4d,0x78,0xbe,0xc5]
          vfnmsub231ps {rz-sae}, %zmm13, %zmm6, %zmm8

// CHECK: vfnmsub231ps (%rcx), %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x48,0xbe,0x01]
          vfnmsub231ps (%rcx), %zmm6, %zmm8

// CHECK: vfnmsub231ps 291(%rax,%r14,8), %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x32,0x4d,0x48,0xbe,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub231ps 291(%rax,%r14,8), %zmm6, %zmm8

// CHECK: vfnmsub231ps (%rcx){1to16}, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x58,0xbe,0x01]
          vfnmsub231ps (%rcx){1to16}, %zmm6, %zmm8

// CHECK: vfnmsub231ps 8128(%rdx), %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x48,0xbe,0x42,0x7f]
          vfnmsub231ps 8128(%rdx), %zmm6, %zmm8

// CHECK: vfnmsub231ps 8192(%rdx), %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x48,0xbe,0x82,0x00,0x20,0x00,0x00]
          vfnmsub231ps 8192(%rdx), %zmm6, %zmm8

// CHECK: vfnmsub231ps -8192(%rdx), %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x48,0xbe,0x42,0x80]
          vfnmsub231ps -8192(%rdx), %zmm6, %zmm8

// CHECK: vfnmsub231ps -8256(%rdx), %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x48,0xbe,0x82,0xc0,0xdf,0xff,0xff]
          vfnmsub231ps -8256(%rdx), %zmm6, %zmm8

// CHECK: vfnmsub231ps 508(%rdx){1to16}, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x58,0xbe,0x42,0x7f]
          vfnmsub231ps 508(%rdx){1to16}, %zmm6, %zmm8

// CHECK: vfnmsub231ps 512(%rdx){1to16}, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x58,0xbe,0x82,0x00,0x02,0x00,0x00]
          vfnmsub231ps 512(%rdx){1to16}, %zmm6, %zmm8

// CHECK: vfnmsub231ps -512(%rdx){1to16}, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x58,0xbe,0x42,0x80]
          vfnmsub231ps -512(%rdx){1to16}, %zmm6, %zmm8

// CHECK: vfnmsub231ps -516(%rdx){1to16}, %zmm6, %zmm8
// CHECK:  encoding: [0x62,0x72,0x4d,0x58,0xbe,0x82,0xfc,0xfd,0xff,0xff]
          vfnmsub231ps -516(%rdx){1to16}, %zmm6, %zmm8

// CHECK: vfnmsub231pd %zmm24, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x02,0xdd,0x48,0xbe,0xe8]
          vfnmsub231pd %zmm24, %zmm4, %zmm29

// CHECK: vfnmsub231pd %zmm24, %zmm4, %zmm29 {%k7}
// CHECK:  encoding: [0x62,0x02,0xdd,0x4f,0xbe,0xe8]
          vfnmsub231pd %zmm24, %zmm4, %zmm29 {%k7}

// CHECK: vfnmsub231pd %zmm24, %zmm4, %zmm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0xdd,0xcf,0xbe,0xe8]
          vfnmsub231pd %zmm24, %zmm4, %zmm29 {%k7} {z}

// CHECK: vfnmsub231pd {rn-sae}, %zmm24, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x02,0xdd,0x18,0xbe,0xe8]
          vfnmsub231pd {rn-sae}, %zmm24, %zmm4, %zmm29

// CHECK: vfnmsub231pd {ru-sae}, %zmm24, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x02,0xdd,0x58,0xbe,0xe8]
          vfnmsub231pd {ru-sae}, %zmm24, %zmm4, %zmm29

// CHECK: vfnmsub231pd {rd-sae}, %zmm24, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x02,0xdd,0x38,0xbe,0xe8]
          vfnmsub231pd {rd-sae}, %zmm24, %zmm4, %zmm29

// CHECK: vfnmsub231pd {rz-sae}, %zmm24, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x02,0xdd,0x78,0xbe,0xe8]
          vfnmsub231pd {rz-sae}, %zmm24, %zmm4, %zmm29

// CHECK: vfnmsub231pd (%rcx), %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x48,0xbe,0x29]
          vfnmsub231pd (%rcx), %zmm4, %zmm29

// CHECK: vfnmsub231pd 291(%rax,%r14,8), %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x22,0xdd,0x48,0xbe,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub231pd 291(%rax,%r14,8), %zmm4, %zmm29

// CHECK: vfnmsub231pd (%rcx){1to8}, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x58,0xbe,0x29]
          vfnmsub231pd (%rcx){1to8}, %zmm4, %zmm29

// CHECK: vfnmsub231pd 8128(%rdx), %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x48,0xbe,0x6a,0x7f]
          vfnmsub231pd 8128(%rdx), %zmm4, %zmm29

// CHECK: vfnmsub231pd 8192(%rdx), %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x48,0xbe,0xaa,0x00,0x20,0x00,0x00]
          vfnmsub231pd 8192(%rdx), %zmm4, %zmm29

// CHECK: vfnmsub231pd -8192(%rdx), %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x48,0xbe,0x6a,0x80]
          vfnmsub231pd -8192(%rdx), %zmm4, %zmm29

// CHECK: vfnmsub231pd -8256(%rdx), %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x48,0xbe,0xaa,0xc0,0xdf,0xff,0xff]
          vfnmsub231pd -8256(%rdx), %zmm4, %zmm29

// CHECK: vfnmsub231pd 1016(%rdx){1to8}, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x58,0xbe,0x6a,0x7f]
          vfnmsub231pd 1016(%rdx){1to8}, %zmm4, %zmm29

// CHECK: vfnmsub231pd 1024(%rdx){1to8}, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x58,0xbe,0xaa,0x00,0x04,0x00,0x00]
          vfnmsub231pd 1024(%rdx){1to8}, %zmm4, %zmm29

// CHECK: vfnmsub231pd -1024(%rdx){1to8}, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x58,0xbe,0x6a,0x80]
          vfnmsub231pd -1024(%rdx){1to8}, %zmm4, %zmm29

// CHECK: vfnmsub231pd -1032(%rdx){1to8}, %zmm4, %zmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x58,0xbe,0xaa,0xf8,0xfb,0xff,0xff]
          vfnmsub231pd -1032(%rdx){1to8}, %zmm4, %zmm29


// CHECK: vfmadd231ps 8192(%rdx), %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x1d,0xc3,0xb8,0x9a,0x00,0x20,0x00,0x00]
          vfmadd231ps 8192(%rdx), %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd231ps {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x02,0x1d,0x93,0xb8,0xd9]
          vfmadd231ps {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd231ps -1032(%rdx){1to16}, %zmm20, %zmm24 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x5d,0xd3,0xb8,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd231ps -1032(%rdx){1to16}, %zmm20, %zmm24 {%k3} {z}

// CHECK: vfmadd231pd 8192(%rdx), %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x9d,0xc3,0xb8,0x9a,0x00,0x20,0x00,0x00]
          vfmadd231pd 8192(%rdx), %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd231pd {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x02,0x9d,0x93,0xb8,0xd9]
          vfmadd231pd {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd231pd -1032(%rdx){1to8}, %zmm20, %zmm24 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0xdd,0xd3,0xb8,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd231pd -1032(%rdx){1to8}, %zmm20, %zmm24 {%k3} {z}

// CHECK: vfmadd213ps 8192(%rdx), %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x1d,0xc3,0xa8,0x9a,0x00,0x20,0x00,0x00]
          vfmadd213ps 8192(%rdx), %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd213ps {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x02,0x1d,0x93,0xa8,0xd9]
          vfmadd213ps {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd213ps -1032(%rdx){1to16}, %zmm20, %zmm24 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x5d,0xd3,0xa8,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd213ps -1032(%rdx){1to16}, %zmm20, %zmm24 {%k3} {z}

// CHECK: vfmadd213pd 8192(%rdx), %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x9d,0xc3,0xa8,0x9a,0x00,0x20,0x00,0x00]
          vfmadd213pd 8192(%rdx), %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd213pd {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x02,0x9d,0x93,0xa8,0xd9]
          vfmadd213pd {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd213pd -1032(%rdx){1to8}, %zmm20, %zmm24 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0xdd,0xd3,0xa8,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd213pd -1032(%rdx){1to8}, %zmm20, %zmm24 {%k3} {z}

// CHECK: vfmadd132ps 8192(%rdx), %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x1d,0xc3,0x98,0x9a,0x00,0x20,0x00,0x00]
          vfmadd132ps 8192(%rdx), %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd132ps {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x02,0x1d,0x93,0x98,0xd9]
          vfmadd132ps {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd132ps -1032(%rdx){1to16}, %zmm20, %zmm24 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x5d,0xd3,0x98,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd132ps -1032(%rdx){1to16}, %zmm20, %zmm24 {%k3} {z}

// CHECK: vfmadd132pd 8192(%rdx), %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0x9d,0xc3,0x98,0x9a,0x00,0x20,0x00,0x00]
          vfmadd132pd 8192(%rdx), %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd132pd {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}
// CHECK: encoding: [0x62,0x02,0x9d,0x93,0x98,0xd9]
          vfmadd132pd {rn-sae}, %zmm25, %zmm28, %zmm27 {%k3} {z}

// CHECK: vfmadd132pd -1032(%rdx){1to8}, %zmm20, %zmm24 {%k3} {z}
// CHECK: encoding: [0x62,0x62,0xdd,0xd3,0x98,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd132pd -1032(%rdx){1to8}, %zmm20, %zmm24 {%k3} {z}

// CHECK: vpermi2d %zmm4, %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x40,0x76,0xd4]
          vpermi2d %zmm4, %zmm28, %zmm10

// CHECK: vpermi2d %zmm4, %zmm28, %zmm10 {%k5}
// CHECK:  encoding: [0x62,0x72,0x1d,0x45,0x76,0xd4]
          vpermi2d %zmm4, %zmm28, %zmm10 {%k5}

// CHECK: vpermi2d %zmm4, %zmm28, %zmm10 {%k5} {z}
// CHECK:  encoding: [0x62,0x72,0x1d,0xc5,0x76,0xd4]
          vpermi2d %zmm4, %zmm28, %zmm10 {%k5} {z}

// CHECK: vpermi2d (%rcx), %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x40,0x76,0x11]
          vpermi2d (%rcx), %zmm28, %zmm10

// CHECK: vpermi2d 291(%rax,%r14,8), %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x32,0x1d,0x40,0x76,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermi2d 291(%rax,%r14,8), %zmm28, %zmm10

// CHECK: vpermi2d (%rcx){1to16}, %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x50,0x76,0x11]
          vpermi2d (%rcx){1to16}, %zmm28, %zmm10

// CHECK: vpermi2d 8128(%rdx), %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x40,0x76,0x52,0x7f]
          vpermi2d 8128(%rdx), %zmm28, %zmm10

// CHECK: vpermi2d 8192(%rdx), %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x40,0x76,0x92,0x00,0x20,0x00,0x00]
          vpermi2d 8192(%rdx), %zmm28, %zmm10

// CHECK: vpermi2d -8192(%rdx), %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x40,0x76,0x52,0x80]
          vpermi2d -8192(%rdx), %zmm28, %zmm10

// CHECK: vpermi2d -8256(%rdx), %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x40,0x76,0x92,0xc0,0xdf,0xff,0xff]
          vpermi2d -8256(%rdx), %zmm28, %zmm10

// CHECK: vpermi2d 508(%rdx){1to16}, %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x50,0x76,0x52,0x7f]
          vpermi2d 508(%rdx){1to16}, %zmm28, %zmm10

// CHECK: vpermi2d 512(%rdx){1to16}, %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x50,0x76,0x92,0x00,0x02,0x00,0x00]
          vpermi2d 512(%rdx){1to16}, %zmm28, %zmm10

// CHECK: vpermi2d -512(%rdx){1to16}, %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x50,0x76,0x52,0x80]
          vpermi2d -512(%rdx){1to16}, %zmm28, %zmm10

// CHECK: vpermi2d -516(%rdx){1to16}, %zmm28, %zmm10
// CHECK:  encoding: [0x62,0x72,0x1d,0x50,0x76,0x92,0xfc,0xfd,0xff,0xff]
          vpermi2d -516(%rdx){1to16}, %zmm28, %zmm10

// CHECK: vpermi2q %zmm28, %zmm28, %zmm18
// CHECK:  encoding: [0x62,0x82,0x9d,0x40,0x76,0xd4]
          vpermi2q %zmm28, %zmm28, %zmm18

// CHECK: vpermi2q %zmm28, %zmm28, %zmm18 {%k2}
// CHECK:  encoding: [0x62,0x82,0x9d,0x42,0x76,0xd4]
          vpermi2q %zmm28, %zmm28, %zmm18 {%k2}

// CHECK: vpermi2q %zmm28, %zmm28, %zmm18 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x9d,0xc2,0x76,0xd4]
          vpermi2q %zmm28, %zmm28, %zmm18 {%k2} {z}

// CHECK: vpermi2q (%rcx), %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x76,0x11]
          vpermi2q (%rcx), %zmm28, %zmm18

// CHECK: vpermi2q 291(%rax,%r14,8), %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xa2,0x9d,0x40,0x76,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermi2q 291(%rax,%r14,8), %zmm28, %zmm18

// CHECK: vpermi2q (%rcx){1to8}, %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x76,0x11]
          vpermi2q (%rcx){1to8}, %zmm28, %zmm18

// CHECK: vpermi2q 8128(%rdx), %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x76,0x52,0x7f]
          vpermi2q 8128(%rdx), %zmm28, %zmm18

// CHECK: vpermi2q 8192(%rdx), %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x76,0x92,0x00,0x20,0x00,0x00]
          vpermi2q 8192(%rdx), %zmm28, %zmm18

// CHECK: vpermi2q -8192(%rdx), %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x76,0x52,0x80]
          vpermi2q -8192(%rdx), %zmm28, %zmm18

// CHECK: vpermi2q -8256(%rdx), %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x40,0x76,0x92,0xc0,0xdf,0xff,0xff]
          vpermi2q -8256(%rdx), %zmm28, %zmm18

// CHECK: vpermi2q 1016(%rdx){1to8}, %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x76,0x52,0x7f]
          vpermi2q 1016(%rdx){1to8}, %zmm28, %zmm18

// CHECK: vpermi2q 1024(%rdx){1to8}, %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x76,0x92,0x00,0x04,0x00,0x00]
          vpermi2q 1024(%rdx){1to8}, %zmm28, %zmm18

// CHECK: vpermi2q -1024(%rdx){1to8}, %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x76,0x52,0x80]
          vpermi2q -1024(%rdx){1to8}, %zmm28, %zmm18

// CHECK: vpermi2q -1032(%rdx){1to8}, %zmm28, %zmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x50,0x76,0x92,0xf8,0xfb,0xff,0xff]
          vpermi2q -1032(%rdx){1to8}, %zmm28, %zmm18

// CHECK: vpermi2ps %zmm8, %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x42,0x45,0x40,0x77,0xc0]
          vpermi2ps %zmm8, %zmm23, %zmm24

// CHECK: vpermi2ps %zmm8, %zmm23, %zmm24 {%k2}
// CHECK:  encoding: [0x62,0x42,0x45,0x42,0x77,0xc0]
          vpermi2ps %zmm8, %zmm23, %zmm24 {%k2}

// CHECK: vpermi2ps %zmm8, %zmm23, %zmm24 {%k2} {z}
// CHECK:  encoding: [0x62,0x42,0x45,0xc2,0x77,0xc0]
          vpermi2ps %zmm8, %zmm23, %zmm24 {%k2} {z}

// CHECK: vpermi2ps (%rcx), %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x40,0x77,0x01]
          vpermi2ps (%rcx), %zmm23, %zmm24

// CHECK: vpermi2ps 291(%rax,%r14,8), %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x22,0x45,0x40,0x77,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpermi2ps 291(%rax,%r14,8), %zmm23, %zmm24

// CHECK: vpermi2ps (%rcx){1to16}, %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x50,0x77,0x01]
          vpermi2ps (%rcx){1to16}, %zmm23, %zmm24

// CHECK: vpermi2ps 8128(%rdx), %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x40,0x77,0x42,0x7f]
          vpermi2ps 8128(%rdx), %zmm23, %zmm24

// CHECK: vpermi2ps 8192(%rdx), %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x40,0x77,0x82,0x00,0x20,0x00,0x00]
          vpermi2ps 8192(%rdx), %zmm23, %zmm24

// CHECK: vpermi2ps -8192(%rdx), %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x40,0x77,0x42,0x80]
          vpermi2ps -8192(%rdx), %zmm23, %zmm24

// CHECK: vpermi2ps -8256(%rdx), %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x40,0x77,0x82,0xc0,0xdf,0xff,0xff]
          vpermi2ps -8256(%rdx), %zmm23, %zmm24

// CHECK: vpermi2ps 508(%rdx){1to16}, %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x50,0x77,0x42,0x7f]
          vpermi2ps 508(%rdx){1to16}, %zmm23, %zmm24

// CHECK: vpermi2ps 512(%rdx){1to16}, %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x50,0x77,0x82,0x00,0x02,0x00,0x00]
          vpermi2ps 512(%rdx){1to16}, %zmm23, %zmm24

// CHECK: vpermi2ps -512(%rdx){1to16}, %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x50,0x77,0x42,0x80]
          vpermi2ps -512(%rdx){1to16}, %zmm23, %zmm24

// CHECK: vpermi2ps -516(%rdx){1to16}, %zmm23, %zmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x50,0x77,0x82,0xfc,0xfd,0xff,0xff]
          vpermi2ps -516(%rdx){1to16}, %zmm23, %zmm24

// CHECK: vpermi2pd %zmm20, %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xd5,0x48,0x77,0xe4]
          vpermi2pd %zmm20, %zmm5, %zmm20

// CHECK: vpermi2pd %zmm20, %zmm5, %zmm20 {%k3}
// CHECK:  encoding: [0x62,0xa2,0xd5,0x4b,0x77,0xe4]
          vpermi2pd %zmm20, %zmm5, %zmm20 {%k3}

// CHECK: vpermi2pd %zmm20, %zmm5, %zmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xa2,0xd5,0xcb,0x77,0xe4]
          vpermi2pd %zmm20, %zmm5, %zmm20 {%k3} {z}

// CHECK: vpermi2pd (%rcx), %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x77,0x21]
          vpermi2pd (%rcx), %zmm5, %zmm20

// CHECK: vpermi2pd 291(%rax,%r14,8), %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xa2,0xd5,0x48,0x77,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpermi2pd 291(%rax,%r14,8), %zmm5, %zmm20

// CHECK: vpermi2pd (%rcx){1to8}, %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x77,0x21]
          vpermi2pd (%rcx){1to8}, %zmm5, %zmm20

// CHECK: vpermi2pd 8128(%rdx), %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x77,0x62,0x7f]
          vpermi2pd 8128(%rdx), %zmm5, %zmm20

// CHECK: vpermi2pd 8192(%rdx), %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x77,0xa2,0x00,0x20,0x00,0x00]
          vpermi2pd 8192(%rdx), %zmm5, %zmm20

// CHECK: vpermi2pd -8192(%rdx), %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x77,0x62,0x80]
          vpermi2pd -8192(%rdx), %zmm5, %zmm20

// CHECK: vpermi2pd -8256(%rdx), %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x48,0x77,0xa2,0xc0,0xdf,0xff,0xff]
          vpermi2pd -8256(%rdx), %zmm5, %zmm20

// CHECK: vpermi2pd 1016(%rdx){1to8}, %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x77,0x62,0x7f]
          vpermi2pd 1016(%rdx){1to8}, %zmm5, %zmm20

// CHECK: vpermi2pd 1024(%rdx){1to8}, %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x77,0xa2,0x00,0x04,0x00,0x00]
          vpermi2pd 1024(%rdx){1to8}, %zmm5, %zmm20

// CHECK: vpermi2pd -1024(%rdx){1to8}, %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x77,0x62,0x80]
          vpermi2pd -1024(%rdx){1to8}, %zmm5, %zmm20

// CHECK: vpermi2pd -1032(%rdx){1to8}, %zmm5, %zmm20
// CHECK:  encoding: [0x62,0xe2,0xd5,0x58,0x77,0xa2,0xf8,0xfb,0xff,0xff]
          vpermi2pd -1032(%rdx){1to8}, %zmm5, %zmm20

// CHECK: vcompresspd %zmm9, (%rcx)
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x8a,0x09]
          vcompresspd %zmm9, (%rcx)

// CHECK: vcompresspd %zmm9, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0x72,0xfd,0x4c,0x8a,0x09]
          vcompresspd %zmm9, (%rcx) {%k4}

// CHECK: vcompresspd %zmm9, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x32,0xfd,0x48,0x8a,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vcompresspd %zmm9, 291(%rax,%r14,8)

// CHECK: vcompresspd %zmm9, 1016(%rdx)
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x8a,0x4a,0x7f]
          vcompresspd %zmm9, 1016(%rdx)

// CHECK: vcompresspd %zmm9, 1024(%rdx)
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x8a,0x8a,0x00,0x04,0x00,0x00]
          vcompresspd %zmm9, 1024(%rdx)

// CHECK: vcompresspd %zmm9, -1024(%rdx)
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x8a,0x4a,0x80]
          vcompresspd %zmm9, -1024(%rdx)

// CHECK: vcompresspd %zmm9, -1032(%rdx)
// CHECK:  encoding: [0x62,0x72,0xfd,0x48,0x8a,0x8a,0xf8,0xfb,0xff,0xff]
          vcompresspd %zmm9, -1032(%rdx)

// CHECK: vcompresspd %zmm4, %zmm8
// CHECK:  encoding: [0x62,0xd2,0xfd,0x48,0x8a,0xe0]
          vcompresspd %zmm4, %zmm8

// CHECK: vcompresspd %zmm4, %zmm8 {%k6}
// CHECK:  encoding: [0x62,0xd2,0xfd,0x4e,0x8a,0xe0]
          vcompresspd %zmm4, %zmm8 {%k6}

// CHECK: vcompresspd %zmm4, %zmm8 {%k6} {z}
// CHECK:  encoding: [0x62,0xd2,0xfd,0xce,0x8a,0xe0]
          vcompresspd %zmm4, %zmm8 {%k6} {z}

// CHECK: vcompressps %zmm10, (%rcx)
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x8a,0x11]
          vcompressps %zmm10, (%rcx)

// CHECK: vcompressps %zmm10, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x72,0x7d,0x4f,0x8a,0x11]
          vcompressps %zmm10, (%rcx) {%k7}

// CHECK: vcompressps %zmm10, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x32,0x7d,0x48,0x8a,0x94,0xf0,0x23,0x01,0x00,0x00]
          vcompressps %zmm10, 291(%rax,%r14,8)

// CHECK: vcompressps %zmm10, 508(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x8a,0x52,0x7f]
          vcompressps %zmm10, 508(%rdx)

// CHECK: vcompressps %zmm10, 512(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x8a,0x92,0x00,0x02,0x00,0x00]
          vcompressps %zmm10, 512(%rdx)

// CHECK: vcompressps %zmm10, -512(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x8a,0x52,0x80]
          vcompressps %zmm10, -512(%rdx)

// CHECK: vcompressps %zmm10, -516(%rdx)
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x8a,0x92,0xfc,0xfd,0xff,0xff]
          vcompressps %zmm10, -516(%rdx)

// CHECK: vcompressps %zmm14, %zmm4
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x8a,0xf4]
          vcompressps %zmm14, %zmm4

// CHECK: vcompressps %zmm14, %zmm4 {%k2}
// CHECK:  encoding: [0x62,0x72,0x7d,0x4a,0x8a,0xf4]
          vcompressps %zmm14, %zmm4 {%k2}

// CHECK: vcompressps %zmm14, %zmm4 {%k2} {z}
// CHECK:  encoding: [0x62,0x72,0x7d,0xca,0x8a,0xf4]
          vcompressps %zmm14, %zmm4 {%k2} {z}

// CHECK: vexpandpd (%rcx), %zmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x88,0x01]
          vexpandpd (%rcx), %zmm24

// CHECK: vexpandpd (%rcx), %zmm24 {%k4}
// CHECK:  encoding: [0x62,0x62,0xfd,0x4c,0x88,0x01]
          vexpandpd (%rcx), %zmm24 {%k4}

// CHECK: vexpandpd (%rcx), %zmm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x62,0xfd,0xcc,0x88,0x01]
          vexpandpd (%rcx), %zmm24 {%k4} {z}

// CHECK: vexpandpd 291(%rax,%r14,8), %zmm24
// CHECK:  encoding: [0x62,0x22,0xfd,0x48,0x88,0x84,0xf0,0x23,0x01,0x00,0x00]
          vexpandpd 291(%rax,%r14,8), %zmm24

// CHECK: vexpandpd 1016(%rdx), %zmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x88,0x42,0x7f]
          vexpandpd 1016(%rdx), %zmm24

// CHECK: vexpandpd 1024(%rdx), %zmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x88,0x82,0x00,0x04,0x00,0x00]
          vexpandpd 1024(%rdx), %zmm24

// CHECK: vexpandpd -1024(%rdx), %zmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x88,0x42,0x80]
          vexpandpd -1024(%rdx), %zmm24

// CHECK: vexpandpd -1032(%rdx), %zmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x48,0x88,0x82,0xf8,0xfb,0xff,0xff]
          vexpandpd -1032(%rdx), %zmm24

// CHECK: vexpandpd %zmm15, %zmm23
// CHECK:  encoding: [0x62,0xc2,0xfd,0x48,0x88,0xff]
          vexpandpd %zmm15, %zmm23

// CHECK: vexpandpd %zmm15, %zmm23 {%k5}
// CHECK:  encoding: [0x62,0xc2,0xfd,0x4d,0x88,0xff]
          vexpandpd %zmm15, %zmm23 {%k5}

// CHECK: vexpandpd %zmm15, %zmm23 {%k5} {z}
// CHECK:  encoding: [0x62,0xc2,0xfd,0xcd,0x88,0xff]
          vexpandpd %zmm15, %zmm23 {%k5} {z}

// CHECK: vexpandps (%rcx), %zmm4
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x88,0x21]
          vexpandps (%rcx), %zmm4

// CHECK: vexpandps (%rcx), %zmm4 {%k6}
// CHECK:  encoding: [0x62,0xf2,0x7d,0x4e,0x88,0x21]
          vexpandps (%rcx), %zmm4 {%k6}

// CHECK: vexpandps (%rcx), %zmm4 {%k6} {z}
// CHECK:  encoding: [0x62,0xf2,0x7d,0xce,0x88,0x21]
          vexpandps (%rcx), %zmm4 {%k6} {z}

// CHECK: vexpandps 291(%rax,%r14,8), %zmm4
// CHECK:  encoding: [0x62,0xb2,0x7d,0x48,0x88,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vexpandps 291(%rax,%r14,8), %zmm4

// CHECK: vexpandps 508(%rdx), %zmm4
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x88,0x62,0x7f]
          vexpandps 508(%rdx), %zmm4

// CHECK: vexpandps 512(%rdx), %zmm4
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x88,0xa2,0x00,0x02,0x00,0x00]
          vexpandps 512(%rdx), %zmm4

// CHECK: vexpandps -512(%rdx), %zmm4
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x88,0x62,0x80]
          vexpandps -512(%rdx), %zmm4

// CHECK: vexpandps -516(%rdx), %zmm4
// CHECK:  encoding: [0x62,0xf2,0x7d,0x48,0x88,0xa2,0xfc,0xfd,0xff,0xff]
          vexpandps -516(%rdx), %zmm4

// CHECK: vexpandps %zmm9, %zmm14
// CHECK:  encoding: [0x62,0x52,0x7d,0x48,0x88,0xf1]
          vexpandps %zmm9, %zmm14

// CHECK: vexpandps %zmm9, %zmm14 {%k2}
// CHECK:  encoding: [0x62,0x52,0x7d,0x4a,0x88,0xf1]
          vexpandps %zmm9, %zmm14 {%k2}

// CHECK: vexpandps %zmm9, %zmm14 {%k2} {z}
// CHECK:  encoding: [0x62,0x52,0x7d,0xca,0x88,0xf1]
          vexpandps %zmm9, %zmm14 {%k2} {z}

// CHECK: vpabsd %zmm14, %zmm15
// CHECK:  encoding: [0x62,0x52,0x7d,0x48,0x1e,0xfe]
          vpabsd %zmm14, %zmm15

// CHECK: vpabsd %zmm14, %zmm15 {%k6}
// CHECK:  encoding: [0x62,0x52,0x7d,0x4e,0x1e,0xfe]
          vpabsd %zmm14, %zmm15 {%k6}

// CHECK: vpabsd %zmm14, %zmm15 {%k6} {z}
// CHECK:  encoding: [0x62,0x52,0x7d,0xce,0x1e,0xfe]
          vpabsd %zmm14, %zmm15 {%k6} {z}

// CHECK: vpabsd (%rcx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0x39]
          vpabsd (%rcx), %zmm15

// CHECK: vpabsd 291(%rax,%r14,8), %zmm15
// CHECK:  encoding: [0x62,0x32,0x7d,0x48,0x1e,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpabsd 291(%rax,%r14,8), %zmm15

// CHECK: vpabsd (%rcx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0x39]
          vpabsd (%rcx){1to16}, %zmm15

// CHECK: vpabsd 8128(%rdx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0x7a,0x7f]
          vpabsd 8128(%rdx), %zmm15

// CHECK: vpabsd 8192(%rdx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0xba,0x00,0x20,0x00,0x00]
          vpabsd 8192(%rdx), %zmm15

// CHECK: vpabsd -8192(%rdx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0x7a,0x80]
          vpabsd -8192(%rdx), %zmm15

// CHECK: vpabsd -8256(%rdx), %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x48,0x1e,0xba,0xc0,0xdf,0xff,0xff]
          vpabsd -8256(%rdx), %zmm15

// CHECK: vpabsd 508(%rdx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0x7a,0x7f]
          vpabsd 508(%rdx){1to16}, %zmm15

// CHECK: vpabsd 512(%rdx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0xba,0x00,0x02,0x00,0x00]
          vpabsd 512(%rdx){1to16}, %zmm15

// CHECK: vpabsd -512(%rdx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0x7a,0x80]
          vpabsd -512(%rdx){1to16}, %zmm15

// CHECK: vpabsd -516(%rdx){1to16}, %zmm15
// CHECK:  encoding: [0x62,0x72,0x7d,0x58,0x1e,0xba,0xfc,0xfd,0xff,0xff]
          vpabsd -516(%rdx){1to16}, %zmm15

// CHECK: vpabsq %zmm24, %zmm5
// CHECK:  encoding: [0x62,0x92,0xfd,0x48,0x1f,0xe8]
          vpabsq %zmm24, %zmm5

// CHECK: vpabsq %zmm24, %zmm5 {%k6}
// CHECK:  encoding: [0x62,0x92,0xfd,0x4e,0x1f,0xe8]
          vpabsq %zmm24, %zmm5 {%k6}

// CHECK: vpabsq %zmm24, %zmm5 {%k6} {z}
// CHECK:  encoding: [0x62,0x92,0xfd,0xce,0x1f,0xe8]
          vpabsq %zmm24, %zmm5 {%k6} {z}

// CHECK: vpabsq (%rcx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0x29]
          vpabsq (%rcx), %zmm5

// CHECK: vpabsq 291(%rax,%r14,8), %zmm5
// CHECK:  encoding: [0x62,0xb2,0xfd,0x48,0x1f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpabsq 291(%rax,%r14,8), %zmm5

// CHECK: vpabsq (%rcx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0x29]
          vpabsq (%rcx){1to8}, %zmm5

// CHECK: vpabsq 8128(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0x6a,0x7f]
          vpabsq 8128(%rdx), %zmm5

// CHECK: vpabsq 8192(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0xaa,0x00,0x20,0x00,0x00]
          vpabsq 8192(%rdx), %zmm5

// CHECK: vpabsq -8192(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0x6a,0x80]
          vpabsq -8192(%rdx), %zmm5

// CHECK: vpabsq -8256(%rdx), %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x48,0x1f,0xaa,0xc0,0xdf,0xff,0xff]
          vpabsq -8256(%rdx), %zmm5

// CHECK: vpabsq 1016(%rdx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0x6a,0x7f]
          vpabsq 1016(%rdx){1to8}, %zmm5

// CHECK: vpabsq 1024(%rdx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0xaa,0x00,0x04,0x00,0x00]
          vpabsq 1024(%rdx){1to8}, %zmm5

// CHECK: vpabsq -1024(%rdx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0x6a,0x80]
          vpabsq -1024(%rdx){1to8}, %zmm5

// CHECK: vpabsq -1032(%rdx){1to8}, %zmm5
// CHECK:  encoding: [0x62,0xf2,0xfd,0x58,0x1f,0xaa,0xf8,0xfb,0xff,0xff]
          vpabsq -1032(%rdx){1to8}, %zmm5

// CHECK: vpgatherdd 123(%r14,%zmm11,8), %zmm17 {%k1}
// CHECK:  encoding: [0x62,0x82,0x7d,0x49,0x90,0x8c,0xde,0x7b,0x00,0x00,0x00]
          vpgatherdd 123(%r14, %zmm11,8), %zmm17 {%k1}

// CHECK: vpgatherdd 256(%r9,%zmm11), %zmm17 {%k1}
// CHECK:  encoding: [0x62,0x82,0x7d,0x49,0x90,0x4c,0x19,0x40]
          vpgatherdd 256(%r9,%zmm11), %zmm17 {%k1}

// CHECK: vpgatherdd 1024(%rcx,%zmm11,4), %zmm17 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x49,0x90,0x8c,0x99,0x00,0x04,0x00,0x00]
          vpgatherdd 1024(%rcx, %zmm11,4), %zmm17 {%k1}

// CHECK: vpgatherdq 123(%r14,%ymm14,8), %zmm8 {%k1}
// CHECK:  encoding: [0x62,0x12,0xfd,0x49,0x90,0x84,0xf6,0x7b,0x00,0x00,0x00]
          vpgatherdq 123(%r14, %ymm14,8), %zmm8 {%k1}

// CHECK: vpgatherdq 256(%r9,%ymm14), %zmm8 {%k1}
// CHECK:  encoding: [0x62,0x12,0xfd,0x49,0x90,0x44,0x31,0x20]
          vpgatherdq 256(%r9, %ymm14), %zmm8 {%k1}

// CHECK: vpgatherdq 1024(%rcx,%ymm14,4), %zmm8 {%k1}
// CHECK:  encoding: [0x62,0x32,0xfd,0x49,0x90,0x84,0xb1,0x00,0x04,0x00,0x00]
          vpgatherdq 1024(%rcx, %ymm14,4), %zmm8 {%k1}

// CHECK: vpgatherqd 123(%r14,%zmm17,8), %ymm3 {%k1}
// CHECK:  encoding: [0x62,0xd2,0x7d,0x41,0x91,0x9c,0xce,0x7b,0x00,0x00,0x00]
          vpgatherqd 123(%r14, %zmm17,8), %ymm3 {%k1}

// CHECK: vpgatherqd 256(%r9,%zmm17), %ymm3 {%k1}
// CHECK:  encoding: [0x62,0xd2,0x7d,0x41,0x91,0x5c,0x09,0x40]
          vpgatherqd 256(%r9,%zmm17), %ymm3 {%k1}

// CHECK: vpgatherqd 1024(%rcx,%zmm17,4), %ymm3 {%k1}
// CHECK:  encoding: [0x62,0xf2,0x7d,0x41,0x91,0x9c,0x89,0x00,0x04,0x00,0x00]
          vpgatherqd 1024(%rcx, %zmm17,4), %ymm3 {%k1}

// CHECK: vpgatherqq 123(%r14,%zmm21,8), %zmm17 {%k1}
// CHECK:  encoding: [0x62,0xc2,0xfd,0x41,0x91,0x8c,0xee,0x7b,0x00,0x00,0x00]
          vpgatherqq 123(%r14, %zmm21,8), %zmm17 {%k1}

// CHECK: vpgatherqq 256(%r9,%zmm21), %zmm17 {%k1}
// CHECK:  encoding: [0x62,0xc2,0xfd,0x41,0x91,0x4c,0x29,0x20]
          vpgatherqq 256(%r9,%zmm21), %zmm17 {%k1}

// CHECK: vpgatherqq 1024(%rcx,%zmm21,4), %zmm17 {%k1}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x41,0x91,0x8c,0xa9,0x00,0x04,0x00,0x00]
          vpgatherqq 1024(%rcx, %zmm21,4), %zmm17 {%k1}

// CHECK: vpscatterdd %zmm19, 123(%r14,%zmm16,8) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x41,0xa0,0x9c,0xc6,0x7b,0x00,0x00,0x00]
          vpscatterdd %zmm19, 123(%r14,%zmm16,8) {%k1}

// CHECK: vpscatterdd %zmm19, 123(%r14,%zmm16,8) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x41,0xa0,0x9c,0xc6,0x7b,0x00,0x00,0x00]
          vpscatterdd %zmm19, 123(%r14,%zmm16,8) {%k1}

// CHECK: vpscatterdd %zmm19, 256(%r9,%zmm16) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x41,0xa0,0x5c,0x01,0x40]
          vpscatterdd %zmm19, 256(%r9,%zmm16) {%k1}

// CHECK: vpscatterdd %zmm19, 1024(%rcx,%zmm16,4) {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x41,0xa0,0x9c,0x81,0x00,0x04,0x00,0x00]
          vpscatterdd %zmm19, 1024(%rcx,%zmm16,4) {%k1}

// CHECK: vpscatterdq %zmm5, 123(%r14,%ymm6,8) {%k1}
// CHECK:  encoding: [0x62,0xd2,0xfd,0x49,0xa0,0xac,0xf6,0x7b,0x00,0x00,0x00]
          vpscatterdq %zmm5, 123(%r14,%ymm6,8) {%k1}

// CHECK: vpscatterdq %zmm5, 123(%r14,%ymm6,8) {%k1}
// CHECK:  encoding: [0x62,0xd2,0xfd,0x49,0xa0,0xac,0xf6,0x7b,0x00,0x00,0x00]
          vpscatterdq %zmm5, 123(%r14,%ymm6,8) {%k1}

// CHECK: vpscatterdq %zmm5, 256(%r9,%ymm6) {%k1}
// CHECK:  encoding: [0x62,0xd2,0xfd,0x49,0xa0,0x6c,0x31,0x20]
          vpscatterdq %zmm5, 256(%r9,%ymm6) {%k1}

// CHECK: vpscatterdq %zmm5, 1024(%rcx,%ymm6,4) {%k1}
// CHECK:  encoding: [0x62,0xf2,0xfd,0x49,0xa0,0xac,0xb1,0x00,0x04,0x00,0x00]
          vpscatterdq %zmm5, 1024(%rcx,%ymm6,4) {%k1}

// CHECK: vpscatterqd %ymm20, 123(%r14,%zmm2,8) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x49,0xa1,0xa4,0xd6,0x7b,0x00,0x00,0x00]
          vpscatterqd %ymm20, 123(%r14,%zmm2,8) {%k1}

// CHECK: vpscatterqd %ymm20, 123(%r14,%zmm2,8) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x49,0xa1,0xa4,0xd6,0x7b,0x00,0x00,0x00]
          vpscatterqd %ymm20, 123(%r14,%zmm2,8) {%k1}

// CHECK: vpscatterqd %ymm20, 256(%r9,%zmm2) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x49,0xa1,0x64,0x11,0x40]
          vpscatterqd %ymm20, 256(%r9,%zmm2) {%k1}

// CHECK: vpscatterqd %ymm20, 1024(%rcx,%zmm2,4) {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x49,0xa1,0xa4,0x91,0x00,0x04,0x00,0x00]
          vpscatterqd %ymm20, 1024(%rcx,%zmm2,4) {%k1}

// CHECK: vpscatterqq %zmm14, 123(%r14,%zmm20,8) {%k1}
// CHECK:  encoding: [0x62,0x52,0xfd,0x41,0xa1,0xb4,0xe6,0x7b,0x00,0x00,0x00]
          vpscatterqq %zmm14, 123(%r14,%zmm20,8) {%k1}

// CHECK: vpscatterqq %zmm14, 123(%r14,%zmm20,8) {%k1}
// CHECK:  encoding: [0x62,0x52,0xfd,0x41,0xa1,0xb4,0xe6,0x7b,0x00,0x00,0x00]
          vpscatterqq %zmm14, 123(%r14,%zmm20,8) {%k1}

// CHECK: vpscatterqq %zmm14, 256(%r9,%zmm20) {%k1}
// CHECK:  encoding: [0x62,0x52,0xfd,0x41,0xa1,0x74,0x21,0x20]
          vpscatterqq %zmm14, 256(%r9,%zmm20) {%k1}

// CHECK: vpscatterqq %zmm14, 1024(%rcx,%zmm20,4) {%k1}
// CHECK:  encoding: [0x62,0x72,0xfd,0x41,0xa1,0xb4,0xa1,0x00,0x04,0x00,0x00]
          vpscatterqq %zmm14, 1024(%rcx,%zmm20,4) {%k1}
// CHECK: vscalefpd %zmm28, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x02,0xad,0x40,0x2c,0xd4]
          vscalefpd %zmm28, %zmm26, %zmm26

// CHECK: vscalefpd %zmm28, %zmm26, %zmm26 {%k5}
// CHECK:  encoding: [0x62,0x02,0xad,0x45,0x2c,0xd4]
          vscalefpd %zmm28, %zmm26, %zmm26 {%k5}

// CHECK: vscalefpd %zmm28, %zmm26, %zmm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x02,0xad,0xc5,0x2c,0xd4]
          vscalefpd %zmm28, %zmm26, %zmm26 {%k5} {z}

// CHECK: vscalefpd {rn-sae}, %zmm28, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x02,0xad,0x10,0x2c,0xd4]
          vscalefpd {rn-sae}, %zmm28, %zmm26, %zmm26

// CHECK: vscalefpd {ru-sae}, %zmm28, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x02,0xad,0x50,0x2c,0xd4]
          vscalefpd {ru-sae}, %zmm28, %zmm26, %zmm26

// CHECK: vscalefpd {rd-sae}, %zmm28, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x02,0xad,0x30,0x2c,0xd4]
          vscalefpd {rd-sae}, %zmm28, %zmm26, %zmm26

// CHECK: vscalefpd {rz-sae}, %zmm28, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x02,0xad,0x70,0x2c,0xd4]
          vscalefpd {rz-sae}, %zmm28, %zmm26, %zmm26

// CHECK: vscalefpd (%rcx), %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x40,0x2c,0x11]
          vscalefpd (%rcx), %zmm26, %zmm26

// CHECK: vscalefpd 291(%rax,%r14,8), %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x22,0xad,0x40,0x2c,0x94,0xf0,0x23,0x01,0x00,0x00]
          vscalefpd 291(%rax,%r14,8), %zmm26, %zmm26

// CHECK: vscalefpd (%rcx){1to8}, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x50,0x2c,0x11]
          vscalefpd (%rcx){1to8}, %zmm26, %zmm26

// CHECK: vscalefpd 8128(%rdx), %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x40,0x2c,0x52,0x7f]
          vscalefpd 8128(%rdx), %zmm26, %zmm26

// CHECK: vscalefpd 8192(%rdx), %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x40,0x2c,0x92,0x00,0x20,0x00,0x00]
          vscalefpd 8192(%rdx), %zmm26, %zmm26

// CHECK: vscalefpd -8192(%rdx), %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x40,0x2c,0x52,0x80]
          vscalefpd -8192(%rdx), %zmm26, %zmm26

// CHECK: vscalefpd -8256(%rdx), %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x40,0x2c,0x92,0xc0,0xdf,0xff,0xff]
          vscalefpd -8256(%rdx), %zmm26, %zmm26

// CHECK: vscalefpd 1016(%rdx){1to8}, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x50,0x2c,0x52,0x7f]
          vscalefpd 1016(%rdx){1to8}, %zmm26, %zmm26

// CHECK: vscalefpd 1024(%rdx){1to8}, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x50,0x2c,0x92,0x00,0x04,0x00,0x00]
          vscalefpd 1024(%rdx){1to8}, %zmm26, %zmm26

// CHECK: vscalefpd -1024(%rdx){1to8}, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x50,0x2c,0x52,0x80]
          vscalefpd -1024(%rdx){1to8}, %zmm26, %zmm26

// CHECK: vscalefpd -1032(%rdx){1to8}, %zmm26, %zmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x50,0x2c,0x92,0xf8,0xfb,0xff,0xff]
          vscalefpd -1032(%rdx){1to8}, %zmm26, %zmm26

// CHECK: vscalefps %zmm18, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x48,0x2c,0xda]
          vscalefps %zmm18, %zmm6, %zmm19

// CHECK: vscalefps %zmm18, %zmm6, %zmm19 {%k6}
// CHECK:  encoding: [0x62,0xa2,0x4d,0x4e,0x2c,0xda]
          vscalefps %zmm18, %zmm6, %zmm19 {%k6}

// CHECK: vscalefps %zmm18, %zmm6, %zmm19 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0x4d,0xce,0x2c,0xda]
          vscalefps %zmm18, %zmm6, %zmm19 {%k6} {z}

// CHECK: vscalefps {rn-sae}, %zmm18, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x18,0x2c,0xda]
          vscalefps {rn-sae}, %zmm18, %zmm6, %zmm19

// CHECK: vscalefps {ru-sae}, %zmm18, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x58,0x2c,0xda]
          vscalefps {ru-sae}, %zmm18, %zmm6, %zmm19

// CHECK: vscalefps {rd-sae}, %zmm18, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x38,0x2c,0xda]
          vscalefps {rd-sae}, %zmm18, %zmm6, %zmm19

// CHECK: vscalefps {rz-sae}, %zmm18, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x78,0x2c,0xda]
          vscalefps {rz-sae}, %zmm18, %zmm6, %zmm19

// CHECK: vscalefps (%rcx), %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x48,0x2c,0x19]
          vscalefps (%rcx), %zmm6, %zmm19

// CHECK: vscalefps 291(%rax,%r14,8), %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x48,0x2c,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vscalefps 291(%rax,%r14,8), %zmm6, %zmm19

// CHECK: vscalefps (%rcx){1to16}, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x58,0x2c,0x19]
          vscalefps (%rcx){1to16}, %zmm6, %zmm19

// CHECK: vscalefps 8128(%rdx), %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x48,0x2c,0x5a,0x7f]
          vscalefps 8128(%rdx), %zmm6, %zmm19

// CHECK: vscalefps 8192(%rdx), %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x48,0x2c,0x9a,0x00,0x20,0x00,0x00]
          vscalefps 8192(%rdx), %zmm6, %zmm19

// CHECK: vscalefps -8192(%rdx), %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x48,0x2c,0x5a,0x80]
          vscalefps -8192(%rdx), %zmm6, %zmm19

// CHECK: vscalefps -8256(%rdx), %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x48,0x2c,0x9a,0xc0,0xdf,0xff,0xff]
          vscalefps -8256(%rdx), %zmm6, %zmm19

// CHECK: vscalefps 508(%rdx){1to16}, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x58,0x2c,0x5a,0x7f]
          vscalefps 508(%rdx){1to16}, %zmm6, %zmm19

// CHECK: vscalefps 512(%rdx){1to16}, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x58,0x2c,0x9a,0x00,0x02,0x00,0x00]
          vscalefps 512(%rdx){1to16}, %zmm6, %zmm19

// CHECK: vscalefps -512(%rdx){1to16}, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x58,0x2c,0x5a,0x80]
          vscalefps -512(%rdx){1to16}, %zmm6, %zmm19

// CHECK: vscalefps -516(%rdx){1to16}, %zmm6, %zmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x58,0x2c,0x9a,0xfc,0xfd,0xff,0xff]
          vscalefps -516(%rdx){1to16}, %zmm6, %zmm19

// CHECK: vcvtps2pd %ymm6, %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x5a,0xee]
          vcvtps2pd %ymm6, %zmm13

// CHECK: vcvtps2pd %ymm6, %zmm13 {%k3}
// CHECK:  encoding: [0x62,0x71,0x7c,0x4b,0x5a,0xee]
          vcvtps2pd %ymm6, %zmm13 {%k3}

// CHECK: vcvtps2pd %ymm6, %zmm13 {%k3} {z}
// CHECK:  encoding: [0x62,0x71,0x7c,0xcb,0x5a,0xee]
          vcvtps2pd %ymm6, %zmm13 {%k3} {z}

// CHECK: vcvtps2pd {sae}, %ymm6, %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x18,0x5a,0xee]
          vcvtps2pd {sae}, %ymm6, %zmm13

// CHECK: vcvtps2pd (%rcx), %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x5a,0x29]
          vcvtps2pd (%rcx), %zmm13

// CHECK: vcvtps2pd 291(%rax,%r14,8), %zmm13
// CHECK:  encoding: [0x62,0x31,0x7c,0x48,0x5a,0xac,0xf0,0x23,0x01,0x00,0x00]
          vcvtps2pd 291(%rax,%r14,8), %zmm13

// CHECK: vcvtps2pd (%rcx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x58,0x5a,0x29]
          vcvtps2pd (%rcx){1to8}, %zmm13

// CHECK: vcvtps2pd 4064(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x5a,0x6a,0x7f]
          vcvtps2pd 4064(%rdx), %zmm13

// CHECK: vcvtps2pd 4096(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x5a,0xaa,0x00,0x10,0x00,0x00]
          vcvtps2pd 4096(%rdx), %zmm13

// CHECK: vcvtps2pd -4096(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x5a,0x6a,0x80]
          vcvtps2pd -4096(%rdx), %zmm13

// CHECK: vcvtps2pd -4128(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x48,0x5a,0xaa,0xe0,0xef,0xff,0xff]
          vcvtps2pd -4128(%rdx), %zmm13

// CHECK: vcvtps2pd 508(%rdx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x58,0x5a,0x6a,0x7f]
          vcvtps2pd 508(%rdx){1to8}, %zmm13

// CHECK: vcvtps2pd 512(%rdx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x58,0x5a,0xaa,0x00,0x02,0x00,0x00]
          vcvtps2pd 512(%rdx){1to8}, %zmm13

// CHECK: vcvtps2pd -512(%rdx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x58,0x5a,0x6a,0x80]
          vcvtps2pd -512(%rdx){1to8}, %zmm13

// CHECK: vcvtps2pd -516(%rdx){1to8}, %zmm13
// CHECK:  encoding: [0x62,0x71,0x7c,0x58,0x5a,0xaa,0xfc,0xfd,0xff,0xff]
          vcvtps2pd -516(%rdx){1to8}, %zmm13

// CHECK: vcvtpd2ps %zmm23, %ymm5
// CHECK:  encoding: [0x62,0xb1,0xfd,0x48,0x5a,0xef]
          vcvtpd2ps %zmm23, %ymm5

// CHECK: vcvtpd2ps %zmm23, %ymm5 {%k5}
// CHECK:  encoding: [0x62,0xb1,0xfd,0x4d,0x5a,0xef]
          vcvtpd2ps %zmm23, %ymm5 {%k5}

// CHECK: vcvtpd2ps %zmm23, %ymm5 {%k5} {z}
// CHECK:  encoding: [0x62,0xb1,0xfd,0xcd,0x5a,0xef]
          vcvtpd2ps %zmm23, %ymm5 {%k5} {z}

// CHECK: vcvtpd2ps {rn-sae}, %zmm23, %ymm5
// CHECK:  encoding: [0x62,0xb1,0xfd,0x18,0x5a,0xef]
          vcvtpd2ps {rn-sae}, %zmm23, %ymm5

// CHECK: vcvtpd2ps {ru-sae}, %zmm23, %ymm5
// CHECK:  encoding: [0x62,0xb1,0xfd,0x58,0x5a,0xef]
          vcvtpd2ps {ru-sae}, %zmm23, %ymm5

// CHECK: vcvtpd2ps {rd-sae}, %zmm23, %ymm5
// CHECK:  encoding: [0x62,0xb1,0xfd,0x38,0x5a,0xef]
          vcvtpd2ps {rd-sae}, %zmm23, %ymm5

// CHECK: vcvtpd2ps {rz-sae}, %zmm23, %ymm5
// CHECK:  encoding: [0x62,0xb1,0xfd,0x78,0x5a,0xef]
          vcvtpd2ps {rz-sae}, %zmm23, %ymm5

// CHECK: vcvtpd2ps (%rcx), %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x5a,0x29]
          vcvtpd2ps (%rcx), %ymm5

// CHECK: vcvtpd2ps 291(%rax,%r14,8), %ymm5
// CHECK:  encoding: [0x62,0xb1,0xfd,0x48,0x5a,0xac,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2ps 291(%rax,%r14,8), %ymm5

// CHECK: vcvtpd2ps (%rcx){1to8}, %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x58,0x5a,0x29]
          vcvtpd2ps (%rcx){1to8}, %ymm5

// CHECK: vcvtpd2ps 8128(%rdx), %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x5a,0x6a,0x7f]
          vcvtpd2ps 8128(%rdx), %ymm5

// CHECK: vcvtpd2ps 8192(%rdx), %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x5a,0xaa,0x00,0x20,0x00,0x00]
          vcvtpd2ps 8192(%rdx), %ymm5

// CHECK: vcvtpd2ps -8192(%rdx), %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x5a,0x6a,0x80]
          vcvtpd2ps -8192(%rdx), %ymm5

// CHECK: vcvtpd2ps -8256(%rdx), %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x48,0x5a,0xaa,0xc0,0xdf,0xff,0xff]
          vcvtpd2ps -8256(%rdx), %ymm5

// CHECK: vcvtpd2ps 1016(%rdx){1to8}, %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x58,0x5a,0x6a,0x7f]
          vcvtpd2ps 1016(%rdx){1to8}, %ymm5

// CHECK: vcvtpd2ps 1024(%rdx){1to8}, %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x58,0x5a,0xaa,0x00,0x04,0x00,0x00]
          vcvtpd2ps 1024(%rdx){1to8}, %ymm5

// CHECK: vcvtpd2ps -1024(%rdx){1to8}, %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x58,0x5a,0x6a,0x80]
          vcvtpd2ps -1024(%rdx){1to8}, %ymm5

// CHECK: vcvtpd2ps -1032(%rdx){1to8}, %ymm5
// CHECK:  encoding: [0x62,0xf1,0xfd,0x58,0x5a,0xaa,0xf8,0xfb,0xff,0xff]
          vcvtpd2ps -1032(%rdx){1to8}, %ymm5

// CHECK: vscalefsd %xmm21, %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xa2,0xcd,0x00,0x2d,0xed]
          vscalefsd %xmm21, %xmm22, %xmm21

// CHECK: vscalefsd %xmm21, %xmm22, %xmm21 {%k2}
// CHECK:  encoding: [0x62,0xa2,0xcd,0x02,0x2d,0xed]
          vscalefsd %xmm21, %xmm22, %xmm21 {%k2}

// CHECK: vscalefsd %xmm21, %xmm22, %xmm21 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0xcd,0x82,0x2d,0xed]
          vscalefsd %xmm21, %xmm22, %xmm21 {%k2} {z}

// CHECK: vscalefsd {rn-sae}, %xmm21, %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xa2,0xcd,0x10,0x2d,0xed]
          vscalefsd {rn-sae}, %xmm21, %xmm22, %xmm21

// CHECK: vscalefsd {ru-sae}, %xmm21, %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xa2,0xcd,0x50,0x2d,0xed]
          vscalefsd {ru-sae}, %xmm21, %xmm22, %xmm21

// CHECK: vscalefsd {rd-sae}, %xmm21, %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xa2,0xcd,0x30,0x2d,0xed]
          vscalefsd {rd-sae}, %xmm21, %xmm22, %xmm21

// CHECK: vscalefsd {rz-sae}, %xmm21, %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xa2,0xcd,0x70,0x2d,0xed]
          vscalefsd {rz-sae}, %xmm21, %xmm22, %xmm21

// CHECK: vscalefsd (%rcx), %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x2d,0x29]
          vscalefsd (%rcx), %xmm22, %xmm21

// CHECK: vscalefsd 291(%rax,%r14,8), %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xa2,0xcd,0x00,0x2d,0xac,0xf0,0x23,0x01,0x00,0x00]
          vscalefsd 291(%rax,%r14,8), %xmm22, %xmm21

// CHECK: vscalefsd 1016(%rdx), %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x2d,0x6a,0x7f]
          vscalefsd 1016(%rdx), %xmm22, %xmm21

// CHECK: vscalefsd 1024(%rdx), %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x2d,0xaa,0x00,0x04,0x00,0x00]
          vscalefsd 1024(%rdx), %xmm22, %xmm21

// CHECK: vscalefsd -1024(%rdx), %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x2d,0x6a,0x80]
          vscalefsd -1024(%rdx), %xmm22, %xmm21

// CHECK: vscalefsd -1032(%rdx), %xmm22, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x2d,0xaa,0xf8,0xfb,0xff,0xff]
          vscalefsd -1032(%rdx), %xmm22, %xmm21

// CHECK: vscalefss %xmm23, %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x32,0x05,0x08,0x2d,0xef]
          vscalefss %xmm23, %xmm15, %xmm13

// CHECK: vscalefss %xmm23, %xmm15, %xmm13 {%k3}
// CHECK:  encoding: [0x62,0x32,0x05,0x0b,0x2d,0xef]
          vscalefss %xmm23, %xmm15, %xmm13 {%k3}

// CHECK: vscalefss %xmm23, %xmm15, %xmm13 {%k3} {z}
// CHECK:  encoding: [0x62,0x32,0x05,0x8b,0x2d,0xef]
          vscalefss %xmm23, %xmm15, %xmm13 {%k3} {z}

// CHECK: vscalefss {rn-sae}, %xmm23, %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x32,0x05,0x18,0x2d,0xef]
          vscalefss {rn-sae}, %xmm23, %xmm15, %xmm13

// CHECK: vscalefss {ru-sae}, %xmm23, %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x32,0x05,0x58,0x2d,0xef]
          vscalefss {ru-sae}, %xmm23, %xmm15, %xmm13

// CHECK: vscalefss {rd-sae}, %xmm23, %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x32,0x05,0x38,0x2d,0xef]
          vscalefss {rd-sae}, %xmm23, %xmm15, %xmm13

// CHECK: vscalefss {rz-sae}, %xmm23, %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x32,0x05,0x78,0x2d,0xef]
          vscalefss {rz-sae}, %xmm23, %xmm15, %xmm13

// CHECK: vscalefss (%rcx), %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x72,0x05,0x08,0x2d,0x29]
          vscalefss (%rcx), %xmm15, %xmm13

// CHECK: vscalefss 291(%rax,%r14,8), %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x32,0x05,0x08,0x2d,0xac,0xf0,0x23,0x01,0x00,0x00]
          vscalefss 291(%rax,%r14,8), %xmm15, %xmm13

// CHECK: vscalefss 508(%rdx), %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x72,0x05,0x08,0x2d,0x6a,0x7f]
          vscalefss 508(%rdx), %xmm15, %xmm13

// CHECK: vscalefss 512(%rdx), %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x72,0x05,0x08,0x2d,0xaa,0x00,0x02,0x00,0x00]
          vscalefss 512(%rdx), %xmm15, %xmm13

// CHECK: vscalefss -512(%rdx), %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x72,0x05,0x08,0x2d,0x6a,0x80]
          vscalefss -512(%rdx), %xmm15, %xmm13

// CHECK: vscalefss -516(%rdx), %xmm15, %xmm13
// CHECK:  encoding: [0x62,0x72,0x05,0x08,0x2d,0xaa,0xfc,0xfd,0xff,0xff]
          vscalefss -516(%rdx), %xmm15, %xmm13

// CHECK: vrndscalepd $171, %zmm7, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x48,0x09,0xf7,0xab]
          vrndscalepd $0xab, %zmm7, %zmm22

// CHECK: vrndscalepd $171, %zmm7, %zmm22 {%k1}
// CHECK:  encoding: [0x62,0xe3,0xfd,0x49,0x09,0xf7,0xab]
          vrndscalepd $0xab, %zmm7, %zmm22 {%k1}

// CHECK: vrndscalepd $171, %zmm7, %zmm22 {%k1} {z}
// CHECK:  encoding: [0x62,0xe3,0xfd,0xc9,0x09,0xf7,0xab]
          vrndscalepd $0xab, %zmm7, %zmm22 {%k1} {z}

// CHECK: vrndscalepd $171,{sae}, %zmm7, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x18,0x09,0xf7,0xab]
          vrndscalepd $0xab,{sae}, %zmm7, %zmm22

// CHECK: vrndscalepd $123, %zmm7, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x48,0x09,0xf7,0x7b]
          vrndscalepd $0x7b, %zmm7, %zmm22

// CHECK: vrndscalepd $123,{sae}, %zmm7, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x18,0x09,0xf7,0x7b]
          vrndscalepd $0x7b,{sae}, %zmm7, %zmm22

// CHECK: vrndscalepd $123, (%rcx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x48,0x09,0x31,0x7b]
          vrndscalepd $0x7b, (%rcx), %zmm22

// CHECK: vrndscalepd $123, 291(%rax,%r14,8), %zmm22
// CHECK:  encoding: [0x62,0xa3,0xfd,0x48,0x09,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 291(%rax,%r14,8), %zmm22

// CHECK: vrndscalepd $123, (%rcx){1to8}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x58,0x09,0x31,0x7b]
          vrndscalepd $0x7b, (%rcx){1to8}, %zmm22

// CHECK: vrndscalepd $123, 8128(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x48,0x09,0x72,0x7f,0x7b]
          vrndscalepd $0x7b, 8128(%rdx), %zmm22

// CHECK: vrndscalepd $123, 8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x48,0x09,0xb2,0x00,0x20,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 8192(%rdx), %zmm22

// CHECK: vrndscalepd $123, -8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x48,0x09,0x72,0x80,0x7b]
          vrndscalepd $0x7b, -8192(%rdx), %zmm22

// CHECK: vrndscalepd $123, -8256(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x48,0x09,0xb2,0xc0,0xdf,0xff,0xff,0x7b]
          vrndscalepd $0x7b, -8256(%rdx), %zmm22

// CHECK: vrndscalepd $123, 1016(%rdx){1to8}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x58,0x09,0x72,0x7f,0x7b]
          vrndscalepd $0x7b, 1016(%rdx){1to8}, %zmm22

// CHECK: vrndscalepd $123, 1024(%rdx){1to8}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x58,0x09,0xb2,0x00,0x04,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 1024(%rdx){1to8}, %zmm22

// CHECK: vrndscalepd $123, -1024(%rdx){1to8}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x58,0x09,0x72,0x80,0x7b]
          vrndscalepd $0x7b, -1024(%rdx){1to8}, %zmm22

// CHECK: vrndscalepd $123, -1032(%rdx){1to8}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0xfd,0x58,0x09,0xb2,0xf8,0xfb,0xff,0xff,0x7b]
          vrndscalepd $0x7b, -1032(%rdx){1to8}, %zmm22

// CHECK: vrndscaleps $171, %zmm7, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x48,0x08,0xef,0xab]
          vrndscaleps $0xab, %zmm7, %zmm13

// CHECK: vrndscaleps $171, %zmm7, %zmm13 {%k1}
// CHECK:  encoding: [0x62,0x73,0x7d,0x49,0x08,0xef,0xab]
          vrndscaleps $0xab, %zmm7, %zmm13 {%k1}

// CHECK: vrndscaleps $171, %zmm7, %zmm13 {%k1} {z}
// CHECK:  encoding: [0x62,0x73,0x7d,0xc9,0x08,0xef,0xab]
          vrndscaleps $0xab, %zmm7, %zmm13 {%k1} {z}

// CHECK: vrndscaleps $171,{sae}, %zmm7, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x18,0x08,0xef,0xab]
          vrndscaleps $0xab,{sae}, %zmm7, %zmm13

// CHECK: vrndscaleps $123, %zmm7, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x48,0x08,0xef,0x7b]
          vrndscaleps $0x7b, %zmm7, %zmm13

// CHECK: vrndscaleps $123,{sae}, %zmm7, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x18,0x08,0xef,0x7b]
          vrndscaleps $0x7b,{sae}, %zmm7, %zmm13

// CHECK: vrndscaleps $123, (%rcx), %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x48,0x08,0x29,0x7b]
          vrndscaleps $0x7b, (%rcx), %zmm13

// CHECK: vrndscaleps $123, 291(%rax,%r14,8), %zmm13
// CHECK:  encoding: [0x62,0x33,0x7d,0x48,0x08,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 291(%rax,%r14,8), %zmm13

// CHECK: vrndscaleps $123, (%rcx){1to16}, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x58,0x08,0x29,0x7b]
          vrndscaleps $0x7b, (%rcx){1to16}, %zmm13

// CHECK: vrndscaleps $123, 8128(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x48,0x08,0x6a,0x7f,0x7b]
          vrndscaleps $0x7b, 8128(%rdx), %zmm13

// CHECK: vrndscaleps $123, 8192(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x48,0x08,0xaa,0x00,0x20,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 8192(%rdx), %zmm13

// CHECK: vrndscaleps $123, -8192(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x48,0x08,0x6a,0x80,0x7b]
          vrndscaleps $0x7b, -8192(%rdx), %zmm13

// CHECK: vrndscaleps $123, -8256(%rdx), %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x48,0x08,0xaa,0xc0,0xdf,0xff,0xff,0x7b]
          vrndscaleps $0x7b, -8256(%rdx), %zmm13

// CHECK: vrndscaleps $123, 508(%rdx){1to16}, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x58,0x08,0x6a,0x7f,0x7b]
          vrndscaleps $0x7b, 508(%rdx){1to16}, %zmm13

// CHECK: vrndscaleps $123, 512(%rdx){1to16}, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x58,0x08,0xaa,0x00,0x02,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 512(%rdx){1to16}, %zmm13

// CHECK: vrndscaleps $123, -512(%rdx){1to16}, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x58,0x08,0x6a,0x80,0x7b]
          vrndscaleps $0x7b, -512(%rdx){1to16}, %zmm13

// CHECK: vrndscaleps $123, -516(%rdx){1to16}, %zmm13
// CHECK:  encoding: [0x62,0x73,0x7d,0x58,0x08,0xaa,0xfc,0xfd,0xff,0xff,0x7b]
          vrndscaleps $0x7b, -516(%rdx){1to16}, %zmm13

// CHECK: vrndscalesd $171, %xmm15, %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x43,0x9d,0x08,0x0b,0xcf,0xab]
          vrndscalesd $0xab, %xmm15, %xmm12, %xmm25

// CHECK: vrndscalesd $171, %xmm15, %xmm12, %xmm25 {%k6}
// CHECK:  encoding: [0x62,0x43,0x9d,0x0e,0x0b,0xcf,0xab]
          vrndscalesd $0xab, %xmm15, %xmm12, %xmm25 {%k6}

// CHECK: vrndscalesd $171, %xmm15, %xmm12, %xmm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x43,0x9d,0x8e,0x0b,0xcf,0xab]
          vrndscalesd $0xab, %xmm15, %xmm12, %xmm25 {%k6} {z}

// CHECK: vrndscalesd $171, {sae}, %xmm15, %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x43,0x9d,0x18,0x0b,0xcf,0xab]
          vrndscalesd $0xab,{sae}, %xmm15, %xmm12, %xmm25

// CHECK: vrndscalesd $123, %xmm15, %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x43,0x9d,0x08,0x0b,0xcf,0x7b]
          vrndscalesd $0x7b, %xmm15, %xmm12, %xmm25

// CHECK: vrndscalesd $123, {sae}, %xmm15, %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x43,0x9d,0x18,0x0b,0xcf,0x7b]
          vrndscalesd $0x7b,{sae}, %xmm15, %xmm12, %xmm25

// CHECK: vrndscalesd $123, (%rcx), %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x63,0x9d,0x08,0x0b,0x09,0x7b]
          vrndscalesd $0x7b, (%rcx), %xmm12, %xmm25

// CHECK: vrndscalesd $123, 291(%rax,%r14,8), %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x23,0x9d,0x08,0x0b,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vrndscalesd $0x7b, 291(%rax,%r14,8), %xmm12, %xmm25

// CHECK: vrndscalesd $123, 1016(%rdx), %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x63,0x9d,0x08,0x0b,0x4a,0x7f,0x7b]
          vrndscalesd $0x7b, 1016(%rdx), %xmm12, %xmm25

// CHECK: vrndscalesd $123, 1024(%rdx), %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x63,0x9d,0x08,0x0b,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vrndscalesd $0x7b, 1024(%rdx), %xmm12, %xmm25

// CHECK: vrndscalesd $123, -1024(%rdx), %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x63,0x9d,0x08,0x0b,0x4a,0x80,0x7b]
          vrndscalesd $0x7b, -1024(%rdx), %xmm12, %xmm25

// CHECK: vrndscalesd $123, -1032(%rdx), %xmm12, %xmm25
// CHECK:  encoding: [0x62,0x63,0x9d,0x08,0x0b,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vrndscalesd $0x7b, -1032(%rdx), %xmm12, %xmm25

// CHECK: vrndscaless $171, %xmm17, %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x33,0x25,0x08,0x0a,0xd9,0xab]
          vrndscaless $0xab, %xmm17, %xmm11, %xmm11

// CHECK: vrndscaless $171, %xmm17, %xmm11, %xmm11 {%k3}
// CHECK:  encoding: [0x62,0x33,0x25,0x0b,0x0a,0xd9,0xab]
          vrndscaless $0xab, %xmm17, %xmm11, %xmm11 {%k3}

// CHECK: vrndscaless $171, %xmm17, %xmm11, %xmm11 {%k3} {z}
// CHECK:  encoding: [0x62,0x33,0x25,0x8b,0x0a,0xd9,0xab]
          vrndscaless $0xab, %xmm17, %xmm11, %xmm11 {%k3} {z}

// CHECK: vrndscaless $171, {sae}, %xmm17, %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x33,0x25,0x18,0x0a,0xd9,0xab]
          vrndscaless $0xab,{sae}, %xmm17, %xmm11, %xmm11

// CHECK: vrndscaless $123, %xmm17, %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x33,0x25,0x08,0x0a,0xd9,0x7b]
          vrndscaless $0x7b, %xmm17, %xmm11, %xmm11

// CHECK: vrndscaless $123, {sae}, %xmm17, %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x33,0x25,0x18,0x0a,0xd9,0x7b]
          vrndscaless $0x7b,{sae}, %xmm17, %xmm11, %xmm11

// CHECK: vrndscaless $123, (%rcx), %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x73,0x25,0x08,0x0a,0x19,0x7b]
          vrndscaless $0x7b, (%rcx), %xmm11, %xmm11

// CHECK: vrndscaless $123, 291(%rax,%r14,8), %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x33,0x25,0x08,0x0a,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vrndscaless $0x7b, 291(%rax,%r14,8), %xmm11, %xmm11

// CHECK: vrndscaless $123, 508(%rdx), %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x73,0x25,0x08,0x0a,0x5a,0x7f,0x7b]
          vrndscaless $0x7b, 508(%rdx), %xmm11, %xmm11

// CHECK: vrndscaless $123, 512(%rdx), %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x73,0x25,0x08,0x0a,0x9a,0x00,0x02,0x00,0x00,0x7b]
          vrndscaless $0x7b, 512(%rdx), %xmm11, %xmm11

// CHECK: vrndscaless $123, -512(%rdx), %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x73,0x25,0x08,0x0a,0x5a,0x80,0x7b]
          vrndscaless $0x7b, -512(%rdx), %xmm11, %xmm11

// CHECK: vrndscaless $123, -516(%rdx), %xmm11, %xmm11
// CHECK:  encoding: [0x62,0x73,0x25,0x08,0x0a,0x9a,0xfc,0xfd,0xff,0xff,0x7b]
          vrndscaless $0x7b, -516(%rdx), %xmm11, %xmm11

// CHECK: vfmadd132ss %xmm22, %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x22,0x75,0x00,0x99,0xf6]
          vfmadd132ss %xmm22, %xmm17, %xmm30

// CHECK: vfmadd132ss %xmm22, %xmm17, %xmm30 {%k3}
// CHECK:  encoding: [0x62,0x22,0x75,0x03,0x99,0xf6]
          vfmadd132ss %xmm22, %xmm17, %xmm30 {%k3}

// CHECK: vfmadd132ss %xmm22, %xmm17, %xmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x75,0x83,0x99,0xf6]
          vfmadd132ss %xmm22, %xmm17, %xmm30 {%k3} {z}

// CHECK: vfmadd132ss {rn-sae}, %xmm22, %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x22,0x75,0x10,0x99,0xf6]
          vfmadd132ss {rn-sae}, %xmm22, %xmm17, %xmm30

// CHECK: vfmadd132ss {ru-sae}, %xmm22, %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x22,0x75,0x50,0x99,0xf6]
          vfmadd132ss {ru-sae}, %xmm22, %xmm17, %xmm30

// CHECK: vfmadd132ss {rd-sae}, %xmm22, %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x22,0x75,0x30,0x99,0xf6]
          vfmadd132ss {rd-sae}, %xmm22, %xmm17, %xmm30

// CHECK: vfmadd132ss {rz-sae}, %xmm22, %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x22,0x75,0x70,0x99,0xf6]
          vfmadd132ss {rz-sae}, %xmm22, %xmm17, %xmm30

// CHECK: vfmadd132ss (%rcx), %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x99,0x31]
          vfmadd132ss (%rcx), %xmm17, %xmm30

// CHECK: vfmadd132ss 291(%rax,%r14,8), %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x22,0x75,0x00,0x99,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd132ss 291(%rax,%r14,8), %xmm17, %xmm30

// CHECK: vfmadd132ss 508(%rdx), %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x99,0x72,0x7f]
          vfmadd132ss 508(%rdx), %xmm17, %xmm30

// CHECK: vfmadd132ss 512(%rdx), %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x99,0xb2,0x00,0x02,0x00,0x00]
          vfmadd132ss 512(%rdx), %xmm17, %xmm30

// CHECK: vfmadd132ss -512(%rdx), %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x99,0x72,0x80]
          vfmadd132ss -512(%rdx), %xmm17, %xmm30

// CHECK: vfmadd132ss -516(%rdx), %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x99,0xb2,0xfc,0xfd,0xff,0xff]
          vfmadd132ss -516(%rdx), %xmm17, %xmm30

// CHECK: vfmadd132sd %xmm3, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x99,0xe3]
          vfmadd132sd %xmm3, %xmm17, %xmm28

// CHECK: vfmadd132sd %xmm3, %xmm17, %xmm28 {%k2}
// CHECK:  encoding: [0x62,0x62,0xf5,0x02,0x99,0xe3]
          vfmadd132sd %xmm3, %xmm17, %xmm28 {%k2}

// CHECK: vfmadd132sd %xmm3, %xmm17, %xmm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x62,0xf5,0x82,0x99,0xe3]
          vfmadd132sd %xmm3, %xmm17, %xmm28 {%k2} {z}

// CHECK: vfmadd132sd {rn-sae}, %xmm3, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x99,0xe3]
          vfmadd132sd {rn-sae}, %xmm3, %xmm17, %xmm28

// CHECK: vfmadd132sd {ru-sae}, %xmm3, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x50,0x99,0xe3]
          vfmadd132sd {ru-sae}, %xmm3, %xmm17, %xmm28

// CHECK: vfmadd132sd {rd-sae}, %xmm3, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x99,0xe3]
          vfmadd132sd {rd-sae}, %xmm3, %xmm17, %xmm28

// CHECK: vfmadd132sd {rz-sae}, %xmm3, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x70,0x99,0xe3]
          vfmadd132sd {rz-sae}, %xmm3, %xmm17, %xmm28

// CHECK: vfmadd132sd (%rcx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x99,0x21]
          vfmadd132sd (%rcx), %xmm17, %xmm28

// CHECK: vfmadd132sd 291(%rax,%r14,8), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x22,0xf5,0x00,0x99,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd132sd 291(%rax,%r14,8), %xmm17, %xmm28

// CHECK: vfmadd132sd 1016(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x99,0x62,0x7f]
          vfmadd132sd 1016(%rdx), %xmm17, %xmm28

// CHECK: vfmadd132sd 1024(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x99,0xa2,0x00,0x04,0x00,0x00]
          vfmadd132sd 1024(%rdx), %xmm17, %xmm28

// CHECK: vfmadd132sd -1024(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x99,0x62,0x80]
          vfmadd132sd -1024(%rdx), %xmm17, %xmm28

// CHECK: vfmadd132sd -1032(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x99,0xa2,0xf8,0xfb,0xff,0xff]
          vfmadd132sd -1032(%rdx), %xmm17, %xmm28

// CHECK: vfmadd213ss %xmm16, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0x4d,0x00,0xa9,0xf0]
          vfmadd213ss %xmm16, %xmm22, %xmm30

// CHECK: vfmadd213ss %xmm16, %xmm22, %xmm30 {%k1}
// CHECK:  encoding: [0x62,0x22,0x4d,0x01,0xa9,0xf0]
          vfmadd213ss %xmm16, %xmm22, %xmm30 {%k1}

// CHECK: vfmadd213ss %xmm16, %xmm22, %xmm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x22,0x4d,0x81,0xa9,0xf0]
          vfmadd213ss %xmm16, %xmm22, %xmm30 {%k1} {z}

// CHECK: vfmadd213ss {rn-sae}, %xmm16, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0x4d,0x10,0xa9,0xf0]
          vfmadd213ss {rn-sae}, %xmm16, %xmm22, %xmm30

// CHECK: vfmadd213ss {ru-sae}, %xmm16, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0x4d,0x50,0xa9,0xf0]
          vfmadd213ss {ru-sae}, %xmm16, %xmm22, %xmm30

// CHECK: vfmadd213ss {rd-sae}, %xmm16, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0x4d,0x30,0xa9,0xf0]
          vfmadd213ss {rd-sae}, %xmm16, %xmm22, %xmm30

// CHECK: vfmadd213ss {rz-sae}, %xmm16, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0x4d,0x70,0xa9,0xf0]
          vfmadd213ss {rz-sae}, %xmm16, %xmm22, %xmm30

// CHECK: vfmadd213ss (%rcx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0xa9,0x31]
          vfmadd213ss (%rcx), %xmm22, %xmm30

// CHECK: vfmadd213ss 291(%rax,%r14,8), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0x4d,0x00,0xa9,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd213ss 291(%rax,%r14,8), %xmm22, %xmm30

// CHECK: vfmadd213ss 508(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0xa9,0x72,0x7f]
          vfmadd213ss 508(%rdx), %xmm22, %xmm30

// CHECK: vfmadd213ss 512(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0xa9,0xb2,0x00,0x02,0x00,0x00]
          vfmadd213ss 512(%rdx), %xmm22, %xmm30

// CHECK: vfmadd213ss -512(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0xa9,0x72,0x80]
          vfmadd213ss -512(%rdx), %xmm22, %xmm30

// CHECK: vfmadd213ss -516(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0xa9,0xb2,0xfc,0xfd,0xff,0xff]
          vfmadd213ss -516(%rdx), %xmm22, %xmm30

// CHECK: vfmadd213sd %xmm13, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x42,0xad,0x00,0xa9,0xc5]
          vfmadd213sd %xmm13, %xmm26, %xmm24

// CHECK: vfmadd213sd %xmm13, %xmm26, %xmm24 {%k3}
// CHECK:  encoding: [0x62,0x42,0xad,0x03,0xa9,0xc5]
          vfmadd213sd %xmm13, %xmm26, %xmm24 {%k3}

// CHECK: vfmadd213sd %xmm13, %xmm26, %xmm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x42,0xad,0x83,0xa9,0xc5]
          vfmadd213sd %xmm13, %xmm26, %xmm24 {%k3} {z}

// CHECK: vfmadd213sd {rn-sae}, %xmm13, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x42,0xad,0x10,0xa9,0xc5]
          vfmadd213sd {rn-sae}, %xmm13, %xmm26, %xmm24

// CHECK: vfmadd213sd {ru-sae}, %xmm13, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x42,0xad,0x50,0xa9,0xc5]
          vfmadd213sd {ru-sae}, %xmm13, %xmm26, %xmm24

// CHECK: vfmadd213sd {rd-sae}, %xmm13, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x42,0xad,0x30,0xa9,0xc5]
          vfmadd213sd {rd-sae}, %xmm13, %xmm26, %xmm24

// CHECK: vfmadd213sd {rz-sae}, %xmm13, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x42,0xad,0x70,0xa9,0xc5]
          vfmadd213sd {rz-sae}, %xmm13, %xmm26, %xmm24

// CHECK: vfmadd213sd (%rcx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0xa9,0x01]
          vfmadd213sd (%rcx), %xmm26, %xmm24

// CHECK: vfmadd213sd 291(%rax,%r14,8), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x22,0xad,0x00,0xa9,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmadd213sd 291(%rax,%r14,8), %xmm26, %xmm24

// CHECK: vfmadd213sd 1016(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0xa9,0x42,0x7f]
          vfmadd213sd 1016(%rdx), %xmm26, %xmm24

// CHECK: vfmadd213sd 1024(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0xa9,0x82,0x00,0x04,0x00,0x00]
          vfmadd213sd 1024(%rdx), %xmm26, %xmm24

// CHECK: vfmadd213sd -1024(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0xa9,0x42,0x80]
          vfmadd213sd -1024(%rdx), %xmm26, %xmm24

// CHECK: vfmadd213sd -1032(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0xa9,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd213sd -1032(%rdx), %xmm26, %xmm24

// CHECK: vfmadd231ss %xmm10, %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x42,0x05,0x08,0xb9,0xea]
          vfmadd231ss %xmm10, %xmm15, %xmm29

// CHECK: vfmadd231ss %xmm10, %xmm15, %xmm29 {%k4}
// CHECK:  encoding: [0x62,0x42,0x05,0x0c,0xb9,0xea]
          vfmadd231ss %xmm10, %xmm15, %xmm29 {%k4}

// CHECK: vfmadd231ss %xmm10, %xmm15, %xmm29 {%k4} {z}
// CHECK:  encoding: [0x62,0x42,0x05,0x8c,0xb9,0xea]
          vfmadd231ss %xmm10, %xmm15, %xmm29 {%k4} {z}

// CHECK: vfmadd231ss {rn-sae}, %xmm10, %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x42,0x05,0x18,0xb9,0xea]
          vfmadd231ss {rn-sae}, %xmm10, %xmm15, %xmm29

// CHECK: vfmadd231ss {ru-sae}, %xmm10, %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x42,0x05,0x58,0xb9,0xea]
          vfmadd231ss {ru-sae}, %xmm10, %xmm15, %xmm29

// CHECK: vfmadd231ss {rd-sae}, %xmm10, %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x42,0x05,0x38,0xb9,0xea]
          vfmadd231ss {rd-sae}, %xmm10, %xmm15, %xmm29

// CHECK: vfmadd231ss {rz-sae}, %xmm10, %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x42,0x05,0x78,0xb9,0xea]
          vfmadd231ss {rz-sae}, %xmm10, %xmm15, %xmm29

// CHECK: vfmadd231ss (%rcx), %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x62,0x05,0x08,0xb9,0x29]
          vfmadd231ss (%rcx), %xmm15, %xmm29

// CHECK: vfmadd231ss 291(%rax,%r14,8), %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x22,0x05,0x08,0xb9,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmadd231ss 291(%rax,%r14,8), %xmm15, %xmm29

// CHECK: vfmadd231ss 508(%rdx), %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x62,0x05,0x08,0xb9,0x6a,0x7f]
          vfmadd231ss 508(%rdx), %xmm15, %xmm29

// CHECK: vfmadd231ss 512(%rdx), %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x62,0x05,0x08,0xb9,0xaa,0x00,0x02,0x00,0x00]
          vfmadd231ss 512(%rdx), %xmm15, %xmm29

// CHECK: vfmadd231ss -512(%rdx), %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x62,0x05,0x08,0xb9,0x6a,0x80]
          vfmadd231ss -512(%rdx), %xmm15, %xmm29

// CHECK: vfmadd231ss -516(%rdx), %xmm15, %xmm29
// CHECK:  encoding: [0x62,0x62,0x05,0x08,0xb9,0xaa,0xfc,0xfd,0xff,0xff]
          vfmadd231ss -516(%rdx), %xmm15, %xmm29

// CHECK: vfmadd231sd %xmm14, %xmm1, %xmm4
// CHECK:  encoding: [0xc4,0xc2,0xf1,0xb9,0xe6]
          vfmadd231sd %xmm14, %xmm1, %xmm4

// CHECK: vfmadd231sd %xmm14, %xmm1, %xmm4 {%k1}
// CHECK:  encoding: [0x62,0xd2,0xf5,0x09,0xb9,0xe6]
          vfmadd231sd %xmm14, %xmm1, %xmm4 {%k1}

// CHECK: vfmadd231sd %xmm14, %xmm1, %xmm4 {%k1} {z}
// CHECK:  encoding: [0x62,0xd2,0xf5,0x89,0xb9,0xe6]
          vfmadd231sd %xmm14, %xmm1, %xmm4 {%k1} {z}

// CHECK: vfmadd231sd {rn-sae}, %xmm14, %xmm1, %xmm4
// CHECK:  encoding: [0x62,0xd2,0xf5,0x18,0xb9,0xe6]
          vfmadd231sd {rn-sae}, %xmm14, %xmm1, %xmm4

// CHECK: vfmadd231sd {ru-sae}, %xmm14, %xmm1, %xmm4
// CHECK:  encoding: [0x62,0xd2,0xf5,0x58,0xb9,0xe6]
          vfmadd231sd {ru-sae}, %xmm14, %xmm1, %xmm4

// CHECK: vfmadd231sd {rd-sae}, %xmm14, %xmm1, %xmm4
// CHECK:  encoding: [0x62,0xd2,0xf5,0x38,0xb9,0xe6]
          vfmadd231sd {rd-sae}, %xmm14, %xmm1, %xmm4

// CHECK: vfmadd231sd {rz-sae}, %xmm14, %xmm1, %xmm4
// CHECK:  encoding: [0x62,0xd2,0xf5,0x78,0xb9,0xe6]
          vfmadd231sd {rz-sae}, %xmm14, %xmm1, %xmm4

// CHECK: vfmadd231sd   (%rcx), %xmm1, %xmm24 
// CHECK: encoding: [0x62,0x62,0xf5,0x08,0xb9,0x01]
          vfmadd231sd   (%rcx), %xmm1, %xmm24 

// CHECK: vfmadd231sd   291(%rax,%r14,8), %xmm1, %xmm24 
// CHECK: encoding: [0x62,0x22,0xf5,0x08,0xb9,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmadd231sd   291(%rax,%r14,8), %xmm1, %xmm24 

// CHECK: vfmadd231sd   1016(%rdx), %xmm1, %xmm24 
// CHECK: encoding: [0x62,0x62,0xf5,0x08,0xb9,0x42,0x7f]
          vfmadd231sd   1016(%rdx), %xmm1, %xmm24 

// CHECK: vfmadd231sd   1024(%rdx), %xmm1, %xmm24 
// CHECK: encoding: [0x62,0x62,0xf5,0x08,0xb9,0x82,0x00,0x04,0x00,0x00]
          vfmadd231sd   1024(%rdx), %xmm1, %xmm24 

// CHECK: vfmadd231sd   -1024(%rdx), %xmm1, %xmm24 
// CHECK: encoding: [0x62,0x62,0xf5,0x08,0xb9,0x42,0x80]
          vfmadd231sd   -1024(%rdx), %xmm1, %xmm24 

// CHECK: vfmadd231sd   -1032(%rdx), %xmm1, %xmm24 
// CHECK: encoding: [0x62,0x62,0xf5,0x08,0xb9,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd231sd   -1032(%rdx), %xmm1, %xmm24 

// CHECK: vfmsub132ss %xmm27, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x02,0x4d,0x00,0x9b,0xf3]
          vfmsub132ss %xmm27, %xmm22, %xmm30

// CHECK: vfmsub132ss %xmm27, %xmm22, %xmm30 {%k3}
// CHECK:  encoding: [0x62,0x02,0x4d,0x03,0x9b,0xf3]
          vfmsub132ss %xmm27, %xmm22, %xmm30 {%k3}

// CHECK: vfmsub132ss %xmm27, %xmm22, %xmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0x4d,0x83,0x9b,0xf3]
          vfmsub132ss %xmm27, %xmm22, %xmm30 {%k3} {z}

// CHECK: vfmsub132ss {rn-sae}, %xmm27, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x02,0x4d,0x10,0x9b,0xf3]
          vfmsub132ss {rn-sae}, %xmm27, %xmm22, %xmm30

// CHECK: vfmsub132ss {ru-sae}, %xmm27, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x02,0x4d,0x50,0x9b,0xf3]
          vfmsub132ss {ru-sae}, %xmm27, %xmm22, %xmm30

// CHECK: vfmsub132ss {rd-sae}, %xmm27, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x02,0x4d,0x30,0x9b,0xf3]
          vfmsub132ss {rd-sae}, %xmm27, %xmm22, %xmm30

// CHECK: vfmsub132ss {rz-sae}, %xmm27, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x02,0x4d,0x70,0x9b,0xf3]
          vfmsub132ss {rz-sae}, %xmm27, %xmm22, %xmm30

// CHECK: vfmsub132ss (%rcx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0x9b,0x31]
          vfmsub132ss (%rcx), %xmm22, %xmm30

// CHECK: vfmsub132ss 291(%rax,%r14,8), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0x4d,0x00,0x9b,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub132ss 291(%rax,%r14,8), %xmm22, %xmm30

// CHECK: vfmsub132ss 508(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0x9b,0x72,0x7f]
          vfmsub132ss 508(%rdx), %xmm22, %xmm30

// CHECK: vfmsub132ss 512(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0x9b,0xb2,0x00,0x02,0x00,0x00]
          vfmsub132ss 512(%rdx), %xmm22, %xmm30

// CHECK: vfmsub132ss -512(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0x9b,0x72,0x80]
          vfmsub132ss -512(%rdx), %xmm22, %xmm30

// CHECK: vfmsub132ss -516(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x00,0x9b,0xb2,0xfc,0xfd,0xff,0xff]
          vfmsub132ss -516(%rdx), %xmm22, %xmm30

// CHECK: vfmsub132sd %xmm27, %xmm8, %xmm12
// CHECK:  encoding: [0x62,0x12,0xbd,0x08,0x9b,0xe3]
          vfmsub132sd %xmm27, %xmm8, %xmm12

// CHECK: vfmsub132sd %xmm27, %xmm8, %xmm12 {%k3}
// CHECK:  encoding: [0x62,0x12,0xbd,0x0b,0x9b,0xe3]
          vfmsub132sd %xmm27, %xmm8, %xmm12 {%k3}

// CHECK: vfmsub132sd %xmm27, %xmm8, %xmm12 {%k3} {z}
// CHECK:  encoding: [0x62,0x12,0xbd,0x8b,0x9b,0xe3]
          vfmsub132sd %xmm27, %xmm8, %xmm12 {%k3} {z}

// CHECK: vfmsub132sd {rn-sae}, %xmm27, %xmm8, %xmm12
// CHECK:  encoding: [0x62,0x12,0xbd,0x18,0x9b,0xe3]
          vfmsub132sd {rn-sae}, %xmm27, %xmm8, %xmm12

// CHECK: vfmsub132sd {ru-sae}, %xmm27, %xmm8, %xmm12
// CHECK:  encoding: [0x62,0x12,0xbd,0x58,0x9b,0xe3]
          vfmsub132sd {ru-sae}, %xmm27, %xmm8, %xmm12

// CHECK: vfmsub132sd {rd-sae}, %xmm27, %xmm8, %xmm12
// CHECK:  encoding: [0x62,0x12,0xbd,0x38,0x9b,0xe3]
          vfmsub132sd {rd-sae}, %xmm27, %xmm8, %xmm12

// CHECK: vfmsub132sd {rz-sae}, %xmm27, %xmm8, %xmm12
// CHECK:  encoding: [0x62,0x12,0xbd,0x78,0x9b,0xe3]
          vfmsub132sd {rz-sae}, %xmm27, %xmm8, %xmm12

// CHECK: vfmsub132sd   (%rcx), %xmm8, %xmm22 
// CHECK: encoding: [0x62,0xe2,0xbd,0x08,0x9b,0x31]
          vfmsub132sd   (%rcx), %xmm8, %xmm22 

// CHECK: vfmsub132sd   291(%rax,%r14,8), %xmm8, %xmm22 
// CHECK: encoding: [0x62,0xa2,0xbd,0x08,0x9b,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub132sd   291(%rax,%r14,8), %xmm8, %xmm22 

// CHECK: vfmsub132sd   1016(%rdx), %xmm8, %xmm22 
// CHECK: encoding: [0x62,0xe2,0xbd,0x08,0x9b,0x72,0x7f]
          vfmsub132sd   1016(%rdx), %xmm8, %xmm22 

// CHECK: vfmsub132sd   1024(%rdx), %xmm8, %xmm22 
// CHECK: encoding: [0x62,0xe2,0xbd,0x08,0x9b,0xb2,0x00,0x04,0x00,0x00]
          vfmsub132sd   1024(%rdx), %xmm8, %xmm22 

// CHECK: vfmsub132sd   -1024(%rdx), %xmm8, %xmm22 
// CHECK: encoding: [0x62,0xe2,0xbd,0x08,0x9b,0x72,0x80]
          vfmsub132sd   -1024(%rdx), %xmm8, %xmm22 

// CHECK: vfmsub132sd   -1032(%rdx), %xmm8, %xmm22 
// CHECK: encoding: [0x62,0xe2,0xbd,0x08,0x9b,0xb2,0xf8,0xfb,0xff,0xff]
          vfmsub132sd   -1032(%rdx), %xmm8, %xmm22 

// CHECK: vfmsub213ss %xmm26, %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x02,0x15,0x08,0xab,0xf2]
          vfmsub213ss %xmm26, %xmm13, %xmm30

// CHECK: vfmsub213ss %xmm26, %xmm13, %xmm30 {%k1}
// CHECK:  encoding: [0x62,0x02,0x15,0x09,0xab,0xf2]
          vfmsub213ss %xmm26, %xmm13, %xmm30 {%k1}

// CHECK: vfmsub213ss %xmm26, %xmm13, %xmm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0x15,0x89,0xab,0xf2]
          vfmsub213ss %xmm26, %xmm13, %xmm30 {%k1} {z}

// CHECK: vfmsub213ss {rn-sae}, %xmm26, %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x02,0x15,0x18,0xab,0xf2]
          vfmsub213ss {rn-sae}, %xmm26, %xmm13, %xmm30

// CHECK: vfmsub213ss {ru-sae}, %xmm26, %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x02,0x15,0x58,0xab,0xf2]
          vfmsub213ss {ru-sae}, %xmm26, %xmm13, %xmm30

// CHECK: vfmsub213ss {rd-sae}, %xmm26, %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x02,0x15,0x38,0xab,0xf2]
          vfmsub213ss {rd-sae}, %xmm26, %xmm13, %xmm30

// CHECK: vfmsub213ss {rz-sae}, %xmm26, %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x02,0x15,0x78,0xab,0xf2]
          vfmsub213ss {rz-sae}, %xmm26, %xmm13, %xmm30

// CHECK: vfmsub213ss (%rcx), %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xab,0x31]
          vfmsub213ss (%rcx), %xmm13, %xmm30

// CHECK: vfmsub213ss 291(%rax,%r14,8), %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x22,0x15,0x08,0xab,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub213ss 291(%rax,%r14,8), %xmm13, %xmm30

// CHECK: vfmsub213ss 508(%rdx), %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xab,0x72,0x7f]
          vfmsub213ss 508(%rdx), %xmm13, %xmm30

// CHECK: vfmsub213ss 512(%rdx), %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xab,0xb2,0x00,0x02,0x00,0x00]
          vfmsub213ss 512(%rdx), %xmm13, %xmm30

// CHECK: vfmsub213ss -512(%rdx), %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xab,0x72,0x80]
          vfmsub213ss -512(%rdx), %xmm13, %xmm30

// CHECK: vfmsub213ss -516(%rdx), %xmm13, %xmm30
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xab,0xb2,0xfc,0xfd,0xff,0xff]
          vfmsub213ss -516(%rdx), %xmm13, %xmm30

// CHECK: vfmsub213sd   %xmm12, %xmm8, %xmm26 
// CHECK: encoding: [0x62,0x42,0xbd,0x08,0xab,0xd4]
          vfmsub213sd   %xmm12, %xmm8, %xmm26 

// CHECK: vfmsub213sd %xmm12, %xmm8, %xmm6 {%k1}
// CHECK:  encoding: [0x62,0xd2,0xbd,0x09,0xab,0xf4]
          vfmsub213sd %xmm12, %xmm8, %xmm6 {%k1}

// CHECK: vfmsub213sd %xmm12, %xmm8, %xmm6 {%k1} {z}
// CHECK:  encoding: [0x62,0xd2,0xbd,0x89,0xab,0xf4]
          vfmsub213sd %xmm12, %xmm8, %xmm6 {%k1} {z}

// CHECK: vfmsub213sd {rn-sae}, %xmm12, %xmm8, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xbd,0x18,0xab,0xf4]
          vfmsub213sd {rn-sae}, %xmm12, %xmm8, %xmm6

// CHECK: vfmsub213sd {ru-sae}, %xmm12, %xmm8, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xbd,0x58,0xab,0xf4]
          vfmsub213sd {ru-sae}, %xmm12, %xmm8, %xmm6

// CHECK: vfmsub213sd {rd-sae}, %xmm12, %xmm8, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xbd,0x38,0xab,0xf4]
          vfmsub213sd {rd-sae}, %xmm12, %xmm8, %xmm6

// CHECK: vfmsub213sd {rz-sae}, %xmm12, %xmm8, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xbd,0x78,0xab,0xf4]
          vfmsub213sd {rz-sae}, %xmm12, %xmm8, %xmm6

// CHECK: vfmsub213sd   (%rcx), %xmm8, %xmm26 
// CHECK: encoding: [0x62,0x62,0xbd,0x08,0xab,0x11]
          vfmsub213sd   (%rcx), %xmm8, %xmm26 

// CHECK: vfmsub213sd   291(%rax,%r14,8), %xmm8, %xmm26 
// CHECK: encoding: [0x62,0x22,0xbd,0x08,0xab,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmsub213sd   291(%rax,%r14,8), %xmm8, %xmm26 

// CHECK: vfmsub213sd   1016(%rdx), %xmm8, %xmm26 
// CHECK: encoding: [0x62,0x62,0xbd,0x08,0xab,0x52,0x7f]
          vfmsub213sd   1016(%rdx), %xmm8, %xmm26 

// CHECK: vfmsub213sd   1024(%rdx), %xmm8, %xmm26 
// CHECK: encoding: [0x62,0x62,0xbd,0x08,0xab,0x92,0x00,0x04,0x00,0x00]
          vfmsub213sd   1024(%rdx), %xmm8, %xmm26 

// CHECK: vfmsub213sd   -1024(%rdx), %xmm8, %xmm26 
// CHECK: encoding: [0x62,0x62,0xbd,0x08,0xab,0x52,0x80]
          vfmsub213sd   -1024(%rdx), %xmm8, %xmm26 

// CHECK: vfmsub213sd   -1032(%rdx), %xmm8, %xmm26 
// CHECK: encoding: [0x62,0x62,0xbd,0x08,0xab,0x92,0xf8,0xfb,0xff,0xff]
          vfmsub213sd   -1032(%rdx), %xmm8, %xmm26 

// CHECK: vfmsub231ss %xmm5, %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x08,0xbb,0xed]
          vfmsub231ss %xmm5, %xmm3, %xmm29

// CHECK: vfmsub231ss %xmm5, %xmm3, %xmm29 {%k6}
// CHECK:  encoding: [0x62,0x62,0x65,0x0e,0xbb,0xed]
          vfmsub231ss %xmm5, %xmm3, %xmm29 {%k6}

// CHECK: vfmsub231ss %xmm5, %xmm3, %xmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x62,0x65,0x8e,0xbb,0xed]
          vfmsub231ss %xmm5, %xmm3, %xmm29 {%k6} {z}

// CHECK: vfmsub231ss {rn-sae}, %xmm5, %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x18,0xbb,0xed]
          vfmsub231ss {rn-sae}, %xmm5, %xmm3, %xmm29

// CHECK: vfmsub231ss {ru-sae}, %xmm5, %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x58,0xbb,0xed]
          vfmsub231ss {ru-sae}, %xmm5, %xmm3, %xmm29

// CHECK: vfmsub231ss {rd-sae}, %xmm5, %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x38,0xbb,0xed]
          vfmsub231ss {rd-sae}, %xmm5, %xmm3, %xmm29

// CHECK: vfmsub231ss {rz-sae}, %xmm5, %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x78,0xbb,0xed]
          vfmsub231ss {rz-sae}, %xmm5, %xmm3, %xmm29

// CHECK: vfmsub231ss (%rcx), %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x08,0xbb,0x29]
          vfmsub231ss (%rcx), %xmm3, %xmm29

// CHECK: vfmsub231ss 291(%rax,%r14,8), %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x22,0x65,0x08,0xbb,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmsub231ss 291(%rax,%r14,8), %xmm3, %xmm29

// CHECK: vfmsub231ss 508(%rdx), %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x08,0xbb,0x6a,0x7f]
          vfmsub231ss 508(%rdx), %xmm3, %xmm29

// CHECK: vfmsub231ss 512(%rdx), %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x08,0xbb,0xaa,0x00,0x02,0x00,0x00]
          vfmsub231ss 512(%rdx), %xmm3, %xmm29

// CHECK: vfmsub231ss -512(%rdx), %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x08,0xbb,0x6a,0x80]
          vfmsub231ss -512(%rdx), %xmm3, %xmm29

// CHECK: vfmsub231ss -516(%rdx), %xmm3, %xmm29
// CHECK:  encoding: [0x62,0x62,0x65,0x08,0xbb,0xaa,0xfc,0xfd,0xff,0xff]
          vfmsub231ss -516(%rdx), %xmm3, %xmm29

// CHECK: vfmsub231sd %xmm6, %xmm11, %xmm3
// CHECK:  encoding: [0xc4,0xe2,0xa1,0xbb,0xde]
          vfmsub231sd %xmm6, %xmm11, %xmm3

// CHECK: vfmsub231sd %xmm6, %xmm11, %xmm3 {%k7}
// CHECK:  encoding: [0x62,0xf2,0xa5,0x0f,0xbb,0xde]
          vfmsub231sd %xmm6, %xmm11, %xmm3 {%k7}

// CHECK: vfmsub231sd %xmm6, %xmm11, %xmm3 {%k7} {z}
// CHECK:  encoding: [0x62,0xf2,0xa5,0x8f,0xbb,0xde]
          vfmsub231sd %xmm6, %xmm11, %xmm3 {%k7} {z}

// CHECK: vfmsub231sd {rn-sae}, %xmm6, %xmm11, %xmm3
// CHECK:  encoding: [0x62,0xf2,0xa5,0x18,0xbb,0xde]
          vfmsub231sd {rn-sae}, %xmm6, %xmm11, %xmm3

// CHECK: vfmsub231sd {ru-sae}, %xmm6, %xmm11, %xmm3
// CHECK:  encoding: [0x62,0xf2,0xa5,0x58,0xbb,0xde]
          vfmsub231sd {ru-sae}, %xmm6, %xmm11, %xmm3

// CHECK: vfmsub231sd {rd-sae}, %xmm6, %xmm11, %xmm3
// CHECK:  encoding: [0x62,0xf2,0xa5,0x38,0xbb,0xde]
          vfmsub231sd {rd-sae}, %xmm6, %xmm11, %xmm3

// CHECK: vfmsub231sd {rz-sae}, %xmm6, %xmm11, %xmm3
// CHECK:  encoding: [0x62,0xf2,0xa5,0x78,0xbb,0xde]
          vfmsub231sd {rz-sae}, %xmm6, %xmm11, %xmm3

// CHECK: vfmsub231sd   (%rcx), %xmm11, %xmm23 
// CHECK: encoding: [0x62,0xe2,0xa5,0x08,0xbb,0x39]
          vfmsub231sd   (%rcx), %xmm11, %xmm23 

// CHECK: vfmsub231sd   291(%rax,%r14,8), %xmm11, %xmm23 
// CHECK: encoding: [0x62,0xa2,0xa5,0x08,0xbb,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfmsub231sd   291(%rax,%r14,8), %xmm11, %xmm23 

// CHECK: vfmsub231sd   1016(%rdx), %xmm11, %xmm23 
// CHECK: encoding: [0x62,0xe2,0xa5,0x08,0xbb,0x7a,0x7f]
          vfmsub231sd   1016(%rdx), %xmm11, %xmm23 

// CHECK: vfmsub231sd   1024(%rdx), %xmm11, %xmm23 
// CHECK: encoding: [0x62,0xe2,0xa5,0x08,0xbb,0xba,0x00,0x04,0x00,0x00]
          vfmsub231sd   1024(%rdx), %xmm11, %xmm23 

// CHECK: vfmsub231sd   -1024(%rdx), %xmm11, %xmm23 
// CHECK: encoding: [0x62,0xe2,0xa5,0x08,0xbb,0x7a,0x80]
          vfmsub231sd   -1024(%rdx), %xmm11, %xmm23 

// CHECK: vfmsub231sd   -1032(%rdx), %xmm11, %xmm23 
// CHECK: encoding: [0x62,0xe2,0xa5,0x08,0xbb,0xba,0xf8,0xfb,0xff,0xff]
          vfmsub231sd   -1032(%rdx), %xmm11, %xmm23 

// CHECK: vfnmadd132ss %xmm23, %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x22,0x75,0x08,0x9d,0xcf]
          vfnmadd132ss %xmm23, %xmm1, %xmm25

// CHECK: vfnmadd132ss %xmm23, %xmm1, %xmm25 {%k3}
// CHECK:  encoding: [0x62,0x22,0x75,0x0b,0x9d,0xcf]
          vfnmadd132ss %xmm23, %xmm1, %xmm25 {%k3}

// CHECK: vfnmadd132ss %xmm23, %xmm1, %xmm25 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x75,0x8b,0x9d,0xcf]
          vfnmadd132ss %xmm23, %xmm1, %xmm25 {%k3} {z}

// CHECK: vfnmadd132ss {rn-sae}, %xmm23, %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x22,0x75,0x18,0x9d,0xcf]
          vfnmadd132ss {rn-sae}, %xmm23, %xmm1, %xmm25

// CHECK: vfnmadd132ss {ru-sae}, %xmm23, %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x22,0x75,0x58,0x9d,0xcf]
          vfnmadd132ss {ru-sae}, %xmm23, %xmm1, %xmm25

// CHECK: vfnmadd132ss {rd-sae}, %xmm23, %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x22,0x75,0x38,0x9d,0xcf]
          vfnmadd132ss {rd-sae}, %xmm23, %xmm1, %xmm25

// CHECK: vfnmadd132ss {rz-sae}, %xmm23, %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x22,0x75,0x78,0x9d,0xcf]
          vfnmadd132ss {rz-sae}, %xmm23, %xmm1, %xmm25

// CHECK: vfnmadd132ss (%rcx), %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x62,0x75,0x08,0x9d,0x09]
          vfnmadd132ss (%rcx), %xmm1, %xmm25

// CHECK: vfnmadd132ss 291(%rax,%r14,8), %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x22,0x75,0x08,0x9d,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd132ss 291(%rax,%r14,8), %xmm1, %xmm25

// CHECK: vfnmadd132ss 508(%rdx), %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x62,0x75,0x08,0x9d,0x4a,0x7f]
          vfnmadd132ss 508(%rdx), %xmm1, %xmm25

// CHECK: vfnmadd132ss 512(%rdx), %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x62,0x75,0x08,0x9d,0x8a,0x00,0x02,0x00,0x00]
          vfnmadd132ss 512(%rdx), %xmm1, %xmm25

// CHECK: vfnmadd132ss -512(%rdx), %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x62,0x75,0x08,0x9d,0x4a,0x80]
          vfnmadd132ss -512(%rdx), %xmm1, %xmm25

// CHECK: vfnmadd132ss -516(%rdx), %xmm1, %xmm25
// CHECK:  encoding: [0x62,0x62,0x75,0x08,0x9d,0x8a,0xfc,0xfd,0xff,0xff]
          vfnmadd132ss -516(%rdx), %xmm1, %xmm25

// CHECK: vfnmadd132sd %xmm11, %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xc2,0xe5,0x08,0x9d,0xdb]
          vfnmadd132sd %xmm11, %xmm3, %xmm19

// CHECK: vfnmadd132sd %xmm11, %xmm3, %xmm19 {%k2}
// CHECK:  encoding: [0x62,0xc2,0xe5,0x0a,0x9d,0xdb]
          vfnmadd132sd %xmm11, %xmm3, %xmm19 {%k2}

// CHECK: vfnmadd132sd %xmm11, %xmm3, %xmm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xc2,0xe5,0x8a,0x9d,0xdb]
          vfnmadd132sd %xmm11, %xmm3, %xmm19 {%k2} {z}

// CHECK: vfnmadd132sd {rn-sae}, %xmm11, %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xc2,0xe5,0x18,0x9d,0xdb]
          vfnmadd132sd {rn-sae}, %xmm11, %xmm3, %xmm19

// CHECK: vfnmadd132sd {ru-sae}, %xmm11, %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xc2,0xe5,0x58,0x9d,0xdb]
          vfnmadd132sd {ru-sae}, %xmm11, %xmm3, %xmm19

// CHECK: vfnmadd132sd {rd-sae}, %xmm11, %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xc2,0xe5,0x38,0x9d,0xdb]
          vfnmadd132sd {rd-sae}, %xmm11, %xmm3, %xmm19

// CHECK: vfnmadd132sd {rz-sae}, %xmm11, %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xc2,0xe5,0x78,0x9d,0xdb]
          vfnmadd132sd {rz-sae}, %xmm11, %xmm3, %xmm19

// CHECK: vfnmadd132sd (%rcx), %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x08,0x9d,0x19]
          vfnmadd132sd (%rcx), %xmm3, %xmm19

// CHECK: vfnmadd132sd 291(%rax,%r14,8), %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xe5,0x08,0x9d,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd132sd 291(%rax,%r14,8), %xmm3, %xmm19

// CHECK: vfnmadd132sd 1016(%rdx), %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x08,0x9d,0x5a,0x7f]
          vfnmadd132sd 1016(%rdx), %xmm3, %xmm19

// CHECK: vfnmadd132sd 1024(%rdx), %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x08,0x9d,0x9a,0x00,0x04,0x00,0x00]
          vfnmadd132sd 1024(%rdx), %xmm3, %xmm19

// CHECK: vfnmadd132sd -1024(%rdx), %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x08,0x9d,0x5a,0x80]
          vfnmadd132sd -1024(%rdx), %xmm3, %xmm19

// CHECK: vfnmadd132sd -1032(%rdx), %xmm3, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x08,0x9d,0x9a,0xf8,0xfb,0xff,0xff]
          vfnmadd132sd -1032(%rdx), %xmm3, %xmm19

// CHECK: vfnmadd213ss %xmm28, %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x02,0x45,0x08,0xad,0xec]
          vfnmadd213ss %xmm28, %xmm7, %xmm29

// CHECK: vfnmadd213ss %xmm28, %xmm7, %xmm29 {%k2}
// CHECK:  encoding: [0x62,0x02,0x45,0x0a,0xad,0xec]
          vfnmadd213ss %xmm28, %xmm7, %xmm29 {%k2}

// CHECK: vfnmadd213ss %xmm28, %xmm7, %xmm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x02,0x45,0x8a,0xad,0xec]
          vfnmadd213ss %xmm28, %xmm7, %xmm29 {%k2} {z}

// CHECK: vfnmadd213ss {rn-sae}, %xmm28, %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x02,0x45,0x18,0xad,0xec]
          vfnmadd213ss {rn-sae}, %xmm28, %xmm7, %xmm29

// CHECK: vfnmadd213ss {ru-sae}, %xmm28, %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x02,0x45,0x58,0xad,0xec]
          vfnmadd213ss {ru-sae}, %xmm28, %xmm7, %xmm29

// CHECK: vfnmadd213ss {rd-sae}, %xmm28, %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x02,0x45,0x38,0xad,0xec]
          vfnmadd213ss {rd-sae}, %xmm28, %xmm7, %xmm29

// CHECK: vfnmadd213ss {rz-sae}, %xmm28, %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x02,0x45,0x78,0xad,0xec]
          vfnmadd213ss {rz-sae}, %xmm28, %xmm7, %xmm29

// CHECK: vfnmadd213ss (%rcx), %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x62,0x45,0x08,0xad,0x29]
          vfnmadd213ss (%rcx), %xmm7, %xmm29

// CHECK: vfnmadd213ss 291(%rax,%r14,8), %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x22,0x45,0x08,0xad,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd213ss 291(%rax,%r14,8), %xmm7, %xmm29

// CHECK: vfnmadd213ss 508(%rdx), %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x62,0x45,0x08,0xad,0x6a,0x7f]
          vfnmadd213ss 508(%rdx), %xmm7, %xmm29

// CHECK: vfnmadd213ss 512(%rdx), %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x62,0x45,0x08,0xad,0xaa,0x00,0x02,0x00,0x00]
          vfnmadd213ss 512(%rdx), %xmm7, %xmm29

// CHECK: vfnmadd213ss -512(%rdx), %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x62,0x45,0x08,0xad,0x6a,0x80]
          vfnmadd213ss -512(%rdx), %xmm7, %xmm29

// CHECK: vfnmadd213ss -516(%rdx), %xmm7, %xmm29
// CHECK:  encoding: [0x62,0x62,0x45,0x08,0xad,0xaa,0xfc,0xfd,0xff,0xff]
          vfnmadd213ss -516(%rdx), %xmm7, %xmm29

// CHECK: vfnmadd213sd %xmm2, %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x00,0xad,0xea]
          vfnmadd213sd %xmm2, %xmm27, %xmm13

// CHECK: vfnmadd213sd %xmm2, %xmm27, %xmm13 {%k7}
// CHECK:  encoding: [0x62,0x72,0xa5,0x07,0xad,0xea]
          vfnmadd213sd %xmm2, %xmm27, %xmm13 {%k7}

// CHECK: vfnmadd213sd %xmm2, %xmm27, %xmm13 {%k7} {z}
// CHECK:  encoding: [0x62,0x72,0xa5,0x87,0xad,0xea]
          vfnmadd213sd %xmm2, %xmm27, %xmm13 {%k7} {z}

// CHECK: vfnmadd213sd {rn-sae}, %xmm2, %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x10,0xad,0xea]
          vfnmadd213sd {rn-sae}, %xmm2, %xmm27, %xmm13

// CHECK: vfnmadd213sd {ru-sae}, %xmm2, %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x50,0xad,0xea]
          vfnmadd213sd {ru-sae}, %xmm2, %xmm27, %xmm13

// CHECK: vfnmadd213sd {rd-sae}, %xmm2, %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x30,0xad,0xea]
          vfnmadd213sd {rd-sae}, %xmm2, %xmm27, %xmm13

// CHECK: vfnmadd213sd {rz-sae}, %xmm2, %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x70,0xad,0xea]
          vfnmadd213sd {rz-sae}, %xmm2, %xmm27, %xmm13

// CHECK: vfnmadd213sd (%rcx), %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x00,0xad,0x29]
          vfnmadd213sd (%rcx), %xmm27, %xmm13

// CHECK: vfnmadd213sd 291(%rax,%r14,8), %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x32,0xa5,0x00,0xad,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd213sd 291(%rax,%r14,8), %xmm27, %xmm13

// CHECK: vfnmadd213sd 1016(%rdx), %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x00,0xad,0x6a,0x7f]
          vfnmadd213sd 1016(%rdx), %xmm27, %xmm13

// CHECK: vfnmadd213sd 1024(%rdx), %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x00,0xad,0xaa,0x00,0x04,0x00,0x00]
          vfnmadd213sd 1024(%rdx), %xmm27, %xmm13

// CHECK: vfnmadd213sd -1024(%rdx), %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x00,0xad,0x6a,0x80]
          vfnmadd213sd -1024(%rdx), %xmm27, %xmm13

// CHECK: vfnmadd213sd -1032(%rdx), %xmm27, %xmm13
// CHECK:  encoding: [0x62,0x72,0xa5,0x00,0xad,0xaa,0xf8,0xfb,0xff,0xff]
          vfnmadd213sd -1032(%rdx), %xmm27, %xmm13

// CHECK: vfnmadd231ss %xmm17, %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x22,0x6d,0x08,0xbd,0xd9]
          vfnmadd231ss %xmm17, %xmm2, %xmm27

// CHECK: vfnmadd231ss %xmm17, %xmm2, %xmm27 {%k1}
// CHECK:  encoding: [0x62,0x22,0x6d,0x09,0xbd,0xd9]
          vfnmadd231ss %xmm17, %xmm2, %xmm27 {%k1}

// CHECK: vfnmadd231ss %xmm17, %xmm2, %xmm27 {%k1} {z}
// CHECK:  encoding: [0x62,0x22,0x6d,0x89,0xbd,0xd9]
          vfnmadd231ss %xmm17, %xmm2, %xmm27 {%k1} {z}

// CHECK: vfnmadd231ss {rn-sae}, %xmm17, %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x22,0x6d,0x18,0xbd,0xd9]
          vfnmadd231ss {rn-sae}, %xmm17, %xmm2, %xmm27

// CHECK: vfnmadd231ss {ru-sae}, %xmm17, %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x22,0x6d,0x58,0xbd,0xd9]
          vfnmadd231ss {ru-sae}, %xmm17, %xmm2, %xmm27

// CHECK: vfnmadd231ss {rd-sae}, %xmm17, %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x22,0x6d,0x38,0xbd,0xd9]
          vfnmadd231ss {rd-sae}, %xmm17, %xmm2, %xmm27

// CHECK: vfnmadd231ss {rz-sae}, %xmm17, %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x22,0x6d,0x78,0xbd,0xd9]
          vfnmadd231ss {rz-sae}, %xmm17, %xmm2, %xmm27

// CHECK: vfnmadd231ss (%rcx), %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x62,0x6d,0x08,0xbd,0x19]
          vfnmadd231ss (%rcx), %xmm2, %xmm27

// CHECK: vfnmadd231ss 291(%rax,%r14,8), %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x22,0x6d,0x08,0xbd,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd231ss 291(%rax,%r14,8), %xmm2, %xmm27

// CHECK: vfnmadd231ss 508(%rdx), %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x62,0x6d,0x08,0xbd,0x5a,0x7f]
          vfnmadd231ss 508(%rdx), %xmm2, %xmm27

// CHECK: vfnmadd231ss 512(%rdx), %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x62,0x6d,0x08,0xbd,0x9a,0x00,0x02,0x00,0x00]
          vfnmadd231ss 512(%rdx), %xmm2, %xmm27

// CHECK: vfnmadd231ss -512(%rdx), %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x62,0x6d,0x08,0xbd,0x5a,0x80]
          vfnmadd231ss -512(%rdx), %xmm2, %xmm27

// CHECK: vfnmadd231ss -516(%rdx), %xmm2, %xmm27
// CHECK:  encoding: [0x62,0x62,0x6d,0x08,0xbd,0x9a,0xfc,0xfd,0xff,0xff]
          vfnmadd231ss -516(%rdx), %xmm2, %xmm27

// CHECK: vfnmadd231sd %xmm18, %xmm11, %xmm6
// CHECK:  encoding: [0x62,0xb2,0xa5,0x08,0xbd,0xf2]
          vfnmadd231sd %xmm18, %xmm11, %xmm6

// CHECK: vfnmadd231sd %xmm18, %xmm11, %xmm6 {%k3}
// CHECK:  encoding: [0x62,0xb2,0xa5,0x0b,0xbd,0xf2]
          vfnmadd231sd %xmm18, %xmm11, %xmm6 {%k3}

// CHECK: vfnmadd231sd %xmm18, %xmm11, %xmm6 {%k3} {z}
// CHECK:  encoding: [0x62,0xb2,0xa5,0x8b,0xbd,0xf2]
          vfnmadd231sd %xmm18, %xmm11, %xmm6 {%k3} {z}

// CHECK: vfnmadd231sd {rn-sae}, %xmm18, %xmm11, %xmm6
// CHECK:  encoding: [0x62,0xb2,0xa5,0x18,0xbd,0xf2]
          vfnmadd231sd {rn-sae}, %xmm18, %xmm11, %xmm6

// CHECK: vfnmadd231sd {ru-sae}, %xmm18, %xmm11, %xmm6
// CHECK:  encoding: [0x62,0xb2,0xa5,0x58,0xbd,0xf2]
          vfnmadd231sd {ru-sae}, %xmm18, %xmm11, %xmm6

// CHECK: vfnmadd231sd {rd-sae}, %xmm18, %xmm11, %xmm6
// CHECK:  encoding: [0x62,0xb2,0xa5,0x38,0xbd,0xf2]
          vfnmadd231sd {rd-sae}, %xmm18, %xmm11, %xmm6

// CHECK: vfnmadd231sd {rz-sae}, %xmm18, %xmm11, %xmm6
// CHECK:  encoding: [0x62,0xb2,0xa5,0x78,0xbd,0xf2]
          vfnmadd231sd {rz-sae}, %xmm18, %xmm11, %xmm6

// CHECK: vfnmadd231sd  (%rcx), %xmm11, %xmm26 
// CHECK: encoding: [0x62,0x62,0xa5,0x08,0xbd,0x11]
          vfnmadd231sd  (%rcx), %xmm11, %xmm26 

// CHECK: vfnmadd231sd  291(%rax,%r14,8), %xmm11, %xmm26 
// CHECK: encoding: [0x62,0x22,0xa5,0x08,0xbd,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd231sd  291(%rax,%r14,8), %xmm11, %xmm26 

// CHECK: vfnmadd231sd  1016(%rdx), %xmm11, %xmm26 
// CHECK: encoding: [0x62,0x62,0xa5,0x08,0xbd,0x52,0x7f]
          vfnmadd231sd  1016(%rdx), %xmm11, %xmm26 

// CHECK: vfnmadd231sd  1024(%rdx), %xmm11, %xmm26 
// CHECK: encoding: [0x62,0x62,0xa5,0x08,0xbd,0x92,0x00,0x04,0x00,0x00]
          vfnmadd231sd  1024(%rdx), %xmm11, %xmm26 

// CHECK: vfnmadd231sd  -1024(%rdx), %xmm11, %xmm26 
// CHECK: encoding: [0x62,0x62,0xa5,0x08,0xbd,0x52,0x80]
          vfnmadd231sd  -1024(%rdx), %xmm11, %xmm26 

// CHECK: vfnmadd231sd  -1032(%rdx), %xmm11, %xmm26 
// CHECK: encoding: [0x62,0x62,0xa5,0x08,0xbd,0x92,0xf8,0xfb,0xff,0xff]
          vfnmadd231sd  -1032(%rdx), %xmm11, %xmm26 

// CHECK: vfnmsub132ss %xmm24, %xmm22, %xmm23
// CHECK:  encoding: [0x62,0x82,0x4d,0x00,0x9f,0xf8]
          vfnmsub132ss %xmm24, %xmm22, %xmm23

// CHECK: vfnmsub132ss %xmm24, %xmm22, %xmm23 {%k6}
// CHECK:  encoding: [0x62,0x82,0x4d,0x06,0x9f,0xf8]
          vfnmsub132ss %xmm24, %xmm22, %xmm23 {%k6}

// CHECK: vfnmsub132ss %xmm24, %xmm22, %xmm23 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0x4d,0x86,0x9f,0xf8]
          vfnmsub132ss %xmm24, %xmm22, %xmm23 {%k6} {z}

// CHECK: vfnmsub132ss {rn-sae}, %xmm24, %xmm22, %xmm23
// CHECK:  encoding: [0x62,0x82,0x4d,0x10,0x9f,0xf8]
          vfnmsub132ss {rn-sae}, %xmm24, %xmm22, %xmm23

// CHECK: vfnmsub132ss {ru-sae}, %xmm24, %xmm22, %xmm23
// CHECK:  encoding: [0x62,0x82,0x4d,0x50,0x9f,0xf8]
          vfnmsub132ss {ru-sae}, %xmm24, %xmm22, %xmm23

// CHECK: vfnmsub132ss {rd-sae}, %xmm24, %xmm22, %xmm23
// CHECK:  encoding: [0x62,0x82,0x4d,0x30,0x9f,0xf8]
          vfnmsub132ss {rd-sae}, %xmm24, %xmm22, %xmm23

// CHECK: vfnmsub132ss {rz-sae}, %xmm24, %xmm22, %xmm23
// CHECK:  encoding: [0x62,0x82,0x4d,0x70,0x9f,0xf8]
          vfnmsub132ss {rz-sae}, %xmm24, %xmm22, %xmm23

// CHECK: vfnmsub132ss (%rcx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x9f,0x39]
          vfnmsub132ss (%rcx), %xmm22, %xmm23

// CHECK: vfnmsub132ss 291(%rax,%r14,8), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x4d,0x00,0x9f,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub132ss 291(%rax,%r14,8), %xmm22, %xmm23

// CHECK: vfnmsub132ss 508(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x9f,0x7a,0x7f]
          vfnmsub132ss 508(%rdx), %xmm22, %xmm23

// CHECK: vfnmsub132ss 512(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x9f,0xba,0x00,0x02,0x00,0x00]
          vfnmsub132ss 512(%rdx), %xmm22, %xmm23

// CHECK: vfnmsub132ss -512(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x9f,0x7a,0x80]
          vfnmsub132ss -512(%rdx), %xmm22, %xmm23

// CHECK: vfnmsub132ss -516(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x9f,0xba,0xfc,0xfd,0xff,0xff]
          vfnmsub132ss -516(%rdx), %xmm22, %xmm23

// CHECK: vfnmsub132sd %xmm13, %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x42,0xa5,0x08,0x9f,0xd5]
          vfnmsub132sd %xmm13, %xmm11, %xmm26

// CHECK: vfnmsub132sd %xmm13, %xmm11, %xmm26 {%k6}
// CHECK:  encoding: [0x62,0x42,0xa5,0x0e,0x9f,0xd5]
          vfnmsub132sd %xmm13, %xmm11, %xmm26 {%k6}

// CHECK: vfnmsub132sd %xmm13, %xmm11, %xmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x42,0xa5,0x8e,0x9f,0xd5]
          vfnmsub132sd %xmm13, %xmm11, %xmm26 {%k6} {z}

// CHECK: vfnmsub132sd {rn-sae}, %xmm13, %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x42,0xa5,0x18,0x9f,0xd5]
          vfnmsub132sd {rn-sae}, %xmm13, %xmm11, %xmm26

// CHECK: vfnmsub132sd {ru-sae}, %xmm13, %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x42,0xa5,0x58,0x9f,0xd5]
          vfnmsub132sd {ru-sae}, %xmm13, %xmm11, %xmm26

// CHECK: vfnmsub132sd {rd-sae}, %xmm13, %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x42,0xa5,0x38,0x9f,0xd5]
          vfnmsub132sd {rd-sae}, %xmm13, %xmm11, %xmm26

// CHECK: vfnmsub132sd {rz-sae}, %xmm13, %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x42,0xa5,0x78,0x9f,0xd5]
          vfnmsub132sd {rz-sae}, %xmm13, %xmm11, %xmm26

// CHECK: vfnmsub132sd (%rcx), %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x08,0x9f,0x11]
          vfnmsub132sd (%rcx), %xmm11, %xmm26

// CHECK: vfnmsub132sd 291(%rax,%r14,8), %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x22,0xa5,0x08,0x9f,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub132sd 291(%rax,%r14,8), %xmm11, %xmm26

// CHECK: vfnmsub132sd 1016(%rdx), %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x08,0x9f,0x52,0x7f]
          vfnmsub132sd 1016(%rdx), %xmm11, %xmm26

// CHECK: vfnmsub132sd 1024(%rdx), %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x08,0x9f,0x92,0x00,0x04,0x00,0x00]
          vfnmsub132sd 1024(%rdx), %xmm11, %xmm26

// CHECK: vfnmsub132sd -1024(%rdx), %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x08,0x9f,0x52,0x80]
          vfnmsub132sd -1024(%rdx), %xmm11, %xmm26

// CHECK: vfnmsub132sd -1032(%rdx), %xmm11, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x08,0x9f,0x92,0xf8,0xfb,0xff,0xff]
          vfnmsub132sd -1032(%rdx), %xmm11, %xmm26

// CHECK: vfnmsub213ss %xmm12, %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x52,0x1d,0x00,0xaf,0xf4]
          vfnmsub213ss %xmm12, %xmm28, %xmm14

// CHECK: vfnmsub213ss %xmm12, %xmm28, %xmm14 {%k4}
// CHECK:  encoding: [0x62,0x52,0x1d,0x04,0xaf,0xf4]
          vfnmsub213ss %xmm12, %xmm28, %xmm14 {%k4}

// CHECK: vfnmsub213ss %xmm12, %xmm28, %xmm14 {%k4} {z}
// CHECK:  encoding: [0x62,0x52,0x1d,0x84,0xaf,0xf4]
          vfnmsub213ss %xmm12, %xmm28, %xmm14 {%k4} {z}

// CHECK: vfnmsub213ss {rn-sae}, %xmm12, %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x52,0x1d,0x10,0xaf,0xf4]
          vfnmsub213ss {rn-sae}, %xmm12, %xmm28, %xmm14

// CHECK: vfnmsub213ss {ru-sae}, %xmm12, %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x52,0x1d,0x50,0xaf,0xf4]
          vfnmsub213ss {ru-sae}, %xmm12, %xmm28, %xmm14

// CHECK: vfnmsub213ss {rd-sae}, %xmm12, %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x52,0x1d,0x30,0xaf,0xf4]
          vfnmsub213ss {rd-sae}, %xmm12, %xmm28, %xmm14

// CHECK: vfnmsub213ss {rz-sae}, %xmm12, %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x52,0x1d,0x70,0xaf,0xf4]
          vfnmsub213ss {rz-sae}, %xmm12, %xmm28, %xmm14

// CHECK: vfnmsub213ss (%rcx), %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x72,0x1d,0x00,0xaf,0x31]
          vfnmsub213ss (%rcx), %xmm28, %xmm14

// CHECK: vfnmsub213ss 291(%rax,%r14,8), %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x32,0x1d,0x00,0xaf,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub213ss 291(%rax,%r14,8), %xmm28, %xmm14

// CHECK: vfnmsub213ss 508(%rdx), %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x72,0x1d,0x00,0xaf,0x72,0x7f]
          vfnmsub213ss 508(%rdx), %xmm28, %xmm14

// CHECK: vfnmsub213ss 512(%rdx), %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x72,0x1d,0x00,0xaf,0xb2,0x00,0x02,0x00,0x00]
          vfnmsub213ss 512(%rdx), %xmm28, %xmm14

// CHECK: vfnmsub213ss -512(%rdx), %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x72,0x1d,0x00,0xaf,0x72,0x80]
          vfnmsub213ss -512(%rdx), %xmm28, %xmm14

// CHECK: vfnmsub213ss -516(%rdx), %xmm28, %xmm14
// CHECK:  encoding: [0x62,0x72,0x1d,0x00,0xaf,0xb2,0xfc,0xfd,0xff,0xff]
          vfnmsub213ss -516(%rdx), %xmm28, %xmm14

// CHECK: vfnmsub213sd %xmm28, %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x02,0xc5,0x00,0xaf,0xec]
          vfnmsub213sd %xmm28, %xmm23, %xmm29

// CHECK: vfnmsub213sd %xmm28, %xmm23, %xmm29 {%k3}
// CHECK:  encoding: [0x62,0x02,0xc5,0x03,0xaf,0xec]
          vfnmsub213sd %xmm28, %xmm23, %xmm29 {%k3}

// CHECK: vfnmsub213sd %xmm28, %xmm23, %xmm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0xc5,0x83,0xaf,0xec]
          vfnmsub213sd %xmm28, %xmm23, %xmm29 {%k3} {z}

// CHECK: vfnmsub213sd {rn-sae}, %xmm28, %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x02,0xc5,0x10,0xaf,0xec]
          vfnmsub213sd {rn-sae}, %xmm28, %xmm23, %xmm29

// CHECK: vfnmsub213sd {ru-sae}, %xmm28, %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x02,0xc5,0x50,0xaf,0xec]
          vfnmsub213sd {ru-sae}, %xmm28, %xmm23, %xmm29

// CHECK: vfnmsub213sd {rd-sae}, %xmm28, %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x02,0xc5,0x30,0xaf,0xec]
          vfnmsub213sd {rd-sae}, %xmm28, %xmm23, %xmm29

// CHECK: vfnmsub213sd {rz-sae}, %xmm28, %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x02,0xc5,0x70,0xaf,0xec]
          vfnmsub213sd {rz-sae}, %xmm28, %xmm23, %xmm29

// CHECK: vfnmsub213sd (%rcx), %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x62,0xc5,0x00,0xaf,0x29]
          vfnmsub213sd (%rcx), %xmm23, %xmm29

// CHECK: vfnmsub213sd 291(%rax,%r14,8), %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x22,0xc5,0x00,0xaf,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub213sd 291(%rax,%r14,8), %xmm23, %xmm29

// CHECK: vfnmsub213sd 1016(%rdx), %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x62,0xc5,0x00,0xaf,0x6a,0x7f]
          vfnmsub213sd 1016(%rdx), %xmm23, %xmm29

// CHECK: vfnmsub213sd 1024(%rdx), %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x62,0xc5,0x00,0xaf,0xaa,0x00,0x04,0x00,0x00]
          vfnmsub213sd 1024(%rdx), %xmm23, %xmm29

// CHECK: vfnmsub213sd -1024(%rdx), %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x62,0xc5,0x00,0xaf,0x6a,0x80]
          vfnmsub213sd -1024(%rdx), %xmm23, %xmm29

// CHECK: vfnmsub213sd -1032(%rdx), %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x62,0xc5,0x00,0xaf,0xaa,0xf8,0xfb,0xff,0xff]
          vfnmsub213sd -1032(%rdx), %xmm23, %xmm29

// CHECK: vfnmsub231ss %xmm10, %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x42,0x15,0x08,0xbf,0xd2]
          vfnmsub231ss %xmm10, %xmm13, %xmm26

// CHECK: vfnmsub231ss %xmm10, %xmm13, %xmm26 {%k4}
// CHECK:  encoding: [0x62,0x42,0x15,0x0c,0xbf,0xd2]
          vfnmsub231ss %xmm10, %xmm13, %xmm26 {%k4}

// CHECK: vfnmsub231ss %xmm10, %xmm13, %xmm26 {%k4} {z}
// CHECK:  encoding: [0x62,0x42,0x15,0x8c,0xbf,0xd2]
          vfnmsub231ss %xmm10, %xmm13, %xmm26 {%k4} {z}

// CHECK: vfnmsub231ss {rn-sae}, %xmm10, %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x42,0x15,0x18,0xbf,0xd2]
          vfnmsub231ss {rn-sae}, %xmm10, %xmm13, %xmm26

// CHECK: vfnmsub231ss {ru-sae}, %xmm10, %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x42,0x15,0x58,0xbf,0xd2]
          vfnmsub231ss {ru-sae}, %xmm10, %xmm13, %xmm26

// CHECK: vfnmsub231ss {rd-sae}, %xmm10, %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x42,0x15,0x38,0xbf,0xd2]
          vfnmsub231ss {rd-sae}, %xmm10, %xmm13, %xmm26

// CHECK: vfnmsub231ss {rz-sae}, %xmm10, %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x42,0x15,0x78,0xbf,0xd2]
          vfnmsub231ss {rz-sae}, %xmm10, %xmm13, %xmm26

// CHECK: vfnmsub231ss (%rcx), %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xbf,0x11]
          vfnmsub231ss (%rcx), %xmm13, %xmm26

// CHECK: vfnmsub231ss 291(%rax,%r14,8), %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x22,0x15,0x08,0xbf,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub231ss 291(%rax,%r14,8), %xmm13, %xmm26

// CHECK: vfnmsub231ss 508(%rdx), %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xbf,0x52,0x7f]
          vfnmsub231ss 508(%rdx), %xmm13, %xmm26

// CHECK: vfnmsub231ss 512(%rdx), %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xbf,0x92,0x00,0x02,0x00,0x00]
          vfnmsub231ss 512(%rdx), %xmm13, %xmm26

// CHECK: vfnmsub231ss -512(%rdx), %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xbf,0x52,0x80]
          vfnmsub231ss -512(%rdx), %xmm13, %xmm26

// CHECK: vfnmsub231ss -516(%rdx), %xmm13, %xmm26
// CHECK:  encoding: [0x62,0x62,0x15,0x08,0xbf,0x92,0xfc,0xfd,0xff,0xff]
          vfnmsub231ss -516(%rdx), %xmm13, %xmm26

// CHECK: vfnmsub231sd %xmm14, %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xdd,0x00,0xbf,0xf6]
          vfnmsub231sd %xmm14, %xmm20, %xmm6

// CHECK: vfnmsub231sd %xmm14, %xmm20, %xmm6 {%k1}
// CHECK:  encoding: [0x62,0xd2,0xdd,0x01,0xbf,0xf6]
          vfnmsub231sd %xmm14, %xmm20, %xmm6 {%k1}

// CHECK: vfnmsub231sd %xmm14, %xmm20, %xmm6 {%k1} {z}
// CHECK:  encoding: [0x62,0xd2,0xdd,0x81,0xbf,0xf6]
          vfnmsub231sd %xmm14, %xmm20, %xmm6 {%k1} {z}

// CHECK: vfnmsub231sd {rn-sae}, %xmm14, %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xdd,0x10,0xbf,0xf6]
          vfnmsub231sd {rn-sae}, %xmm14, %xmm20, %xmm6

// CHECK: vfnmsub231sd {ru-sae}, %xmm14, %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xdd,0x50,0xbf,0xf6]
          vfnmsub231sd {ru-sae}, %xmm14, %xmm20, %xmm6

// CHECK: vfnmsub231sd {rd-sae}, %xmm14, %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xdd,0x30,0xbf,0xf6]
          vfnmsub231sd {rd-sae}, %xmm14, %xmm20, %xmm6

// CHECK: vfnmsub231sd {rz-sae}, %xmm14, %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xd2,0xdd,0x70,0xbf,0xf6]
          vfnmsub231sd {rz-sae}, %xmm14, %xmm20, %xmm6

// CHECK: vfnmsub231sd (%rcx), %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0xbf,0x31]
          vfnmsub231sd (%rcx), %xmm20, %xmm6

// CHECK: vfnmsub231sd 291(%rax,%r14,8), %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xb2,0xdd,0x00,0xbf,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub231sd 291(%rax,%r14,8), %xmm20, %xmm6

// CHECK: vfnmsub231sd 1016(%rdx), %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0xbf,0x72,0x7f]
          vfnmsub231sd 1016(%rdx), %xmm20, %xmm6

// CHECK: vfnmsub231sd 1024(%rdx), %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0xbf,0xb2,0x00,0x04,0x00,0x00]
          vfnmsub231sd 1024(%rdx), %xmm20, %xmm6

// CHECK: vfnmsub231sd -1024(%rdx), %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0xbf,0x72,0x80]
          vfnmsub231sd -1024(%rdx), %xmm20, %xmm6

// CHECK: vfnmsub231sd -1032(%rdx), %xmm20, %xmm6
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0xbf,0xb2,0xf8,0xfb,0xff,0xff]
          vfnmsub231sd -1032(%rdx), %xmm20, %xmm6

// CHECK: vunpckhps %zmm16, %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xb1,0x0c,0x48,0x15,0xe8]
          vunpckhps %zmm16, %zmm14, %zmm5

// CHECK: vunpckhps %zmm16, %zmm14, %zmm5 {%k6}
// CHECK:  encoding: [0x62,0xb1,0x0c,0x4e,0x15,0xe8]
          vunpckhps %zmm16, %zmm14, %zmm5 {%k6}

// CHECK: vunpckhps %zmm16, %zmm14, %zmm5 {%k6} {z}
// CHECK:  encoding: [0x62,0xb1,0x0c,0xce,0x15,0xe8]
          vunpckhps %zmm16, %zmm14, %zmm5 {%k6} {z}

// CHECK: vunpckhps (%rcx), %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x48,0x15,0x29]
          vunpckhps (%rcx), %zmm14, %zmm5

// CHECK: vunpckhps 291(%rax,%r14,8), %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xb1,0x0c,0x48,0x15,0xac,0xf0,0x23,0x01,0x00,0x00]
          vunpckhps 291(%rax,%r14,8), %zmm14, %zmm5

// CHECK: vunpckhps (%rcx){1to16}, %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x58,0x15,0x29]
          vunpckhps (%rcx){1to16}, %zmm14, %zmm5

// CHECK: vunpckhps 8128(%rdx), %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x48,0x15,0x6a,0x7f]
          vunpckhps 8128(%rdx), %zmm14, %zmm5

// CHECK: vunpckhps 8192(%rdx), %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x48,0x15,0xaa,0x00,0x20,0x00,0x00]
          vunpckhps 8192(%rdx), %zmm14, %zmm5

// CHECK: vunpckhps -8192(%rdx), %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x48,0x15,0x6a,0x80]
          vunpckhps -8192(%rdx), %zmm14, %zmm5

// CHECK: vunpckhps -8256(%rdx), %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x48,0x15,0xaa,0xc0,0xdf,0xff,0xff]
          vunpckhps -8256(%rdx), %zmm14, %zmm5

// CHECK: vunpckhps 508(%rdx){1to16}, %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x58,0x15,0x6a,0x7f]
          vunpckhps 508(%rdx){1to16}, %zmm14, %zmm5

// CHECK: vunpckhps 512(%rdx){1to16}, %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x58,0x15,0xaa,0x00,0x02,0x00,0x00]
          vunpckhps 512(%rdx){1to16}, %zmm14, %zmm5

// CHECK: vunpckhps -512(%rdx){1to16}, %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x58,0x15,0x6a,0x80]
          vunpckhps -512(%rdx){1to16}, %zmm14, %zmm5

// CHECK: vunpckhps -516(%rdx){1to16}, %zmm14, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x0c,0x58,0x15,0xaa,0xfc,0xfd,0xff,0xff]
          vunpckhps -516(%rdx){1to16}, %zmm14, %zmm5

// CHECK: vunpcklps %zmm2, %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x14,0xca]
          vunpcklps %zmm2, %zmm3, %zmm1

// CHECK: vunpcklps %zmm2, %zmm3, %zmm1 {%k3}
// CHECK:  encoding: [0x62,0xf1,0x64,0x4b,0x14,0xca]
          vunpcklps %zmm2, %zmm3, %zmm1 {%k3}

// CHECK: vunpcklps %zmm2, %zmm3, %zmm1 {%k3} {z}
// CHECK:  encoding: [0x62,0xf1,0x64,0xcb,0x14,0xca]
          vunpcklps %zmm2, %zmm3, %zmm1 {%k3} {z}

// CHECK: vunpcklps (%rcx), %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x14,0x09]
          vunpcklps (%rcx), %zmm3, %zmm1

// CHECK: vunpcklps 291(%rax,%r14,8), %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xb1,0x64,0x48,0x14,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vunpcklps 291(%rax,%r14,8), %zmm3, %zmm1

// CHECK: vunpcklps (%rcx){1to16}, %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x14,0x09]
          vunpcklps (%rcx){1to16}, %zmm3, %zmm1

// CHECK: vunpcklps 8128(%rdx), %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x14,0x4a,0x7f]
          vunpcklps 8128(%rdx), %zmm3, %zmm1

// CHECK: vunpcklps 8192(%rdx), %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x14,0x8a,0x00,0x20,0x00,0x00]
          vunpcklps 8192(%rdx), %zmm3, %zmm1

// CHECK: vunpcklps -8192(%rdx), %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x14,0x4a,0x80]
          vunpcklps -8192(%rdx), %zmm3, %zmm1

// CHECK: vunpcklps -8256(%rdx), %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x48,0x14,0x8a,0xc0,0xdf,0xff,0xff]
          vunpcklps -8256(%rdx), %zmm3, %zmm1

// CHECK: vunpcklps 508(%rdx){1to16}, %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x14,0x4a,0x7f]
          vunpcklps 508(%rdx){1to16}, %zmm3, %zmm1

// CHECK: vunpcklps 512(%rdx){1to16}, %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x14,0x8a,0x00,0x02,0x00,0x00]
          vunpcklps 512(%rdx){1to16}, %zmm3, %zmm1

// CHECK: vunpcklps -512(%rdx){1to16}, %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x14,0x4a,0x80]
          vunpcklps -512(%rdx){1to16}, %zmm3, %zmm1

// CHECK: vunpcklps -516(%rdx){1to16}, %zmm3, %zmm1
// CHECK:  encoding: [0x62,0xf1,0x64,0x58,0x14,0x8a,0xfc,0xfd,0xff,0xff]
          vunpcklps -516(%rdx){1to16}, %zmm3, %zmm1

// CHECK: vunpckhpd %zmm26, %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x01,0xe5,0x40,0x15,0xca]
          vunpckhpd %zmm26, %zmm19, %zmm25

// CHECK: vunpckhpd %zmm26, %zmm19, %zmm25 {%k5}
// CHECK:  encoding: [0x62,0x01,0xe5,0x45,0x15,0xca]
          vunpckhpd %zmm26, %zmm19, %zmm25 {%k5}

// CHECK: vunpckhpd %zmm26, %zmm19, %zmm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0xe5,0xc5,0x15,0xca]
          vunpckhpd %zmm26, %zmm19, %zmm25 {%k5} {z}

// CHECK: vunpckhpd (%rcx), %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x40,0x15,0x09]
          vunpckhpd (%rcx), %zmm19, %zmm25

// CHECK: vunpckhpd 291(%rax,%r14,8), %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x21,0xe5,0x40,0x15,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vunpckhpd 291(%rax,%r14,8), %zmm19, %zmm25

// CHECK: vunpckhpd (%rcx){1to8}, %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x50,0x15,0x09]
          vunpckhpd (%rcx){1to8}, %zmm19, %zmm25

// CHECK: vunpckhpd 8128(%rdx), %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x40,0x15,0x4a,0x7f]
          vunpckhpd 8128(%rdx), %zmm19, %zmm25

// CHECK: vunpckhpd 8192(%rdx), %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x40,0x15,0x8a,0x00,0x20,0x00,0x00]
          vunpckhpd 8192(%rdx), %zmm19, %zmm25

// CHECK: vunpckhpd -8192(%rdx), %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x40,0x15,0x4a,0x80]
          vunpckhpd -8192(%rdx), %zmm19, %zmm25

// CHECK: vunpckhpd -8256(%rdx), %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x40,0x15,0x8a,0xc0,0xdf,0xff,0xff]
          vunpckhpd -8256(%rdx), %zmm19, %zmm25

// CHECK: vunpckhpd 1016(%rdx){1to8}, %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x50,0x15,0x4a,0x7f]
          vunpckhpd 1016(%rdx){1to8}, %zmm19, %zmm25

// CHECK: vunpckhpd 1024(%rdx){1to8}, %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x50,0x15,0x8a,0x00,0x04,0x00,0x00]
          vunpckhpd 1024(%rdx){1to8}, %zmm19, %zmm25

// CHECK: vunpckhpd -1024(%rdx){1to8}, %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x50,0x15,0x4a,0x80]
          vunpckhpd -1024(%rdx){1to8}, %zmm19, %zmm25

// CHECK: vunpckhpd -1032(%rdx){1to8}, %zmm19, %zmm25
// CHECK:  encoding: [0x62,0x61,0xe5,0x50,0x15,0x8a,0xf8,0xfb,0xff,0xff]
          vunpckhpd -1032(%rdx){1to8}, %zmm19, %zmm25

// CHECK: vunpcklpd %zmm21, %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xa1,0x95,0x40,0x14,0xd5]
          vunpcklpd %zmm21, %zmm29, %zmm18

// CHECK: vunpcklpd %zmm21, %zmm29, %zmm18 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x95,0x46,0x14,0xd5]
          vunpcklpd %zmm21, %zmm29, %zmm18 {%k6}

// CHECK: vunpcklpd %zmm21, %zmm29, %zmm18 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x95,0xc6,0x14,0xd5]
          vunpcklpd %zmm21, %zmm29, %zmm18 {%k6} {z}

// CHECK: vunpcklpd (%rcx), %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x40,0x14,0x11]
          vunpcklpd (%rcx), %zmm29, %zmm18

// CHECK: vunpcklpd 291(%rax,%r14,8), %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xa1,0x95,0x40,0x14,0x94,0xf0,0x23,0x01,0x00,0x00]
          vunpcklpd 291(%rax,%r14,8), %zmm29, %zmm18

// CHECK: vunpcklpd (%rcx){1to8}, %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x50,0x14,0x11]
          vunpcklpd (%rcx){1to8}, %zmm29, %zmm18

// CHECK: vunpcklpd 8128(%rdx), %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x40,0x14,0x52,0x7f]
          vunpcklpd 8128(%rdx), %zmm29, %zmm18

// CHECK: vunpcklpd 8192(%rdx), %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x40,0x14,0x92,0x00,0x20,0x00,0x00]
          vunpcklpd 8192(%rdx), %zmm29, %zmm18

// CHECK: vunpcklpd -8192(%rdx), %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x40,0x14,0x52,0x80]
          vunpcklpd -8192(%rdx), %zmm29, %zmm18

// CHECK: vunpcklpd -8256(%rdx), %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x40,0x14,0x92,0xc0,0xdf,0xff,0xff]
          vunpcklpd -8256(%rdx), %zmm29, %zmm18

// CHECK: vunpcklpd 1016(%rdx){1to8}, %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x50,0x14,0x52,0x7f]
          vunpcklpd 1016(%rdx){1to8}, %zmm29, %zmm18

// CHECK: vunpcklpd 1024(%rdx){1to8}, %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x50,0x14,0x92,0x00,0x04,0x00,0x00]
          vunpcklpd 1024(%rdx){1to8}, %zmm29, %zmm18

// CHECK: vunpcklpd -1024(%rdx){1to8}, %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x50,0x14,0x52,0x80]
          vunpcklpd -1024(%rdx){1to8}, %zmm29, %zmm18

// CHECK: vunpcklpd -1032(%rdx){1to8}, %zmm29, %zmm18
// CHECK:  encoding: [0x62,0xe1,0x95,0x50,0x14,0x92,0xf8,0xfb,0xff,0xff]
          vunpcklpd -1032(%rdx){1to8}, %zmm29, %zmm18

// CHECK: vpunpckldq %zmm17, %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x21,0x65,0x48,0x62,0xc1]
          vpunpckldq %zmm17, %zmm3, %zmm24

// CHECK: vpunpckldq %zmm17, %zmm3, %zmm24 {%k3}
// CHECK:  encoding: [0x62,0x21,0x65,0x4b,0x62,0xc1]
          vpunpckldq %zmm17, %zmm3, %zmm24 {%k3}

// CHECK: vpunpckldq %zmm17, %zmm3, %zmm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x65,0xcb,0x62,0xc1]
          vpunpckldq %zmm17, %zmm3, %zmm24 {%k3} {z}

// CHECK: vpunpckldq (%rcx), %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x48,0x62,0x01]
          vpunpckldq (%rcx), %zmm3, %zmm24

// CHECK: vpunpckldq 291(%rax,%r14,8), %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x21,0x65,0x48,0x62,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpunpckldq 291(%rax,%r14,8), %zmm3, %zmm24

// CHECK: vpunpckldq (%rcx){1to16}, %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x58,0x62,0x01]
          vpunpckldq (%rcx){1to16}, %zmm3, %zmm24

// CHECK: vpunpckldq 8128(%rdx), %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x48,0x62,0x42,0x7f]
          vpunpckldq 8128(%rdx), %zmm3, %zmm24

// CHECK: vpunpckldq 8192(%rdx), %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x48,0x62,0x82,0x00,0x20,0x00,0x00]
          vpunpckldq 8192(%rdx), %zmm3, %zmm24

// CHECK: vpunpckldq -8192(%rdx), %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x48,0x62,0x42,0x80]
          vpunpckldq -8192(%rdx), %zmm3, %zmm24

// CHECK: vpunpckldq -8256(%rdx), %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x48,0x62,0x82,0xc0,0xdf,0xff,0xff]
          vpunpckldq -8256(%rdx), %zmm3, %zmm24

// CHECK: vpunpckldq 508(%rdx){1to16}, %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x58,0x62,0x42,0x7f]
          vpunpckldq 508(%rdx){1to16}, %zmm3, %zmm24

// CHECK: vpunpckldq 512(%rdx){1to16}, %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x58,0x62,0x82,0x00,0x02,0x00,0x00]
          vpunpckldq 512(%rdx){1to16}, %zmm3, %zmm24

// CHECK: vpunpckldq -512(%rdx){1to16}, %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x58,0x62,0x42,0x80]
          vpunpckldq -512(%rdx){1to16}, %zmm3, %zmm24

// CHECK: vpunpckldq -516(%rdx){1to16}, %zmm3, %zmm24
// CHECK:  encoding: [0x62,0x61,0x65,0x58,0x62,0x82,0xfc,0xfd,0xff,0xff]
          vpunpckldq -516(%rdx){1to16}, %zmm3, %zmm24

// CHECK: vpunpckhdq %zmm13, %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xd1,0x5d,0x48,0x6a,0xf5]
          vpunpckhdq %zmm13, %zmm4, %zmm6

// CHECK: vpunpckhdq %zmm13, %zmm4, %zmm6 {%k5}
// CHECK:  encoding: [0x62,0xd1,0x5d,0x4d,0x6a,0xf5]
          vpunpckhdq %zmm13, %zmm4, %zmm6 {%k5}

// CHECK: vpunpckhdq %zmm13, %zmm4, %zmm6 {%k5} {z}
// CHECK:  encoding: [0x62,0xd1,0x5d,0xcd,0x6a,0xf5]
          vpunpckhdq %zmm13, %zmm4, %zmm6 {%k5} {z}

// CHECK: vpunpckhdq (%rcx), %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x48,0x6a,0x31]
          vpunpckhdq (%rcx), %zmm4, %zmm6

// CHECK: vpunpckhdq 291(%rax,%r14,8), %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xb1,0x5d,0x48,0x6a,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhdq 291(%rax,%r14,8), %zmm4, %zmm6

// CHECK: vpunpckhdq (%rcx){1to16}, %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x58,0x6a,0x31]
          vpunpckhdq (%rcx){1to16}, %zmm4, %zmm6

// CHECK: vpunpckhdq 8128(%rdx), %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x48,0x6a,0x72,0x7f]
          vpunpckhdq 8128(%rdx), %zmm4, %zmm6

// CHECK: vpunpckhdq 8192(%rdx), %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x48,0x6a,0xb2,0x00,0x20,0x00,0x00]
          vpunpckhdq 8192(%rdx), %zmm4, %zmm6

// CHECK: vpunpckhdq -8192(%rdx), %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x48,0x6a,0x72,0x80]
          vpunpckhdq -8192(%rdx), %zmm4, %zmm6

// CHECK: vpunpckhdq -8256(%rdx), %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x48,0x6a,0xb2,0xc0,0xdf,0xff,0xff]
          vpunpckhdq -8256(%rdx), %zmm4, %zmm6

// CHECK: vpunpckhdq 508(%rdx){1to16}, %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x58,0x6a,0x72,0x7f]
          vpunpckhdq 508(%rdx){1to16}, %zmm4, %zmm6

// CHECK: vpunpckhdq 512(%rdx){1to16}, %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x58,0x6a,0xb2,0x00,0x02,0x00,0x00]
          vpunpckhdq 512(%rdx){1to16}, %zmm4, %zmm6

// CHECK: vpunpckhdq -512(%rdx){1to16}, %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x58,0x6a,0x72,0x80]
          vpunpckhdq -512(%rdx){1to16}, %zmm4, %zmm6

// CHECK: vpunpckhdq -516(%rdx){1to16}, %zmm4, %zmm6
// CHECK:  encoding: [0x62,0xf1,0x5d,0x58,0x6a,0xb2,0xfc,0xfd,0xff,0xff]
          vpunpckhdq -516(%rdx){1to16}, %zmm4, %zmm6

// CHECK: vpunpcklqdq %zmm17, %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xb1,0xdd,0x48,0x6c,0xd9]
          vpunpcklqdq %zmm17, %zmm4, %zmm3

// CHECK: vpunpcklqdq %zmm17, %zmm4, %zmm3 {%k1}
// CHECK:  encoding: [0x62,0xb1,0xdd,0x49,0x6c,0xd9]
          vpunpcklqdq %zmm17, %zmm4, %zmm3 {%k1}

// CHECK: vpunpcklqdq %zmm17, %zmm4, %zmm3 {%k1} {z}
// CHECK:  encoding: [0x62,0xb1,0xdd,0xc9,0x6c,0xd9]
          vpunpcklqdq %zmm17, %zmm4, %zmm3 {%k1} {z}

// CHECK: vpunpcklqdq (%rcx), %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x48,0x6c,0x19]
          vpunpcklqdq (%rcx), %zmm4, %zmm3

// CHECK: vpunpcklqdq 291(%rax,%r14,8), %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xb1,0xdd,0x48,0x6c,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpunpcklqdq 291(%rax,%r14,8), %zmm4, %zmm3

// CHECK: vpunpcklqdq (%rcx){1to8}, %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x58,0x6c,0x19]
          vpunpcklqdq (%rcx){1to8}, %zmm4, %zmm3

// CHECK: vpunpcklqdq 8128(%rdx), %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x48,0x6c,0x5a,0x7f]
          vpunpcklqdq 8128(%rdx), %zmm4, %zmm3

// CHECK: vpunpcklqdq 8192(%rdx), %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x48,0x6c,0x9a,0x00,0x20,0x00,0x00]
          vpunpcklqdq 8192(%rdx), %zmm4, %zmm3

// CHECK: vpunpcklqdq -8192(%rdx), %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x48,0x6c,0x5a,0x80]
          vpunpcklqdq -8192(%rdx), %zmm4, %zmm3

// CHECK: vpunpcklqdq -8256(%rdx), %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x48,0x6c,0x9a,0xc0,0xdf,0xff,0xff]
          vpunpcklqdq -8256(%rdx), %zmm4, %zmm3

// CHECK: vpunpcklqdq 1016(%rdx){1to8}, %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x58,0x6c,0x5a,0x7f]
          vpunpcklqdq 1016(%rdx){1to8}, %zmm4, %zmm3

// CHECK: vpunpcklqdq 1024(%rdx){1to8}, %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x58,0x6c,0x9a,0x00,0x04,0x00,0x00]
          vpunpcklqdq 1024(%rdx){1to8}, %zmm4, %zmm3

// CHECK: vpunpcklqdq -1024(%rdx){1to8}, %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x58,0x6c,0x5a,0x80]
          vpunpcklqdq -1024(%rdx){1to8}, %zmm4, %zmm3

// CHECK: vpunpcklqdq -1032(%rdx){1to8}, %zmm4, %zmm3
// CHECK:  encoding: [0x62,0xf1,0xdd,0x58,0x6c,0x9a,0xf8,0xfb,0xff,0xff]
          vpunpcklqdq -1032(%rdx){1to8}, %zmm4, %zmm3

// CHECK: vpunpckhqdq %zmm16, %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x21,0x85,0x48,0x6d,0xd8]
          vpunpckhqdq %zmm16, %zmm15, %zmm27

// CHECK: vpunpckhqdq %zmm16, %zmm15, %zmm27 {%k3}
// CHECK:  encoding: [0x62,0x21,0x85,0x4b,0x6d,0xd8]
          vpunpckhqdq %zmm16, %zmm15, %zmm27 {%k3}

// CHECK: vpunpckhqdq %zmm16, %zmm15, %zmm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x85,0xcb,0x6d,0xd8]
          vpunpckhqdq %zmm16, %zmm15, %zmm27 {%k3} {z}

// CHECK: vpunpckhqdq (%rcx), %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x48,0x6d,0x19]
          vpunpckhqdq (%rcx), %zmm15, %zmm27

// CHECK: vpunpckhqdq 291(%rax,%r14,8), %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x21,0x85,0x48,0x6d,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhqdq 291(%rax,%r14,8), %zmm15, %zmm27

// CHECK: vpunpckhqdq (%rcx){1to8}, %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x58,0x6d,0x19]
          vpunpckhqdq (%rcx){1to8}, %zmm15, %zmm27

// CHECK: vpunpckhqdq 8128(%rdx), %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x48,0x6d,0x5a,0x7f]
          vpunpckhqdq 8128(%rdx), %zmm15, %zmm27

// CHECK: vpunpckhqdq 8192(%rdx), %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x48,0x6d,0x9a,0x00,0x20,0x00,0x00]
          vpunpckhqdq 8192(%rdx), %zmm15, %zmm27

// CHECK: vpunpckhqdq -8192(%rdx), %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x48,0x6d,0x5a,0x80]
          vpunpckhqdq -8192(%rdx), %zmm15, %zmm27

// CHECK: vpunpckhqdq -8256(%rdx), %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x48,0x6d,0x9a,0xc0,0xdf,0xff,0xff]
          vpunpckhqdq -8256(%rdx), %zmm15, %zmm27

// CHECK: vpunpckhqdq 1016(%rdx){1to8}, %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x58,0x6d,0x5a,0x7f]
          vpunpckhqdq 1016(%rdx){1to8}, %zmm15, %zmm27

// CHECK: vpunpckhqdq 1024(%rdx){1to8}, %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x58,0x6d,0x9a,0x00,0x04,0x00,0x00]
          vpunpckhqdq 1024(%rdx){1to8}, %zmm15, %zmm27

// CHECK: vpunpckhqdq -1024(%rdx){1to8}, %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x58,0x6d,0x5a,0x80]
          vpunpckhqdq -1024(%rdx){1to8}, %zmm15, %zmm27

// CHECK: vpunpckhqdq -1032(%rdx){1to8}, %zmm15, %zmm27
// CHECK:  encoding: [0x62,0x61,0x85,0x58,0x6d,0x9a,0xf8,0xfb,0xff,0xff]
          vpunpckhqdq -1032(%rdx){1to8}, %zmm15, %zmm27

// CHECK: vgetexpss %xmm26, %xmm1, %xmm20
// CHECK:  encoding: [0x62,0x82,0x75,0x08,0x43,0xe2]
          vgetexpss %xmm26, %xmm1, %xmm20

// CHECK: vgetexpss %xmm26, %xmm1, %xmm20 {%k7}
// CHECK:  encoding: [0x62,0x82,0x75,0x0f,0x43,0xe2]
          vgetexpss %xmm26, %xmm1, %xmm20 {%k7}

// CHECK: vgetexpss %xmm26, %xmm1, %xmm20 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0x75,0x8f,0x43,0xe2]
          vgetexpss %xmm26, %xmm1, %xmm20 {%k7} {z}

// CHECK: vgetexpss {sae}, %xmm26, %xmm1, %xmm20
// CHECK:  encoding: [0x62,0x82,0x75,0x18,0x43,0xe2]
          vgetexpss {sae}, %xmm26, %xmm1, %xmm20

// CHECK: vgetexpss (%rcx), %xmm1, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x75,0x08,0x43,0x21]
          vgetexpss (%rcx), %xmm1, %xmm20

// CHECK: vgetexpss 291(%rax,%r14,8), %xmm1, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x75,0x08,0x43,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vgetexpss 291(%rax,%r14,8), %xmm1, %xmm20

// CHECK: vgetexpss 508(%rdx), %xmm1, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x75,0x08,0x43,0x62,0x7f]
          vgetexpss 508(%rdx), %xmm1, %xmm20

// CHECK: vgetexpss 512(%rdx), %xmm1, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x75,0x08,0x43,0xa2,0x00,0x02,0x00,0x00]
          vgetexpss 512(%rdx), %xmm1, %xmm20

// CHECK: vgetexpss -512(%rdx), %xmm1, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x75,0x08,0x43,0x62,0x80]
          vgetexpss -512(%rdx), %xmm1, %xmm20

// CHECK: vgetexpss -516(%rdx), %xmm1, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x75,0x08,0x43,0xa2,0xfc,0xfd,0xff,0xff]
          vgetexpss -516(%rdx), %xmm1, %xmm20

// CHECK: vgetexpsd %xmm2, %xmm7, %xmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x08,0x43,0xd2]
          vgetexpsd %xmm2, %xmm7, %xmm2

// CHECK: vgetexpsd %xmm2, %xmm7, %xmm2 {%k5}
// CHECK:  encoding: [0x62,0xf2,0xc5,0x0d,0x43,0xd2]
          vgetexpsd %xmm2, %xmm7, %xmm2 {%k5}

// CHECK: vgetexpsd %xmm2, %xmm7, %xmm2 {%k5} {z}
// CHECK:  encoding: [0x62,0xf2,0xc5,0x8d,0x43,0xd2]
          vgetexpsd %xmm2, %xmm7, %xmm2 {%k5} {z}

// CHECK: vgetexpsd {sae}, %xmm2, %xmm7, %xmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x18,0x43,0xd2]
          vgetexpsd {sae}, %xmm2, %xmm7, %xmm2

// CHECK: vgetexpsd (%rcx), %xmm7, %xmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x08,0x43,0x11]
          vgetexpsd (%rcx), %xmm7, %xmm2

// CHECK: vgetexpsd 291(%rax,%r14,8), %xmm7, %xmm2
// CHECK:  encoding: [0x62,0xb2,0xc5,0x08,0x43,0x94,0xf0,0x23,0x01,0x00,0x00]
          vgetexpsd 291(%rax,%r14,8), %xmm7, %xmm2

// CHECK: vgetexpsd 1016(%rdx), %xmm7, %xmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x08,0x43,0x52,0x7f]
          vgetexpsd 1016(%rdx), %xmm7, %xmm2

// CHECK: vgetexpsd 1024(%rdx), %xmm7, %xmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x08,0x43,0x92,0x00,0x04,0x00,0x00]
          vgetexpsd 1024(%rdx), %xmm7, %xmm2

// CHECK: vgetexpsd -1024(%rdx), %xmm7, %xmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x08,0x43,0x52,0x80]
          vgetexpsd -1024(%rdx), %xmm7, %xmm2

// CHECK: vgetexpsd -1032(%rdx), %xmm7, %xmm2
// CHECK:  encoding: [0x62,0xf2,0xc5,0x08,0x43,0x92,0xf8,0xfb,0xff,0xff]
          vgetexpsd -1032(%rdx), %xmm7, %xmm2

// CHECK: vgetmantss $171, %xmm12, %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xd3,0x6d,0x08,0x27,0xdc,0xab]
          vgetmantss $0xab, %xmm12, %xmm2, %xmm3

// CHECK: vgetmantss $171, %xmm12, %xmm2, %xmm3 {%k7}
// CHECK:  encoding: [0x62,0xd3,0x6d,0x0f,0x27,0xdc,0xab]
          vgetmantss $0xab, %xmm12, %xmm2, %xmm3 {%k7}

// CHECK: vgetmantss $171, %xmm12, %xmm2, %xmm3 {%k7} {z}
// CHECK:  encoding: [0x62,0xd3,0x6d,0x8f,0x27,0xdc,0xab]
          vgetmantss $0xab, %xmm12, %xmm2, %xmm3 {%k7} {z}

// CHECK: vgetmantss $171,{sae}, %xmm12, %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xd3,0x6d,0x18,0x27,0xdc,0xab]
          vgetmantss $0xab,{sae}, %xmm12, %xmm2, %xmm3

// CHECK: vgetmantss $123, %xmm12, %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xd3,0x6d,0x08,0x27,0xdc,0x7b]
          vgetmantss $0x7b, %xmm12, %xmm2, %xmm3

// CHECK: vgetmantss $123,{sae}, %xmm12, %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xd3,0x6d,0x18,0x27,0xdc,0x7b]
          vgetmantss $0x7b,{sae}, %xmm12, %xmm2, %xmm3

// CHECK: vgetmantss $123, (%rcx), %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xf3,0x6d,0x08,0x27,0x19,0x7b]
          vgetmantss $0x7b, (%rcx), %xmm2, %xmm3

// CHECK: vgetmantss $123, 291(%rax,%r14,8), %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xb3,0x6d,0x08,0x27,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vgetmantss $0x7b, 291(%rax,%r14,8), %xmm2, %xmm3

// CHECK: vgetmantss $123, 508(%rdx), %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xf3,0x6d,0x08,0x27,0x5a,0x7f,0x7b]
          vgetmantss $0x7b, 508(%rdx), %xmm2, %xmm3

// CHECK: vgetmantss $123, 512(%rdx), %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xf3,0x6d,0x08,0x27,0x9a,0x00,0x02,0x00,0x00,0x7b]
          vgetmantss $0x7b, 512(%rdx), %xmm2, %xmm3

// CHECK: vgetmantss $123, -512(%rdx), %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xf3,0x6d,0x08,0x27,0x5a,0x80,0x7b]
          vgetmantss $0x7b, -512(%rdx), %xmm2, %xmm3

// CHECK: vgetmantss $123, -516(%rdx), %xmm2, %xmm3
// CHECK:  encoding: [0x62,0xf3,0x6d,0x08,0x27,0x9a,0xfc,0xfd,0xff,0xff,0x7b]
          vgetmantss $0x7b, -516(%rdx), %xmm2, %xmm3

// CHECK: vgetmantsd $171, %xmm8, %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xd3,0xa5,0x00,0x27,0xd8,0xab]
          vgetmantsd $0xab, %xmm8, %xmm27, %xmm3

// CHECK: vgetmantsd $171, %xmm8, %xmm27, %xmm3 {%k6}
// CHECK:  encoding: [0x62,0xd3,0xa5,0x06,0x27,0xd8,0xab]
          vgetmantsd $0xab, %xmm8, %xmm27, %xmm3 {%k6}

// CHECK: vgetmantsd $171, %xmm8, %xmm27, %xmm3 {%k6} {z}
// CHECK:  encoding: [0x62,0xd3,0xa5,0x86,0x27,0xd8,0xab]
          vgetmantsd $0xab, %xmm8, %xmm27, %xmm3 {%k6} {z}

// CHECK: vgetmantsd $171,{sae}, %xmm8, %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xd3,0xa5,0x10,0x27,0xd8,0xab]
          vgetmantsd $0xab,{sae}, %xmm8, %xmm27, %xmm3

// CHECK: vgetmantsd $123, %xmm8, %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xd3,0xa5,0x00,0x27,0xd8,0x7b]
          vgetmantsd $0x7b, %xmm8, %xmm27, %xmm3

// CHECK: vgetmantsd $123,{sae}, %xmm8, %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xd3,0xa5,0x10,0x27,0xd8,0x7b]
          vgetmantsd $0x7b,{sae}, %xmm8, %xmm27, %xmm3

// CHECK: vgetmantsd $123, (%rcx), %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x27,0x19,0x7b]
          vgetmantsd $0x7b, (%rcx), %xmm27, %xmm3

// CHECK: vgetmantsd $123, 291(%rax,%r14,8), %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xb3,0xa5,0x00,0x27,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vgetmantsd $0x7b, 291(%rax,%r14,8), %xmm27, %xmm3

// CHECK: vgetmantsd $123, 1016(%rdx), %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x27,0x5a,0x7f,0x7b]
          vgetmantsd $0x7b, 1016(%rdx), %xmm27, %xmm3

// CHECK: vgetmantsd $123, 1024(%rdx), %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x27,0x9a,0x00,0x04,0x00,0x00,0x7b]
          vgetmantsd $0x7b, 1024(%rdx), %xmm27, %xmm3

// CHECK: vgetmantsd $123, -1024(%rdx), %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x27,0x5a,0x80,0x7b]
          vgetmantsd $0x7b, -1024(%rdx), %xmm27, %xmm3

// CHECK: vgetmantsd $123, -1032(%rdx), %xmm27, %xmm3
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x27,0x9a,0xf8,0xfb,0xff,0xff,0x7b]
          vgetmantsd $0x7b, -1032(%rdx), %xmm27, %xmm3

// CHECK: vgetmantps $171, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0x83,0x7d,0x48,0x26,0xf4,0xab]
          vgetmantps $0xab, %zmm28, %zmm22

// CHECK: vgetmantps $171, %zmm28, %zmm22 {%k3}
// CHECK:  encoding: [0x62,0x83,0x7d,0x4b,0x26,0xf4,0xab]
          vgetmantps $0xab, %zmm28, %zmm22 {%k3}

// CHECK: vgetmantps $171, %zmm28, %zmm22 {%k3} {z}
// CHECK:  encoding: [0x62,0x83,0x7d,0xcb,0x26,0xf4,0xab]
          vgetmantps $0xab, %zmm28, %zmm22 {%k3} {z}

// CHECK: vgetmantps $171,{sae}, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0x83,0x7d,0x18,0x26,0xf4,0xab]
          vgetmantps $0xab,{sae}, %zmm28, %zmm22

// CHECK: vgetmantps $123, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0x83,0x7d,0x48,0x26,0xf4,0x7b]
          vgetmantps $0x7b, %zmm28, %zmm22

// CHECK: vgetmantps $123,{sae}, %zmm28, %zmm22
// CHECK:  encoding: [0x62,0x83,0x7d,0x18,0x26,0xf4,0x7b]
          vgetmantps $0x7b,{sae}, %zmm28, %zmm22

// CHECK: vgetmantps $123, (%rcx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x48,0x26,0x31,0x7b]
          vgetmantps $0x7b, (%rcx), %zmm22

// CHECK: vgetmantps $123, 291(%rax,%r14,8), %zmm22
// CHECK:  encoding: [0x62,0xa3,0x7d,0x48,0x26,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vgetmantps $0x7b, 291(%rax,%r14,8), %zmm22

// CHECK: vgetmantps $123, (%rcx){1to16}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x58,0x26,0x31,0x7b]
          vgetmantps $0x7b, (%rcx){1to16}, %zmm22

// CHECK: vgetmantps $123, 8128(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x48,0x26,0x72,0x7f,0x7b]
          vgetmantps $0x7b, 8128(%rdx), %zmm22

// CHECK: vgetmantps $123, 8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x48,0x26,0xb2,0x00,0x20,0x00,0x00,0x7b]
          vgetmantps $0x7b, 8192(%rdx), %zmm22

// CHECK: vgetmantps $123, -8192(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x48,0x26,0x72,0x80,0x7b]
          vgetmantps $0x7b, -8192(%rdx), %zmm22

// CHECK: vgetmantps $123, -8256(%rdx), %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x48,0x26,0xb2,0xc0,0xdf,0xff,0xff,0x7b]
          vgetmantps $0x7b, -8256(%rdx), %zmm22

// CHECK: vgetmantps $123, 508(%rdx){1to16}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x58,0x26,0x72,0x7f,0x7b]
          vgetmantps $0x7b, 508(%rdx){1to16}, %zmm22

// CHECK: vgetmantps $123, 512(%rdx){1to16}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x58,0x26,0xb2,0x00,0x02,0x00,0x00,0x7b]
          vgetmantps $0x7b, 512(%rdx){1to16}, %zmm22

// CHECK: vgetmantps $123, -512(%rdx){1to16}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x58,0x26,0x72,0x80,0x7b]
          vgetmantps $0x7b, -512(%rdx){1to16}, %zmm22

// CHECK: vgetmantps $123, -516(%rdx){1to16}, %zmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x58,0x26,0xb2,0xfc,0xfd,0xff,0xff,0x7b]
          vgetmantps $0x7b, -516(%rdx){1to16}, %zmm22

// CHECK: vgetmantpd $171, %zmm26, %zmm2
// CHECK:  encoding: [0x62,0x93,0xfd,0x48,0x26,0xd2,0xab]
          vgetmantpd $0xab, %zmm26, %zmm2

// CHECK: vgetmantpd $171, %zmm26, %zmm2 {%k7}
// CHECK:  encoding: [0x62,0x93,0xfd,0x4f,0x26,0xd2,0xab]
          vgetmantpd $0xab, %zmm26, %zmm2 {%k7}

// CHECK: vgetmantpd $171, %zmm26, %zmm2 {%k7} {z}
// CHECK:  encoding: [0x62,0x93,0xfd,0xcf,0x26,0xd2,0xab]
          vgetmantpd $0xab, %zmm26, %zmm2 {%k7} {z}

// CHECK: vgetmantpd $171,{sae}, %zmm26, %zmm2
// CHECK:  encoding: [0x62,0x93,0xfd,0x18,0x26,0xd2,0xab]
          vgetmantpd $0xab,{sae}, %zmm26, %zmm2

// CHECK: vgetmantpd $123, %zmm26, %zmm2
// CHECK:  encoding: [0x62,0x93,0xfd,0x48,0x26,0xd2,0x7b]
          vgetmantpd $0x7b, %zmm26, %zmm2

// CHECK: vgetmantpd $123,{sae}, %zmm26, %zmm2
// CHECK:  encoding: [0x62,0x93,0xfd,0x18,0x26,0xd2,0x7b]
          vgetmantpd $0x7b,{sae}, %zmm26, %zmm2

// CHECK: vgetmantpd $123, (%rcx), %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x26,0x11,0x7b]
          vgetmantpd $0x7b, (%rcx), %zmm2

// CHECK: vgetmantpd $123, 291(%rax,%r14,8), %zmm2
// CHECK:  encoding: [0x62,0xb3,0xfd,0x48,0x26,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 291(%rax,%r14,8), %zmm2

// CHECK: vgetmantpd $123, (%rcx){1to8}, %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x26,0x11,0x7b]
          vgetmantpd $0x7b, (%rcx){1to8}, %zmm2

// CHECK: vgetmantpd $123, 8128(%rdx), %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x26,0x52,0x7f,0x7b]
          vgetmantpd $0x7b, 8128(%rdx), %zmm2

// CHECK: vgetmantpd $123, 8192(%rdx), %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x26,0x92,0x00,0x20,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 8192(%rdx), %zmm2

// CHECK: vgetmantpd $123, -8192(%rdx), %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x26,0x52,0x80,0x7b]
          vgetmantpd $0x7b, -8192(%rdx), %zmm2

// CHECK: vgetmantpd $123, -8256(%rdx), %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x48,0x26,0x92,0xc0,0xdf,0xff,0xff,0x7b]
          vgetmantpd $0x7b, -8256(%rdx), %zmm2

// CHECK: vgetmantpd $123, 1016(%rdx){1to8}, %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x26,0x52,0x7f,0x7b]
          vgetmantpd $0x7b, 1016(%rdx){1to8}, %zmm2

// CHECK: vgetmantpd $123, 1024(%rdx){1to8}, %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x26,0x92,0x00,0x04,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 1024(%rdx){1to8}, %zmm2

// CHECK: vgetmantpd $123, -1024(%rdx){1to8}, %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x26,0x52,0x80,0x7b]
          vgetmantpd $0x7b, -1024(%rdx){1to8}, %zmm2

// CHECK: vgetmantpd $123, -1032(%rdx){1to8}, %zmm2
// CHECK:  encoding: [0x62,0xf3,0xfd,0x58,0x26,0x92,0xf8,0xfb,0xff,0xff,0x7b]
          vgetmantpd $0x7b, -1032(%rdx){1to8}, %zmm2

// CHECK: vshufps $171, %zmm9, %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xd1,0x4c,0x48,0xc6,0xe9,0xab]
          vshufps $0xab, %zmm9, %zmm6, %zmm5

// CHECK: vshufps $171, %zmm9, %zmm6, %zmm5 {%k6}
// CHECK:  encoding: [0x62,0xd1,0x4c,0x4e,0xc6,0xe9,0xab]
          vshufps $0xab, %zmm9, %zmm6, %zmm5 {%k6}

// CHECK: vshufps $171, %zmm9, %zmm6, %zmm5 {%k6} {z}
// CHECK:  encoding: [0x62,0xd1,0x4c,0xce,0xc6,0xe9,0xab]
          vshufps $0xab, %zmm9, %zmm6, %zmm5 {%k6} {z}

// CHECK: vshufps $123, %zmm9, %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xd1,0x4c,0x48,0xc6,0xe9,0x7b]
          vshufps $0x7b, %zmm9, %zmm6, %zmm5

// CHECK: vshufps $123, (%rcx), %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0xc6,0x29,0x7b]
          vshufps $0x7b, (%rcx), %zmm6, %zmm5

// CHECK: vshufps $123, 291(%rax,%r14,8), %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xb1,0x4c,0x48,0xc6,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufps $0x7b, 291(%rax,%r14,8), %zmm6, %zmm5

// CHECK: vshufps $123, (%rcx){1to16}, %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0xc6,0x29,0x7b]
          vshufps $0x7b, (%rcx){1to16}, %zmm6, %zmm5

// CHECK: vshufps $123, 8128(%rdx), %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0xc6,0x6a,0x7f,0x7b]
          vshufps $0x7b, 8128(%rdx), %zmm6, %zmm5

// CHECK: vshufps $123, 8192(%rdx), %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0xc6,0xaa,0x00,0x20,0x00,0x00,0x7b]
          vshufps $0x7b, 8192(%rdx), %zmm6, %zmm5

// CHECK: vshufps $123, -8192(%rdx), %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0xc6,0x6a,0x80,0x7b]
          vshufps $0x7b, -8192(%rdx), %zmm6, %zmm5

// CHECK: vshufps $123, -8256(%rdx), %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x48,0xc6,0xaa,0xc0,0xdf,0xff,0xff,0x7b]
          vshufps $0x7b, -8256(%rdx), %zmm6, %zmm5

// CHECK: vshufps $123, 508(%rdx){1to16}, %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0xc6,0x6a,0x7f,0x7b]
          vshufps $0x7b, 508(%rdx){1to16}, %zmm6, %zmm5

// CHECK: vshufps $123, 512(%rdx){1to16}, %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0xc6,0xaa,0x00,0x02,0x00,0x00,0x7b]
          vshufps $0x7b, 512(%rdx){1to16}, %zmm6, %zmm5

// CHECK: vshufps $123, -512(%rdx){1to16}, %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0xc6,0x6a,0x80,0x7b]
          vshufps $0x7b, -512(%rdx){1to16}, %zmm6, %zmm5

// CHECK: vshufps $123, -516(%rdx){1to16}, %zmm6, %zmm5
// CHECK:  encoding: [0x62,0xf1,0x4c,0x58,0xc6,0xaa,0xfc,0xfd,0xff,0xff,0x7b]
          vshufps $0x7b, -516(%rdx){1to16}, %zmm6, %zmm5

// CHECK: vshufpd $171, %zmm22, %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x21,0xbd,0x48,0xc6,0xe6,0xab]
          vshufpd $0xab, %zmm22, %zmm8, %zmm28

// CHECK: vshufpd $171, %zmm22, %zmm8, %zmm28 {%k2}
// CHECK:  encoding: [0x62,0x21,0xbd,0x4a,0xc6,0xe6,0xab]
          vshufpd $0xab, %zmm22, %zmm8, %zmm28 {%k2}

// CHECK: vshufpd $171, %zmm22, %zmm8, %zmm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0xbd,0xca,0xc6,0xe6,0xab]
          vshufpd $0xab, %zmm22, %zmm8, %zmm28 {%k2} {z}

// CHECK: vshufpd $123, %zmm22, %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x21,0xbd,0x48,0xc6,0xe6,0x7b]
          vshufpd $0x7b, %zmm22, %zmm8, %zmm28

// CHECK: vshufpd $123, (%rcx), %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x48,0xc6,0x21,0x7b]
          vshufpd $0x7b, (%rcx), %zmm8, %zmm28

// CHECK: vshufpd $123, 291(%rax,%r14,8), %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x21,0xbd,0x48,0xc6,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufpd $0x7b, 291(%rax,%r14,8), %zmm8, %zmm28

// CHECK: vshufpd $123, (%rcx){1to8}, %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x58,0xc6,0x21,0x7b]
          vshufpd $0x7b, (%rcx){1to8}, %zmm8, %zmm28

// CHECK: vshufpd $123, 8128(%rdx), %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x48,0xc6,0x62,0x7f,0x7b]
          vshufpd $0x7b, 8128(%rdx), %zmm8, %zmm28

// CHECK: vshufpd $123, 8192(%rdx), %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x48,0xc6,0xa2,0x00,0x20,0x00,0x00,0x7b]
          vshufpd $0x7b, 8192(%rdx), %zmm8, %zmm28

// CHECK: vshufpd $123, -8192(%rdx), %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x48,0xc6,0x62,0x80,0x7b]
          vshufpd $0x7b, -8192(%rdx), %zmm8, %zmm28

// CHECK: vshufpd $123, -8256(%rdx), %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x48,0xc6,0xa2,0xc0,0xdf,0xff,0xff,0x7b]
          vshufpd $0x7b, -8256(%rdx), %zmm8, %zmm28

// CHECK: vshufpd $123, 1016(%rdx){1to8}, %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x58,0xc6,0x62,0x7f,0x7b]
          vshufpd $0x7b, 1016(%rdx){1to8}, %zmm8, %zmm28

// CHECK: vshufpd $123, 1024(%rdx){1to8}, %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x58,0xc6,0xa2,0x00,0x04,0x00,0x00,0x7b]
          vshufpd $0x7b, 1024(%rdx){1to8}, %zmm8, %zmm28

// CHECK: vshufpd $123, -1024(%rdx){1to8}, %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x58,0xc6,0x62,0x80,0x7b]
          vshufpd $0x7b, -1024(%rdx){1to8}, %zmm8, %zmm28

// CHECK: vshufpd $123, -1032(%rdx){1to8}, %zmm8, %zmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x58,0xc6,0xa2,0xf8,0xfb,0xff,0xff,0x7b]
          vshufpd $0x7b, -1032(%rdx){1to8}, %zmm8, %zmm28

// CHECK: kortestw %k6, %k2
// CHECK:  encoding: [0xc5,0xf8,0x98,0xd6]
          kortestw %k6, %k2

// CHECK: vscatterqps %ymm6, 123(%r14,%zmm27,8) {%k1}
// CHECK:  encoding: [0x62,0x92,0x7d,0x41,0xa3,0xb4,0xde,0x7b,0x00,0x00,0x00]
          vscatterqps %ymm6, 123(%r14,%zmm27,8) {%k1}

// CHECK: vscatterqps %ymm6, 123(%r14,%zmm27,8) {%k1}
// CHECK:  encoding: [0x62,0x92,0x7d,0x41,0xa3,0xb4,0xde,0x7b,0x00,0x00,0x00]
          vscatterqps %ymm6, 123(%r14,%zmm27,8) {%k1}

// CHECK: vscatterqps %ymm6, 256(%r9,%zmm27) {%k1}
// CHECK:  encoding: [0x62,0x92,0x7d,0x41,0xa3,0x74,0x19,0x40]
          vscatterqps %ymm6, 256(%r9,%zmm27) {%k1}

// CHECK: vscatterqps %ymm6, 1024(%rcx,%zmm27,4) {%k1}
// CHECK:  encoding: [0x62,0xb2,0x7d,0x41,0xa3,0xb4,0x99,0x00,0x04,0x00,0x00]
          vscatterqps %ymm6, 1024(%rcx,%zmm27,4) {%k1}

// CHECK: vscatterqpd %zmm22, 123(%r14,%zmm28,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x41,0xa3,0xb4,0xe6,0x7b,0x00,0x00,0x00]
          vscatterqpd %zmm22, 123(%r14,%zmm28,8) {%k1}

// CHECK: vscatterqpd %zmm22, 123(%r14,%zmm28,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x41,0xa3,0xb4,0xe6,0x7b,0x00,0x00,0x00]
          vscatterqpd %zmm22, 123(%r14,%zmm28,8) {%k1}

// CHECK: vscatterqpd %zmm22, 256(%r9,%zmm28) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x41,0xa3,0x74,0x21,0x20]
          vscatterqpd %zmm22, 256(%r9,%zmm28) {%k1}

// CHECK: vscatterqpd %zmm22, 1024(%rcx,%zmm28,4) {%k1}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x41,0xa3,0xb4,0xa1,0x00,0x04,0x00,0x00]
          vscatterqpd %zmm22, 1024(%rcx,%zmm28,4) {%k1}

// CHECK: vscatterdps %zmm17, 123(%r14,%zmm19,8) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x41,0xa2,0x8c,0xde,0x7b,0x00,0x00,0x00]
          vscatterdps %zmm17, 123(%r14, %zmm19,8) {%k1}

// CHECK: vscatterdps %zmm17, 123(%r14,%zmm19,8) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x41,0xa2,0x8c,0xde,0x7b,0x00,0x00,0x00]
          vscatterdps %zmm17, 123(%r14, %zmm19,8) {%k1}

// CHECK: vscatterdps %zmm17, 256(%r9,%zmm19) {%k1}
// CHECK:  encoding: [0x62,0xc2,0x7d,0x41,0xa2,0x4c,0x19,0x40]
          vscatterdps %zmm17, 256(%r9, %zmm19) {%k1}

// CHECK: vscatterdps %zmm17, 1024(%rcx,%zmm19,4) {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x41,0xa2,0x8c,0x99,0x00,0x04,0x00,0x00]
          vscatterdps %zmm17, 1024(%rcx, %zmm19,4) {%k1}

// CHECK: vscatterdpd %zmm18, 123(%r14,%ymm24,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x41,0xa2,0x94,0xc6,0x7b,0x00,0x00,0x00]
          vscatterdpd %zmm18, 123(%r14, %ymm24,8) {%k1}

// CHECK: vscatterdpd %zmm18, 123(%r14,%ymm24,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x41,0xa2,0x94,0xc6,0x7b,0x00,0x00,0x00]
          vscatterdpd %zmm18, 123(%r14, %ymm24,8) {%k1}

// CHECK: vscatterdpd %zmm18, 256(%r9,%ymm24) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x41,0xa2,0x54,0x01,0x20]
          vscatterdpd %zmm18, 256(%r9, %ymm24) {%k1}

// CHECK: vscatterdpd %zmm18, 1024(%rcx,%ymm24,4) {%k1}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x41,0xa2,0x94,0x81,0x00,0x04,0x00,0x00]
          vscatterdpd %zmm18, 1024(%rcx, %ymm24,4) {%k1}

