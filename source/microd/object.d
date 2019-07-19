module microd.object;
import microd.types;

@nogc nothrow:

class Object {
    @trusted usize toHash() {
        auto addr = cast(usize) cast(void*) this;
        return addr ^ (addr >>> 4);
    }

    bool opEquals(Object obj) {
        return this is obj;
    }
}