module examples.class_hello;
import microd.startup;
import microd.object;
import microd.types;
import microd.libd.syscall;

enum STDOUT = 1;

class Test {
    void hello() {
        write("Hello, world!\n");
    }
}

class Test2 {
    
}

__gshared auto test = new Test();
__gshared auto test2 = new Test2();

void main() {
    test.hello();    

    if(test.opEquals(test)) {
        write("test is equals to test\n");
    }

    if(!test.opEquals(test2)) {
        write("test is not equals to test2\n");
    }
}

void write(string buf, usize fd = STDOUT) {
    syscall!WRITE(fd, cast(usize) buf.ptr, buf.length);
}