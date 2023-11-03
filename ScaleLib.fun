(*
 * File: ScaleLib.fun
 * Copyright (c) 2023 Loupe
 * https://loupe.team
 * 
 * This file is part of ScaleLib, licensed under the MIT License.
 *
 *)

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
