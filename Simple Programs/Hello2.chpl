begin writeln("Hello!");
writeln("Goodbye....");
// the output can be of two cases

begin {
	for i in 1..10 do
		writeln("Hi there!");
	writeln("Oh, I forgot to say someting");
}

begin sayHiBack();

for i in 1..10 do
	writeln("Goodbye......");

proc sayHiBack() {
	for i in 1..10 do
		writeln("Well, hello to you too!");
}

proc walkTree(node) {	// Nested tasks
	node.processNode();
	if node.left != nil then
		begin walkTree(node.left);
	if node.right != nil then
		begin walkTree(node.right);
}