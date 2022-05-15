all:
	gcc -c test.c -o test.o -flto -O2
	gcc -c test_override.c -o test_override.o -flto -O2
	gcc -o ltoed_dynamic_test test.o test_override.o  -flto -O2 
	gcc -c test.c -o test.o -O2
	gcc -c test_override.c -o test_override.o -O2
	gcc -o nolto_dynamic_test test.o test_override.o -O2 
	gcc -c test.c -o test.o 
	gcc -c test_override.c -o test_override.o  
	gcc -o static_test test.o test_override.o -static 
	gcc -o static_test_normal test.o -static 
	gcc -o dynamic_test test.o test_override.o
#	gcc -o dynamic_test test.o test_override.o -Xlinker --dynamic-linker=/usr/obj/usr/src/amd64.amd64/libexec/rtld-elf/ld-elf.so.1.full
#	gcc -o dynamic_test test.o test_override.o -Wl,-debug,--verbose
#	gcc -o dynamic_test test.o test_override.o -Wl,-debug
	gcc -o dynamic_test_normal test.o
#	gcc -o dynamic_test_normal test.o -Xlinker --dynamic-linker=/usr/obj/usr/src/amd64.amd64/libexec/rtld-elf/ld-elf.so.1.full
#	gcc -c test.c -o test.o -fdump-tree-all -O2
#	gcc -o dynamic_test test.o test_override.o -Xlinker --dynamic-linker=/usr/obj/usr/src/amd64.amd64/libexec/rtld-elf/ld-elf.so.1.full
#	gcc -o dynamic_test_normal test.o -Xlinker --dynamic-linker=/usr/obj/usr/src/amd64.amd64/libexec/rtld-elf/ld-elf.so.1.full
#	gcc -o test2 test2.c -Xlinker --dynamic-linker=/usr/obj/usr/src/amd64.amd64/libexec/rtld-elf/ld-elf.so.1.full
#	gcc -o test3 test3.c -lm
clean:
	rm -f test.o test_override.o static_test static_test_normal dynamic_test dynamic_test_normal
