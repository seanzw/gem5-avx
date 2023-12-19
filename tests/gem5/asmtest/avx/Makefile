
CFLAGS=-mavx512f -mavx512dq -mavx512vl -mavx512bw -mavx512vnni

avxtests: avxtests.c *.h
	clang -O3 ${CFLAGS} $< -lm -o $@.exe
	clang -O3 -S ${CFLAGS} $< -o $@.s
	clang -O3 -DVERBOSE ${CFLAGS} $< -lm -o $@.verbose.exe
	objdump -d $@.exe > $@.asm

clean:
	rm avxtests.exe avxtests.verbose.exe avxtests.s avxtests.asm