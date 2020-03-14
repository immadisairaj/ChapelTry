proc negate(ref x: real) {
    x = -x;
}

var k = 5: real;
negate(k);
writeln(k);
var A = [1.2, 2.2, 3.2];
negate(A);                  // Promotion
writeln(A);

// https://chapel-lang.org/docs/users-guide/datapar/promotion.html