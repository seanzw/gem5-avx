cd gem5/asmtest/avx
make
objdump -d avxtests > ww.asm
cd ../../..
./main.py run gem5/asmtest/avx --variant opt -j 32 -vvv
