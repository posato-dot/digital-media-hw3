// 第03讲 矩阵乘法四层实现 —— Verilog 版（组合逻辑 / 空间并行）
// 规格: parameter N = 3, 32bit 有符号整数, A/B/C 按行优先打平为 288bit 总线
// 结构: generate + genvar 例化 3x3 = 9 个 PE(乘累加单元),
//       每个 PE 含 N=3 个乘法器与 N=3 个加法器 -> 全片 27 个乘法器同时翻转
// 仿真: iverilog -g2012 -o matmul.vvp matmul.v tb_matmul.v && vvp matmul.vvp
// 注意: 设计部分所有数组下标都由 genvar 在 elaborate 阶段确定(常量),
//       不使用变量下标访问数组, 因此可被综合; assign 为并行连续赋值, 无先后顺序。
`timescale 1ns/1ps

module matmul #(
    parameter N = 3,
    parameter W = 32
) (
    input  wire [N*N*W-1:0] a_flat,   // A 行优先: a_flat[(i*N+j)*W +: W]
    input  wire [N*N*W-1:0] b_flat,   // B 行优先
    output wire [N*N*W-1:0] c_flat    // C 行优先
);
    genvar i, j, k, q;

    generate
        for (i = 0; i < N; i = i + 1) begin : ROW
            for (j = 0; j < N; j = j + 1) begin : COL
                wire signed [W-1:0] term [0:N-1];   // N 个乘积
                wire signed [W-1:0] acc  [0:N];     // 加法链, 常量下标可综合

                // 一个 genvar k 对应一个独立乘法器(电路), 3 个同时工作
                for (k = 0; k < N; k = k + 1) begin : MUL
                    wire signed [W-1:0] a_ik = a_flat[(i*N+k)*W +: W];
                    wire signed [W-1:0] b_kj = b_flat[(k*N+j)*W +: W];
                    assign term[k] = a_ik * b_kj;   // 低 W 位截断 == C 的 int 语义
                end

                assign acc[0] = {W{1'b0}};
                for (q = 0; q < N; q = q + 1) begin : ADD
                    assign acc[q+1] = acc[q] + term[q];
                end
                assign c_flat[(i*N+j)*W +: W] = acc[N];
            end
        end
    endgenerate
endmodule
