use IO;

config const num = 8;

// var myFile = open("helloparallel.txt", iomode.cw);
// var myWritingChannel = myFile.writer();
// // var x: int = 20;
// // myWritingChannel.write(x);

// // for tid in 1..numTasks do
// //     myWritingChannel.writeln(tid);

// coforall tid in 1..numTasks do
//     myWritingChannel.writeln(tid);

// myWritingChannel.close();
// myFile.close();

var myFile1 = open("helloparallelnormal.txt", iomode.r);
var myFile = open("helloparallelout.txt", iomode.cw);
var channel = myFile1.reader();
var writechannel = myFile.writer();
for i in channel.lines() do
    writechannel.write(i);
channel.close();
writechannel.close();