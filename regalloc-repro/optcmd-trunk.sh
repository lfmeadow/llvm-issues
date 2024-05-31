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
--debug-only=instcombine \
--print-after=instcombine \
--print-before=instcombine \
-instcombine-enable-gep-add-rewrite=false \
-o opt-gepoff.bc \
LLVMBitcode.bc
