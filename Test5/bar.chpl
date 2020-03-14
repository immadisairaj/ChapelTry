use IO;

proc foo(): c_string {
    var x = "blah blah";
    return x.localize().c_str();
}

var res = foo();
writeln(res);