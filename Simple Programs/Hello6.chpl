config const n = 100000;
var A: [1..n] real;

// for a in A do
//     a += 1.0;

// coforall a in A do
//     a += 1.0;

forall a in A do
    a += 1.0;

writeln(A);

// coforall i in 2..n-1 by 1 do
//     A[i] = A[i-1] + A[i+1];

forall i in 2..n-1 by 1 do
    A[i] = A[i-1] + A[i+1];

writeln(A);