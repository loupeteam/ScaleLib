(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: Scale_Lib
 * File: ScaleFnCyclic.st
 * Author: David
 * Created: July 21, 2010
 ********************************************************************
 * Implementation of library Scale_Lib
 ********************************************************************) 


(****************************************************************************************)
(* Cyclic function for scaling 															*)
(****************************************************************************************)


(* Error checking			DONE and TESTED DFB 20110512 *)
(* Scaling					DONE and TESTED DFB 20110512 *)


FUNCTION ScaleFnCyclic


(************************************************************)
(* Set return value to get rid of compile warning 			*)
(************************************************************)

ScaleFnCyclic:=	FALSE;


(************************************************************)
(* Check for errors and scale values			 			*)
(************************************************************)

IF( (t.IN.CFG.Point[0].Input = t.IN.CFG.Point[1].Input) )THEN
	
	t.OUT.OutputValue:=	0;
	t.OUT.STAT.Error:=	1;

ELSE
	 	
	t.OUT.OutputValue:= 	t.IN.CFG.Point[0].Output + 
							( ( t.IN.CFG.Point[1].Output - t.IN.CFG.Point[0].Output ) / (t.IN.CFG.Point[1].Input - t.IN.CFG.Point[0].Input) ) * 
							( t.IN.InputValue - t.IN.CFG.Point[0].Input );
		
		
	t.OUT.STAT.Error:=	0;
	
END_IF


END_FUNCTION
