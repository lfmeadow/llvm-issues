opt --mtriple amdgcn-amd-amdhsa \
--mcpu=gfx908 \
--relocation-model=pic \
--fp-contract=on \
--vectorize-loops \
--vectorize-slp \
--O3 \
--debugger-tune=gdb \
--amdgpu-internalize-symbols \
--addrsig \
--verify-each \
--verify-region-info \
-instcombine-enable-gep-add-rewrite=true \
-num-phid-insts-threshold=1 \
--debug-only=simplifycfg \
-o kernel-gep.bc \
LLVMBitcode.bc

#--print-after-all \
#--print-before=simplifycfg \
#--print-after=simplifycfg \
