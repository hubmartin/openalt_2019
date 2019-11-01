// look in pins.pcf for all the pin names on the TinyFPGA BX board
module top (
    input CLK,    // 16MHz clock
    output LED,   // User/boot LED next to power LED
    output PIN_24,
    output USBPU  // USB pull-up resistor
);
    // drive USB pull-up resistor to '0' to disable USB
    assign USBPU = 0;

    // keep track of time and location in blink_pattern
    reg [25:0] blink_counter;

    // pattern that will be flashed over the LED over time
    wire [31:0] blink_pattern = 32'b101010001110111011100010101;

    // increment the blink_counter every clock
    always @(posedge CLK) begin
        blink_counter <= blink_counter + 1;
    end

    // light up the LED according to the pattern
    assign LED = blink_pattern[blink_counter[25:21]];

    wire led_write = 1;
    wire [7:0] led_position;
    wire [23:0] led_rgb_data;

    assign led_position = { 5'b0, blink_counter[22:20]};
    assign led_rgb_data = blink_counter[23] ? 24'h7f0000 : 24'h007f00;

    ws2812 ws2812_inst (
      .data(PIN_24),
      .clk(CLK),
      .reset(0),
      .rgb_data(led_rgb_data),
      .led_num(led_position),
      .write(led_write)
    );

endmodule
