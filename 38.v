

module decode_38(keyin,led,clk);

input clk;

input [2:0]keyin;

output [7:0]led;

reg [2:0]read_key;

reg [7:0]led;

always@(keyin)

begin

  read_key=keyin;

  case(read_key)

  3'd0: led=8'b1111_1110;

  3'd1: led=8'b1111_1101;

  3'd2: led=8'b1111_1011;

  3'd3: led=8'b1111_0111;

  3'd4: led=8'b1110_1111;

  3'd5: led=8'b1101_1111;

  3'd6: led=8'b1011_1111;

  3'd7: led=8'b0111_1111;

  default:

        led=8'b1111_1111;

  endcase

end

endmodule