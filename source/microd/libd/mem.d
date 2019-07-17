module source.microd.libd.mem;
import microd.types;

@nogc nothrow pragma(LDC_alloca) void* alloca(usize);