test: dense_mv_blk.exe
	../build/X86/gem5.opt ../configs/example/se.py --cmd='./dense_mv_blk.exe' --cpu-type=DerivO3CPU --caches 

%.exe: %.c
	gcc -O3 -mavx512f -static $^ -o $@

