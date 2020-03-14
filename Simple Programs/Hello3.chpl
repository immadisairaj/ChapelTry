cobegin {
    writeln("Hi!");
    sayHello();
    {
        writeln(".......Greetings.......");
        writeln("......hahahahaahaha........");
    }
}
writeln("See you later");

proc sayHello() {
    writeln("Hello!");
}