

avxtests: avxtests.c *.h
	clang -O3 -mavx512f -mavx512dq -mavx512vl -mavx512bw $< -lm -o $@.exe
	clang -O3 -S -mavx512f -mavx512dq -mavx512vl -mavx512bw $< -o $@.s
	clang -O3 -DVERBOSE -mavx512f -mavx512dq -mavx512vl -mavx512bw $< -lm -o $@.verbose.exe
	objdump -d $@.exe > $@.asm

clean:
	rm avxtests.exe avxtests.verbose.exe avxtests.s avxtests.asm