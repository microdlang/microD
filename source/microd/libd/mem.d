module source.microd.libd.mem;
import microd.types;

@nogc nothrow:

pragma(LDC_alloca) void* alloca(usize);

i32 memcmp(T) (const(T)* mem1, const(T)* mem2, usize length) {
    char s1;
    char s2;

    while(length-- > 0) {
        s1 = *(cast(char*) mem1);
        s2 = *(cast(char*) mem2);

        if (s1 != s2) {
            return s1 - s2;
        }

        mem1++;
        mem2++;
    }

    return 0;
}

i32 memcmp(T) (const(T)[] mem1, const(T)[] mem2) {
    immutable len = (mem1.length <= mem2.length) ? mem1.length : mem2.length;

    return memcmp(mem1.ptr, mem2.ptr, len);
}