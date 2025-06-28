module traffic_light_controller(
  
  input clk,reset,
  output reg [2:0]light_m1,
  output reg [2:0]light_m2,
  output reg [2:0]light_m3,
  output reg [2:0]light_m4
  
);
  
  reg [3:0]count;
  reg [2:0]ps;
  parameter s1=0,s2=1,s3=2,s4=3,s5=4,s6=5;
  parameter ta=7,tb=2,tc=5,td=3;
  
  always @(posedge clk or posedge reset)
    begin
      if(reset==1)
        begin
          ps<=s1;
          count<=0;
        end
      else
        
        case(ps)
          
          s1:if(count<ta)
            begin
              ps<=s1;
              count<=count++;
            end
          else
            begin 
              ps<=s2;
              count<=0;
            end
          
          s2:if(count<tb)
            begin
              ps<=s2;
              count<=count++;
            end
          else
            begin 
              ps<=s3;
              count<=0;
            end
          
          s3:if(count<tc)
            begin
              ps<=s3;
              count<=count++;
            end
          else
            begin 
              ps<=s4;
              count<=0;
            end
          
          s4:if(count<tb)
            begin
              ps<=s4;
              count<=count++;
            end
          else
            begin 
              ps<=s5;
              count<=0;
            end
          
          s5:if(count<td)
            begin
              ps<=s5;
              count<=count++;
            end
          else
            begin 
              ps<=s6;
              count<=0;
            end
          
          s6:if(count<ta)
            begin
              ps<=s6;
              count<=count++;
            end
          else
            begin 
              ps<=s1;
              count<=0;
            end
          
          default: ps<=s1;
          
        endcase
    end
  
  always @(ps)
    begin
      
      case(ps)
        
        s1:begin
          light_m1<=3'b001;
          light_m2<=3'b100;
          light_m3<=3'b001;
          light_m4<=3'b100;
        end
        
        s2:begin
          light_m1<=3'b001;
          light_m2<=3'b100;
          light_m3<=3'b010;
          light_m4<=3'b100;
        end
        
        s3:begin
          light_m1<=3'b001;
          light_m2<=3'b001;
          light_m3<=3'b100;
          light_m4<=3'b100;
        end
        
        s4:begin
          light_m1<=3'b101;
          light_m2<=3'b101;
          light_m3<=3'b100;
          light_m4<=3'b100;
        end
        
        s5:begin
          light_m1<=3'b100;
          light_m2<=3'b100;
          light_m3<=3'b100;
          light_m4<=3'b001;
        end
        
        s6:begin
          light_m1<=3'b100;
          light_m2<=3'b100;
          light_m3<=3'b100;
          light_m4<=3'b101;
        end
        
      endcase
    end
  
endmodule