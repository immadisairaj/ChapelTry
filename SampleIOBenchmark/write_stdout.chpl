use IO;
use Time;

config const num = 10000000;

var t: Timer;
t.start();
for i in 1..num do
    writeln(i);
t.stop();
var time = t.elapsed(TimeUnits.seconds);
writeln("Time writing ",num," into file: ", time);
