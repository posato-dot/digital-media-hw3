/* 第03讲 矩阵乘法四层实现 —— C 版
 * 规格: 3x3 整数矩阵 C = A * B
 *   A = {{1,2,3},{4,5,6},{7,8,9}}   B = {{9,8,7},{6,5,4},{3,2,1}}
 * 编译: gcc -O0 matmul.c -o matmul_O0 ; gcc -O2 matmul.c -o matmul_O2
 * 汇编: gcc -S -O0 matmul.c -o matmul.s
 * 运行: ./matmul_O0            （不带参数即使用上面的固定测试数据）
 * 说明: 可选命令行参数允许覆盖全部测试数据，使编译器不能把固定数据常量折叠，
 *       从而 -O0 / -O2 的汇编与运行时间对比仍然是"真的在算乘加"。
 *       不带参数运行时使用固定测试数据，与其余三层实现逐位比对。
 */
#include <stdio.h>
#include <stdlib.h>
#define N 3

int main(int argc, char **argv) {
    int A[N][N] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    int B[N][N] = {{9, 8, 7}, {6, 5, 4}, {3, 2, 1}};
    int C[N][N] = {{0}};

    if (argc > 1) {
        int v = atoi(argv[1]);
        for (int i = 0; i < N; i++)
            for (int j = 0; j < N; j++) { A[i][j] = v; B[i][j] = v; }
    }

    /* i-j-k 三重循环：最内层一次乘加 C[i][j] += A[i][k] * B[k][j]
     * 对应 x86-64: movl(取 A) + imull(乘 B) + addl(累加) + movl(写回 C) */
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            for (int k = 0; k < N; k++)
                C[i][j] += A[i][k] * B[k][j];

    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            printf("%d%c", C[i][j], j == N - 1 ? '\n' : ' ');
    return 0;
}
