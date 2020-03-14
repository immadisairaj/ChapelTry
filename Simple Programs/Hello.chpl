use IO;	// For input

writeln("Hello, world");
const x = 23;
writeln("x is ", x);
param k = true;
var s = "Yay!....";
writeln("the boolean type is ", k, " ", s);
writeln("The value of pi is ", pi);
writeln("Enter values to add");
var a = read(int);
var b = read(int);
var c = a+b;
writeln("Sum is ", c);
type statement = string;
var sayHello: statement = "Hello!!!!";
writeln(sayHello);

config var n: int = 11;	// To execute like ./Hello --n 10 (or) ./Hello --n=10
writeln(n);		// and for 'param' and 'type' you can use it like
			// chpl -s n=10 Hello.chpl
		// more for configs 
		// https://chapel-lang.org/docs/users-guide/base/configs.html

var numString: string = "45";
var num: int = numString: int;	// typecasting
writeln(num);

for i in 0..16 do
	writeln("for loop :", i);

var A: [1..5] int;
for a in A do
	a = 1;
for i in 1..5 {		// or for i in 1..5 do {}
	writeln(A[i], "#", i);
}

for (a,i) in zip(A, 6..10) do {	// or for (a,i) in zip(A, 6..) do {}
	a = i;
	writeln(a);
}
// https://chapel-lang.org/docs/users-guide/base/zip.html
