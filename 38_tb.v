`timescale 1 ns/ 1 ps

module decode_38_vlg_tst();

reg clk;

reg [2:0] keyin;

// wires                                               

wire [7:0]  led;

reg [3:0]invect;

initial

begin

  #10 clk=1'b0;

  forever 

   #10 clk=~clk;

end

initial

begin

  for(invect=0;invect<8;invect=invect+1)

   begin

  keyin=invect[3:0];

  #10 $display($time," clk=%b,keyin=%b,led=%b",clk,keyin,led);

end

end

 

initial

begin

  #120 $stop;

end

                        

decode_38 i1 (

// port map - connection between master ports and signals/registers   

.clk(clk),

.keyin(keyin),

.led(led)

);                                                   

endmodule