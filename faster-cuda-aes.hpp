/*
 * faster-cuda-aes.hpp
 *
 *  Created on: Sep 6, 2018
 *      Author: hb4ch
 */

#ifndef FASTER_CUDA_AES_HPP_
#define FASTER_CUDA_AES_HPP_

__device__ uint8_t g_rseed[16] = { 0, 5, 1, 0, 0, 0, 6, 0, 24, 0, 0, 0, 0, 0, 0,
		0 };

__global__ void ctr_encrypt_nofrag_perword(uint8_t *data, uint8_t *rkey,
		uint32_t numblock);
__global__ void ctr_encrypt_k_nofrag(uint8_t *data, uint8_t *rkey,
		uint32_t numblock);
__global__ void ctr_encrypt_k_frag(uint8_t *data, uint8_t *rkey,
		uint32_t numblock);

void encrypt_cuda(const uint8_t *data, uint8_t *key, uint8_t *rseed,
		uint32_t numblock);
void encrypt_cuda_io(const uint8_t *inparray, uint8_t *outarray, uint8_t *key,
		uint8_t *rseed, uint32_t numblock);

#endif /* FASTER_CUDA_AES_HPP_ */
