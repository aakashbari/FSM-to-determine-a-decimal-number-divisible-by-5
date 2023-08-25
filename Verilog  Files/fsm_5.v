
//Finite state machine

//Code
	module fsm_5(
	input clk,
	input reset_n,
	input din,
	output reg dout
	);
	
	//declaration of parameter 
	parameter[2:0]s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100;
	
	// declaration of current state  and next state 
	reg [2:0]present_state, next_state;
	
	
	//present state block (Sequential block)
	assign reset_n=0;
	always@(posedge clk,negedge reset_n)
	begin
	
	if(reset_n)
	present_state<=present_state;
	else
	present_state<=next_state;
	end
	
	
	
	//Next state block (combinational block)
	
	always@(din,present_state)
	begin
	
	case(present_state)
	s0:begin
	if(din)
	next_state<=s1;
	else
	next_state<=s0;
	end
	
	
	
	s1:begin
	if(din)
	next_state<=s3;
	else
	next_state<=s2;
	end
	
	
	s2:begin
	if(din)
	next_state<=s0;
	else
	next_state<=s4;
	end
	
	
	s3:begin
	if(din)
	next_state<=s2;
	else
	next_state<=s1;
	end
	
	
	s4:begin
	if(din)
	next_state<=s4;
	else
	next_state<=s3;
	end
	
	default:next_state<=s0;
	endcase 
	end
	
	
	
	//Output block
	
	always@(din,present_state)
	begin
	
	case(present_state)
	s0:begin
	if(din)
	dout<=0;
	else
	dout<=1;
	end
	
	s1:dout<=0;
	
	s2:begin
	if(din)
	dout<=1;
	else
	dout<=0;
	end
	
	s3:dout<=0;
	
	s4:dout<=0;
	
	default:dout<=0;
	endcase
	
	end
	
	endmodule
	
	
	
	
