../../../../build/X86/gem5.fast \
../../../../configs/example/se.py \
--cmd=$1  2>&1 | tee test_out.log
# --debug-flags=Decoder \
