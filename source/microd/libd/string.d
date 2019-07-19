module source.microd.libd.string;
import microd.types;

@nogc nothrow:

usize strlen(T) (const(T)* str) {
    auto str_s = cast(char*) str;
    const(char)* s;

    for(s = str_s; *s; s++) {

    }

    return (s - str_s);
}

usize strlen(T) (const(T)[] str) {
    return strlen(str.ptr);
}