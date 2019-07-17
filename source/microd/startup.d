module microd.startup;
import microd.types;
import microd.libd.syscall;
import microd.libd.mem;
import microd.libd.string;

@nogc nothrow:

private extern(C) int _Dmain(char[][] args);

version(X86_64) {
    version(linux) {
        @nogc nothrow private extern(C) void _start() {
            asm @nogc nothrow {
                pop RBP;                // Force invoke push of RBP
                pop RDI;                // Set argc
                mov RSI, RSP;           // Set argv
                mov RDX, RDI;           // Set envp = argc (RDI) * 8 + 1 + argv
                add RDX, 1;
                shl RDX, 3;
                add RDX, RSP;
                and RSP, -16;           // Align stack pointer on 16 byte
                call __microd_start;    // call __microd_start
            }        
        }
    } else static assert(0, "microd startup is not implemented on this OS");
} else static assert(0, "microd startup is not implemented on this architecure");

private extern(C) void __microd_start(i32 argc, char** argv, char** envp) {
    char[][] args = (cast(char[]*) alloca(argc * (char[]).sizeof))[0 .. argc];

    foreach(i, ref arg; args) {
        arg = argv[i][0 .. strlen(argv[i])];
    }

    auto ret = _Dmain(args);
    __microd_exit(ret);
}

private void __microd_exit(i32 exitCode) {
    version(X86_64) {
        version(linux) {
            syscall(Syscall.EXIT, exitCode);
        }
    }
}
