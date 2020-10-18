g++ -c lib/junk.cpp -o lib/junk.o
gcc -c lib/wrapper.cpp -o lib/wrap.o
ar r lib/junk.a lib/junk.o lib/wrap.o

swiftc -import-objc-header lib/junk-bridge.h test.swift lib/junk.a -o test

rm lib/junk.a lib/wrap.o lib/junk.o