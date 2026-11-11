/* 第03讲 矩阵乘法四层实现 —— CUDA 版（异构并行）
 * 规格: 3x3, 一个线程算一个 C[i][j]; blockDim = 32
 *       9 个元素 -> ceil(9/32) = 1 个块, 启动 32 个线程, 仅 9 个有效
 *       (if (idx < n*n) 是必须的边界判断, 否则 23 个线程会越界读写)
 * 编译: nvcc matmul.cu -o matmul_cuda
 * 运行: ./matmul_cuda       （需要 NVIDIA GPU; 无卡时做静态对比 + 主机端等价模拟）
 * 迁移: 把 cuda 前缀批量换成 musa, 即得 matmul_musa.cu（见 musify 静态对比）
 */
#include <stdio.h>
#define N 3

__global__ void matmul_kernel(const int *a, const int *b, int *c, int n) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;  // 全局线程编号
    if (idx < n * n) {                                // 边界判断，防越界
        int i = idx / n, j = idx % n;
        int s = 0;
        for (int k = 0; k < n; k++)
            s += a[i*n + k] * b[k*n + j];
        c[idx] = s;
    }
}

int main(void) {
    int h_a[N*N] = {1,2,3,4,5,6,7,8,9};
    int h_b[N*N] = {9,8,7,6,5,4,3,2,1};
    int h_c[N*N] = {0};
    int *d_a, *d_b, *d_c;
    size_t bytes = N*N*sizeof(int);

    cudaMalloc((void**)&d_a, bytes);
    cudaMalloc((void**)&d_b, bytes);
    cudaMalloc((void**)&d_c, bytes);
    cudaMemcpy(d_a, h_a, bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, h_b, bytes, cudaMemcpyHostToDevice);

    matmul_kernel<<<1, 32>>>(d_a, d_b, d_c, N);      // 1 block x 32 threads

    cudaDeviceSynchronize();
    cudaMemcpy(h_c, d_c, bytes, cudaMemcpyDeviceToHost);
    printf("kernel error: %s\n", cudaGetErrorString(cudaGetLastError()));
    printf("C (CUDA matmul, N=3):\n");
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            printf("%d%c", h_c[i*N+j], j == N-1 ? '\n' : ' ');

    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);
    return 0;
}
