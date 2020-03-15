use IO;
use Time;

config const num = 10000000;

var t: Timer;
var myFile = open("read.txt", iomode.r);
t.start();
for line in myFile.lines() {
    // write(line);
}
t.stop();
myFile.close();
var time = t.elapsed(TimeUnits.seconds);
writeln("Time reading ",num," into file: ", time);