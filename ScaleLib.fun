(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: Scale_Lib
 * File: Scale_Lib.fun
 * Author: David
 * Created: August 10, 2010
 ********************************************************************
 * Functions and function blocks of library Scale_Lib
 ********************************************************************)

FUNCTION ScaleFnCyclic : BOOL (*Cyclic function for scaling*)
	VAR_IN_OUT
		t : Scale_typ; (*Scale control object*)
	END_VAR
END_FUNCTION

FUNCTION F_to_C : REAL (*Converts from degrees Fahrenheit to degrees Celsius*)
	VAR_INPUT
		F : REAL; (*Temperature in degrees Fahrenheit*)
	END_VAR
END_FUNCTION

FUNCTION C_to_F : REAL (*Converts from degrees Celsius to degrees Fahrenheit*)
	VAR_INPUT
		C : REAL; (*Temperature in degrees Celsius*)
	END_VAR
END_FUNCTION
