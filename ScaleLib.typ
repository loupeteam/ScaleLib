(*
 * File: ScaleLib.typ
 * Copyright (c) 2023 Loupe
 * https://loupe.team
 * 
 * This file is part of ScaleLib, licensed under the MIT License.
 *
 *)

TYPE
	Scale_OUT_STAT_typ : 	STRUCT 
		Error : BOOL;
	END_STRUCT;
	Scale_OUT_typ : 	STRUCT 
		OutputValue : REAL;
		STAT : Scale_OUT_STAT_typ;
	END_STRUCT;
	Scale_IN_CFG_Point_typ : 	STRUCT 
		Input : REAL;
		Output : REAL;
	END_STRUCT;
	Scale_IN_CFG_typ : 	STRUCT 
		Point : ARRAY[0..1] OF Scale_IN_CFG_Point_typ;
	END_STRUCT;
	Scale_IN_typ : 	STRUCT 
		InputValue : REAL;
		CFG : Scale_IN_CFG_typ;
	END_STRUCT;
	Scale_typ : 	STRUCT 
		IN : Scale_IN_typ;
		OUT : Scale_OUT_typ;
	END_STRUCT;
END_TYPE
