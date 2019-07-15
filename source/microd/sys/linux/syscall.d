module microd.sys.linux.syscall;

version(linux):
@nogc nothrow:
import microd.types;
public import microd.sys.linux.syslist.linux_x86_64;

usize syscall(usize ident) {
    usize ret;

    asm @nogc nothrow {
        mov RAX, ident;
        syscall;
        mov ret, RAX;
    }

    return ret;
}

usize syscall(usize ident, usize n) {
    usize ret;

    asm @nogc nothrow {
        mov RAX, ident;
        mov RDI, n[RBP];
        syscall;
        mov ret, RAX;
    }

    return ret;
}

usize syscall(usize ident, usize n, usize arg1) {
    usize ret;

    asm @nogc nothrow {
        mov RAX, ident;
        mov RDI, n[RBP];
        mov RSI, arg1[RBP];
        syscall;
        mov ret, RAX;
    }

    return ret;
}

usize syscall(usize ident, usize n, usize arg1, usize arg2) {
    usize ret;

    asm @nogc nothrow {
        mov RAX, ident;
        mov RDI, n[RBP];
        mov RSI, arg1[RBP];
        mov RDX, arg2[RBP];
        syscall;
        mov ret, RAX;
    }

    return ret;
}

usize syscall(usize ident, usize n, usize arg1, usize arg2, usize arg3) {
    usize ret;

    asm @nogc nothrow {
        mov RAX, ident;
        mov RDI, n[RBP];
        mov RSI, arg1[RBP];
        mov RDX, arg2[RBP];
        mov R10, arg3[RBP];
        syscall;
        mov ret, RAX;
    }

    return ret;
}

usize syscall(usize ident, usize n, usize arg1, usize arg2, usize arg3, usize arg4) {
    usize ret;

    asm @nogc nothrow {
        mov RAX, ident;
        mov RDI, n[RBP];
        mov RSI, arg1[RBP];
        mov RDX, arg2[RBP];
        mov R10, arg3[RBP];
        mov R8, arg4[RBP];
        syscall;
        mov ret, RAX;
    }

    return ret;
}

usize syscall(usize ident, usize n, usize arg1, usize arg2, usize arg3, usize arg4, usize arg5) {
    usize ret;

     asm @nogc nothrow {
        mov RAX, ident;
        mov RDI, n[RBP];
        mov RSI, arg1[RBP];
        mov RDX, arg2[RBP];
        mov R10, arg3[RBP];
        mov R8, arg4[RBP];
        mov R9, arg5[RBP];
        syscall;
        mov ret, RAX;
    }

    return ret;
}