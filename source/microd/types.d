 module microd.types;

alias u8 = ubyte;
alias u16 = ushort;
alias u32 = uint;
alias u64 = ulong;

alias i8 = byte;
alias i16 = short;
alias i32 = int;
alias i64 = long;

alias usize = typeof(cast(void*) 0 - cast(void*) 0);
alias isize = typeof(int.sizeof);

alias string  = immutable(char)[];
alias wstring = immutable(wchar)[];
alias dstring = immutable(dchar)[];