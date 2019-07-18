module microd.sys.linux.syscall;

version(linux):
@nogc nothrow:
pragma(inline, true):

import microd.types;
import ldc.llvmasm;
public import microd.sys.linux.syslist.linux_x86_64;

version (X86_64) {
    template syscall(u64 ident) {
        u64 syscall() {
            return __asm!u64(
                "syscall",
                "={rax},{rax},~{rcx},~{r11}",
                ident);
        }

        u64 syscall(u64 n) {
            return __asm!u64(
                "syscall",
                "={rax},{rax},{rdi},~{rcx},~{r11}",
                ident, n);
        }

        u64 syscall(u64 n, u64 arg1) {
            return __asm!u64(
                "syscall",
                "={rax},{rax},{rdi},{rsi},~{rcx},~{r11}",
                ident, n, arg1);
        }

        u64 syscall(u64 n, u64 arg1, u64 arg2) {
            return __asm!u64(
                "syscall",
                "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11}",
                ident, n, arg1, arg2);
        }

        u64 syscall(u64 n, u64 arg1, u64 arg2, u64 arg3) {
            return __asm!u64(
                "syscall",
                "={rax},{rax},{rdi},{rsi},{rdx},{r10},~{rcx},~{r11}",
                ident, n, arg1, arg2, arg3);
        }

        u64 syscall(u64 n, u64 arg1, u64 arg2, u64 arg3, u64 arg4) {
            return __asm!u64(
                "syscall",
                "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},~{rcx},~{r11}",
                ident, n, arg1, arg2, arg3, arg4);
        }

        u64 syscall(u64 n, u64 arg1, u64 arg2, u64 arg3, u64 arg4, u64 arg5) {
            return __asm!u64(
                "syscall",
                "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11}",
                ident, n, arg1, arg2, arg3, arg4, arg5);
        }
    }
}