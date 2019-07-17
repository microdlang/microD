module source.microd.libd.string;
import microd.types;

@nogc nothrow usize strlen(const(char)* str) {
    const(char)* s;

    for(s = str; *s; s++) {

    }

    return (s - str);
}