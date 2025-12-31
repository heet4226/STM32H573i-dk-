/**
  ******************************************************************************
  * @file    network_data_params.c
  * @author  AST Embedded Analytics Research Platform
  * @date    2025-12-22T12:18:12+0100
  * @brief   AI Tool Automatic Code Generator for Embedded NN computing
  ******************************************************************************
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  ******************************************************************************
  */

#include "network_data_params.h"


/**  Activations Section  ****************************************************/
ai_handle g_network_activations_table[1 + 2] = {
  AI_HANDLE_PTR(AI_MAGIC_MARKER),
  AI_HANDLE_PTR(NULL),
  AI_HANDLE_PTR(AI_MAGIC_MARKER),
};




/**  Weights Section  ********************************************************/
AI_ALIGNED(32)
const ai_u64 s_network_weights_array_u64[73] = {
  0x76eacb8c8c7ce77fU, 0x247f9b0d4c8edb02U, 0x4f3de34ac932300fU, 0x82ada93090fe7f82U,
  0x18812b5c7cb4091cU, 0x4e17612a0d7fa504U, 0x2175c848100d998U, 0x974ce58eb31565fU,
  0x1706af227f6138faU, 0xbe18d152b729a77fU, 0x1e0fffffce5U, 0xfffffe6b000000b9U,
  0x2b800000251U, 0xfffffcd500000151U, 0xb6441b3466f51b4cU, 0xe367028336b781a3U,
  0xdb1374b6c9b58d85U, 0x625b5aef12a0fed7U, 0x9181e08b6e53c56eU, 0xc7b800146c131850U,
  0x83ffa62b64ea6237U, 0xa4727fc29821d135U, 0xdec645faefdbc211U, 0x95a481fe7acb7d5fU,
  0x2d79e2adb846cfaaU, 0x5e42099cdde7b072U, 0xf8c7ad1c187fa705U, 0x10aa4b056dcc4775U,
  0xa55ffd53679b694U, 0x6fadc2218bd9b481U, 0x8181c2605be73b95U, 0x7e08fb8762b872f0U,
  0x15dff3335d95ac0aU, 0x423ae68bbafe454dU, 0x69e4797ae2b86e7fU, 0xaa023ed26ed454bdU,
  0x2bd8df54a7ec16a8U, 0x865309e425ae997fU, 0xf2bc924890f266f1U, 0x42fd3dea2df78117U,
  0xfdd4ccb34bd0608bU, 0xa313bfb081708fecU, 0x87cc53fe146b8a30U, 0xec480111ebbd9e87U,
  0x54a3c1846ec422f3U, 0x9f1bc8e55652018fU, 0x7fd62162574065c7U, 0x7f4f15eb67a70ef3U,
  0x3421137deba25f5cU, 0x5441cac51d28122fU, 0x567fd215fd6a964U, 0x17d873215238d66bU,
  0x9e7299d4bb37e381U, 0x2c06bc7f8bb3628fU, 0xf81cb4b214dea44bU, 0x1c7364a98a1c4e91U,
  0x44fb03238642c4edU, 0xc2c0f711812dcba7U, 0x426f70469d040eaeU, 0xbe2aa3cbc98da1b0U,
  0x8497745b7fc5cea7U, 0x737e662c7ca76a5dU, 0xfffffb5efffffd53U, 0x588fffffedbU,
  0xfffffe6d00000522U, 0x1b0fffffae2U, 0xfffffca0U, 0xfffffaf00000062dU,
  0x30a00000512U, 0xfffffa990000040cU, 0x9979fd8dda7f7f56U, 0x202c64c966917027U,
  0xfffffd18U,
};


ai_handle g_network_weights_table[1 + 2] = {
  AI_HANDLE_PTR(AI_MAGIC_MARKER),
  AI_HANDLE_PTR(s_network_weights_array_u64),
  AI_HANDLE_PTR(AI_MAGIC_MARKER),
};

