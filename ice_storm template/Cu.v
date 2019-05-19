module Cu (
    input clk,
    input rst_n,
    output[7:0] led,
    input usb_rx,
    output usb_tx
);
    reg[30:0] counter;
    always @(posedge clk) counter<=counter+1;
    assign led=counter[30:23];
endmodule
