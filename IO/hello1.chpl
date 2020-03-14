use IO;
use Time;

config const num = 10;

var t: Timer;
var rt: Timer;
var wt: Timer;
t.start();
var myFile = open("input1.txt", iomode.cw);
var myWritingChannel = myFile.writer();
wt.start();
for i in 1..num do
    myWritingChannel.writeln(i);
myWritingChannel.flush();
wt.stop();
myFile = open("input1.txt", iomode.r);
var myReadingChannel = myFile.reader();
rt.start();
for i in myFile.lines() do
    write(i);
rt.stop();
myWritingChannel.close();
myReadingChannel.close();
myFile.close();
t.stop();
writeln("Write Time Elapsed: ", wt.elapsed(TimeUnits.milliseconds), " milliseconds");
writeln("Read Time Elapsed: ", rt.elapsed(TimeUnits.milliseconds), " milliseconds");
writeln("Time Elapsed: ", t.elapsed(TimeUnits.milliseconds), " milliseconds");
