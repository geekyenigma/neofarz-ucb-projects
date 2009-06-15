//-----------------------------------------------------------------------
//	File:		$RCSfile: Register.V,v $
//	Version:	$Revision: 1.3 $
//	Desc:		Register
//	Author:		Greg Gibeling
//	Copyright:	Copyright 2003 UC Berkeley
//	This copyright header must appear in all derivative works.
//-----------------------------------------------------------------------

//-----------------------------------------------------------------------
//	Section:	Change Log
//-----------------------------------------------------------------------
//	$Log: Register.V,v $
//	Revision 1.3  2004/07/30 21:15:21  Administrator
//	Reformatted
//	
//	Revision 1.2  2004/06/17 18:59:57  Administrator
//	Added Proper Headers
//	Updated Parameters and Constants
//	General Housekeeping
//	
//-----------------------------------------------------------------------

//-----------------------------------------------------------------------
//	Module:		Register
//	Desc:		If you don't know, I can't help you.
//-----------------------------------------------------------------------
module Register(Clock, Reset, Set, Enable, In, Out);
	//---------------------------------------------------------------
	//	Parameters
	//---------------------------------------------------------------
	parameter		width = 		32;
	//---------------------------------------------------------------

	//---------------------------------------------------------------
	//	Declarations
	//---------------------------------------------------------------
	input			Clock, Enable, Reset, Set;
	input	[width-1:0]	In;
	output	[width-1:0]	Out;
	reg	[width-1:0]	Out;
	//---------------------------------------------------------------

	//---------------------------------------------------------------
	//	Behavioural Register
	//---------------------------------------------------------------
	always @ (posedge Clock) begin
		if (Reset) Out <=			{width{1'b0}};
		else if (Set) Out <=			{width{1'b1}};
		else if (Enable) Out <=			In;
	end
	//---------------------------------------------------------------
endmodule
//-----------------------------------------------------------------------