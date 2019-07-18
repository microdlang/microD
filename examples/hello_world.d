import microd.types;
import microd.startup;
import microd.libd.syscall;

enum STDOUT = 1;

void main(string[] args) {
    foreach(arg; args) {
        write("arg: ");
        write(arg);
        write("\n");
    }
    
    write("Hello, world!\n");
}

void write(string buf, usize fd = STDOUT) {
    syscall!WRITE(fd, cast(usize) buf.ptr, buf.length);
}
