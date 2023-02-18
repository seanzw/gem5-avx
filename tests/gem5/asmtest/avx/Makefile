

avxtests: avxtests.c *.h
	clang -O3 -mavx512f -mavx512dq -mavx512vl -mavx512bw $< -lm -o $@
