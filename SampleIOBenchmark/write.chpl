use IO;
use Time;

config const num = 10000000;

var t: Timer;
var myFile = open("writechapel", iomode.cw);
var myWritingChannel = myFile.writer();
t.start();
for i in 1..num do
    myWritingChannel.writef("%i\n", i);
myWritingChannel.close();
t.stop();
myFile.close();
var time = t.elapsed(TimeUnits.seconds);
writeln("Time writing ",num," into file: ", time);