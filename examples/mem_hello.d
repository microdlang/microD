import microd.types;
import microd.startup;
import microd.libd.syscall;
import microd.libd.mem;

enum STDOUT = 1;

void main() {
    int[3] arr = [3, 2, 1];
    int[3] arr2 = [3, 2, 1];
    int[4] arr3 = [3, 21, 1, 33];

    compare(arr, arr2);
    compare(arr2, arr3);
    compare(arr3, arr);
}

void write(string buf, usize fd = STDOUT) {
    syscall!WRITE(fd, cast(usize) buf.ptr, buf.length);
}

void compare(int[] arr1, int[] arr2) {
    auto result = memcmp(arr1, arr2);

    if (result == 0) {
        write("arr1 == arr2\n");
    } else if (result < 0) {
        write("arr1 < arr2\n");
    } else {
        write("arr1 > arr2\n");
    }
}