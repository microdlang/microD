import microd.types;
import microd.libd.syscall;

enum STDOUT = 1;

extern(C) void _start() {
    version(linux) {
        helloLinux();
        syscall(Syscall.EXIT, 0);
    }
}

void helloLinux() {
    write("Hello, world!\n"); 
}

void write(string buf, usize fd = STDOUT) {
    syscall(Syscall.WRITE, fd, cast(usize) buf.ptr, buf.length);
}
