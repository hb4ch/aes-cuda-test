################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../aes-cuda.cu \
../benchmark.cu \
../faster-cuda-aes.cu \
../main.cu 

CPP_SRCS += \
../misc.cpp 

OBJS += \
./aes-cuda.o \
./benchmark.o \
./faster-cuda-aes.o \
./main.o \
./misc.o 

CU_DEPS += \
./aes-cuda.d \
./benchmark.d \
./faster-cuda-aes.d \
./main.d 

CPP_DEPS += \
./misc.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-9.1/bin/nvcc -I/usr/local/cuda/samples/common/inc -G -g -O0 -gencode arch=compute_60,code=sm_60 -gencode arch=compute_61,code=sm_61 -gencode arch=compute_62,code=sm_62  -odir "." -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-9.1/bin/nvcc -I/usr/local/cuda/samples/common/inc -G -g -O0 --compile --relocatable-device-code=false -gencode arch=compute_60,code=compute_60 -gencode arch=compute_61,code=compute_61 -gencode arch=compute_62,code=compute_62 -gencode arch=compute_60,code=sm_60 -gencode arch=compute_61,code=sm_61 -gencode arch=compute_62,code=sm_62  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-9.1/bin/nvcc -I/usr/local/cuda/samples/common/inc -G -g -O0 -gencode arch=compute_60,code=sm_60 -gencode arch=compute_61,code=sm_61 -gencode arch=compute_62,code=sm_62  -odir "." -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-9.1/bin/nvcc -I/usr/local/cuda/samples/common/inc -G -g -O0 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


