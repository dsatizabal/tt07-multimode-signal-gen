`default_nettype none
module mmvfsg (
    input wire clk,                 // expect a 10Mhz clock
    input wire n_rst,
    input wire [3:0] freq,          // connect to ui_in[3:0]
    input wire [3:0] mode,          // connect to ui_in[7:4]
    output reg [7:0] r2r_out        // 8 bit out to the R2R DAC
);

    reg rst;
    reg dir;

    reg [3:0] prev_mode_reg;
    reg [3:0] prev_freq_reg;

    reg [7:0] counter;
    reg [7:0] sq_cycle_counter;

    initial begin
        $dumpfile ("mmvfsg.vcd");
        $dumpvars (0, mmvfsg);
    end

    // reset handling
    always @(posedge clk or posedge n_rst) begin
        if(n_rst)
            rst <= 1'b0;
        else
            rst <= 1'b1;
    end

    // counter and r2r output
    always @(posedge clk) begin
        if(rst) begin
            counter <= 0;
            r2r_out <= 0;
            prev_mode_reg <= 0;
            prev_freq_reg <= 0;
            dir <= 0;
            sq_cycle_counter <= 0;
        end else begin
            if (mode != prev_mode_reg || freq != prev_freq_reg) begin
                prev_mode_reg <= mode;
                prev_freq_reg <= freq;
                counter <= 0;
                r2r_out <= 0;
                dir <= 0;
                sq_cycle_counter <= 0;
            end

        /* verilator lint_off WIDTHEXPAND */
            if(counter + 1'b1 > freq) begin
        /* lint_on */
                counter <= 0;
        		
                case (mode)
        			4'b0000: begin // Not used
		            end
        			4'b0001: begin // Ramp
                        r2r_out <= r2r_out + 1'b1;
		            end
        			4'b0010: begin // Sawtooth
                        if (dir == 0) begin
                            r2r_out <= r2r_out + 1'b1;
                            if (r2r_out + 1'b1 == 8'b1111_1111)
                                dir <= 1'b1;
                        end else begin
                            r2r_out <= r2r_out - 1'b1;
                            if (r2r_out - 1'b1 == 0)
                                dir <= 1'b0;
                        end
		            end
        			4'b0011: begin // Not used
		            end
        			4'b0100: begin // Square
                        if (dir == 0) begin
                            r2r_out <= 8'b1111_1111;
                            sq_cycle_counter <= sq_cycle_counter + 1'b1;
                            if (sq_cycle_counter + 1'b1 == 8'b1111_1111)
                                dir <= 1'b1;
                        end else begin
                            r2r_out <= 8'b0000_0000;
                            sq_cycle_counter <= sq_cycle_counter - 1'b1;
                            if (sq_cycle_counter - 1'b1 == 0)
                                dir <= 1'b0;
                        end
		            end
        			4'b0101: begin // Not used
		            end
        			4'b0110: begin // Not used
		            end
        			4'b0111: begin // Not used
		            end
        			4'b1000: begin // Not used
		            end
        			4'b1001: begin // Not used
		            end
        			4'b1010: begin // Not used
		            end
        			4'b1011: begin // Not used
		            end
        			4'b1100: begin // Not used
		            end
        			4'b1101: begin // Not used
		            end
        			4'b1110: begin // Not used
		            end
       			    4'b1111: begin // Not used
		            end
		            default: begin
		            end

		        endcase
            end else begin
                counter <= counter + 1'b1;
            end
        end
    end

endmodule

