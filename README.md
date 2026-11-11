# 数字媒体程序基础 第三次作业

第 03 讲 · 矩阵乘法四层实现（从 Verilog 到 CUDA）

## 四份源码

| 文件 | 层次 | 内容 |
| --- | --- | --- |
| `matmul.c` | C | 三重循环实现 3×3 整数矩阵乘，输出结果 |
| `matmul.s` | 汇编 | 由 `gcc -S -O0` 生成的 AT&T 汇编，内层乘加对应 `imull` / `addl` |
| `matmul.v` | Verilog | `parameter N = 3`，`generate + genvar` 例化 9 个乘法器，`assign` 组合逻辑乘加 |
| `matmul.cu` | CUDA | 核函数一个线程计算一个 `C[i][j]`，`blockDim = 32`，含 `i < N` 边界判断 |

## 标准答案

```
30  24  18
84  69  54
138 114  90
```

四层实现（C -O0 / C -O2 / Icarus Verilog 仿真 / CUDA 主机端等价模拟）输出逐位一致，9/9 PASS。

## 说明

- 本机未安装 gcc 与 nvcc：汇编由 Zig 0.17 内置 Clang（`zig cc -S`，等价 `gcc -S`）生成；Verilog 用 Icarus Verilog 12.0 便携版真实仿真，`iverilog -Wall` 零警告。
- 本机无 GPU，`matmul.cu` 未做 GPU 实测，仅静态分析与主机端等价模拟；MUSA 版无国产卡，仅做前缀静态对比。
- 完整过程、截图与四层对照表见实验报告 docx。
