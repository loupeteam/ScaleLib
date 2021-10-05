![Automation Resources Group](http://automationresourcesgroup.com/images/arglogo254x54.png)

#ScaleLib Library
The ScaleLib library provides a generic linear scaling object and Fahrenheit to Celsius conversion functions.

#Usage

##ScaleFnCyclic()
The **ScaleFnCyclic()** function performs a generic linear scaling.

###Initialization
A variable of type **Scale_typ** must be created to use the linear scaling. The scaling parameters are entered as a point pair, typically in the INIT routine of your program.

	Scale.IN.CFG.Point[0].Input:=	0;
	Scale.IN.CFG.Point[0].Output:=	0;

	Scale.IN.CFG.Point[1].Input:=	100;
	Scale.IN.CFG.Point[1].Output:=	32767;

These scaling parameters could be used to scale from percent to an analog output, for example. If the **Input** values of the two points are identical, then the **Error** status output will be set, and the **OutputValue** will be set to 0.

###Cyclic Operation
The **ScaleFnCyclic()** function should be called any time you wish to scale a value. It is possible to call this function on the same Scale variable multiple times per scan.

	Scale.IN.InputValue:=	50;

	ScaleFnCyclic( Scale );

After this function call, **Scale.OUT.OutputValue** will contain 16383.5, the scaled value as defined by the scaling points above. Note that the input and output values are REALs, so some data conversion may be necessary on either side of the scaling.

##F_to_C() and C_to_F()
The **F_to_C()** and **C_to_F()** functions convert temperatures from Fahrenheit to Celsius and from Celsius to Fahrenheit, respectively. The functions take the temperature to be converted as a REAL input, and output the converted temperature as a REAL.

	Temp_C:=	F_to_C( Temp_F );
	Temp_F:=	C_to_F( Temp_C );

#Reference

##Scale Data Structure
The main data structure of the ScaleLib library is the Scale structure (Scale_typ datatype). It is divided into inputs (Scale.IN), and outputs (Scale.OUT).

###Inputs
The Scale inputs contain the input value and configuration settings.

* **InputValue** - Input value to be scaled.
* **CFG.Point[0..1]** - Point pair which defines the scaling. Points must have different **Input** values.

###Outputs
The Scale outputs contain the scaled output value and status information.

* **OutputValue** - Scaled output value.
* **STAT.Error** - Set if an invalid point pair is specified (Point[0].Input = Point[1].Input). Cleared automatically if a valid point pair is specified.