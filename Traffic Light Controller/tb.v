module traffic_light_controller_test;
  
  reg clk,reset;
  wire [2:0]light_m1;
  wire [2:0]light_m2;
  wire [2:0]light_m3;
  wire [2:0]light_m4;
  
  traffic_light_controller tlc(.clk(clk),.reset(reset),.light_m1(light_m1),.light_m2(light_m2),.light_m3(light_m3),.light_m4(light_m4));
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(1);
      
      clk=1'b0;
      forever #(1000000000/2) clk=~clk;
    end
  
  initial
	begin
    reset=0;
    #1000000000;
    reset=1;
    #1000000000;
    reset=0;
    #(1000000000*200);
    $finish;
    end
  
endmodule

