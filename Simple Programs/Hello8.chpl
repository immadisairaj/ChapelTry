module Hello {
    config const message = "Hello World!";

    proc main() {
        writeln(message);
    }
}