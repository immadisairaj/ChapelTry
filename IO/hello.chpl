use IO;
use Time;

config const num = 10;

var t: Timer;
var rt: Timer;
var wt: Timer;
t.start();
var myFile = open("input.txt", iomode.cw);
var myWritingChannel = myFile.writer();
wt.start();
for i in 1..num do
    myWritingChannel.writeln(i);
myWritingChannel.flush();
wt.stop();
myFile = open("input.txt", iomode.r);
var myReadingChannel = myFile.reader();
rt.start();
for i in myReadingChannel.lines() do
    write(i);
rt.stop();
myWritingChannel.close();
myReadingChannel.close();
myFile.close();
t.stop();
var a = wt.elapsed(TimeUnits.milliseconds);
var b = rt.elapsed(TimeUnits.milliseconds);
var c = t.elapsed(TimeUnits.milliseconds);
t.clear();
wt.clear();
rt.clear();

t.start();
myFile = open("input1.txt", iomode.cw);
myWritingChannel = myFile.writer();
wt.start();
for i in 1..num do
    myWritingChannel.writeln(i);
myWritingChannel.flush();
wt.stop();
myFile = open("input1.txt", iomode.r);
myReadingChannel = myFile.reader();
rt.start();
for i in myFile.lines() do
    write(i);
rt.stop();
myWritingChannel.close();
myReadingChannel.close();
myFile.close();
t.stop();
var d = wt.elapsed(TimeUnits.milliseconds);
var e = rt.elapsed(TimeUnits.milliseconds);
var f = t.elapsed(TimeUnits.milliseconds);

t.clear();
t.start();
for i in (1..num) do
    writeln(i);
t.stop();
var g = t.elapsed(TimeUnits.milliseconds);

writeln("channel.lines()");
writeln("Write Time Elapsed: ", a, " milliseconds");
writeln("Read Time Elapsed: ", b, " milliseconds");
writeln("Time Elapsed: ", c, " milliseconds");
writeln("file.lines()");
writeln("Write Time Elapsed: ", d, " milliseconds");
writeln("Read Time Elapsed: ", e, " milliseconds");
writeln("Time Elapsed: ", f, " milliseconds");
writeln("---------------------------------------------");
writeln("Loop Time: ", g, " milliseconds");
writeln("Channel Read Time Elapsed: ", b, " milliseconds");
writeln("File Read Time Elapsed: ", e, " milliseconds");