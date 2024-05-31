# GEP Rewrite causes simplifycfg bailout

This code exhibits a problem with LLVM commmit
https://github.com/llvm/llvm-project/commit/e13bed4c5f3544c076ce57e36d9a11eefa5a7815:

```
commit e13bed4c5f3544c076ce57e36d9a11eefa5a7815
Author: Dmitriy Smirnov <dmitriy.smirnov@arm.com>
Date:   Fri Oct 6 11:15:00 2023 +0100

    [PATCH] [llvm] [InstCombine] Canonicalise ADD+GEP
```

This is a cut-down version of one of the FFT kernels for which the GEP
commit causes `simplifycfg` to bail out and thus results in a
large increase of VGPR usage by the amdgpu backend.

`cfg.patch` contains a new tunable for simplifycfg that allows it to
continue when it thinks it is going to create too many PHI nodes. Setting
that to 4 recovers most of the performance lost with the GEP commit. Note
that there are other examples where the GEP commit does not cause the
simplifycfg bailout but still reduces performance with the amdgpu backend,
see ...

`gep.patch` enables or disables the gep rewrite.

- `extract.ll` is the cutdown example from the original rocFFT kernel.
- `optextract.sh` runs llvm opt with the GEP rewrite enabled (true)
or disabled (false). The CFG tunable is currently in there as well.
- `opt-extract-false.ll` and `opt-extract-true.ll` are the optimized IR
without and with the GEP rewrite. The missed simplification is clear.
- `opt-extra-true-phid4.ll` is the result with GEP enabled and with the
simplifycfg tunable value raised to 4.  The CFG is the same as without
GEP.
- `llccmd.sh` will compile the optimized bitcode to amdgpu assembly. It
isn't very interesting for this example.
- `LLVMBitcode.bc` and `LLVMBitcode.ll` is the original bitcode for the kernel. You can
compile it to assembly with the various options and see the greatly
increased register usage when simplifycfg fails.
- `kernel-gep.bc`, `kernel-gep.s`, `kernel-gep-phi4.bc`, `kernel-gep-phi4.s`, `kernel-nogep.bc`,
and `kernel-nogep.s are the results of running `optkernel-gep.sh`, `optkernel-gep-phi4.sh`, 
and `optkernel-nogep.sh` plus `llccmd.sh` on the real kernel code in `LLVMBitcode.bc`.
You can grep for the strings "Occupancy", "VGPR", and "SGPR" to see the register usage
and occupancy.

I used a very recent trunk
(http://github.com/llvm/llvm-project/commit/0d37e5c61797d6075f02daf28d1b16561299bc69)
for this, just applying the patches and building with amdgpu (and assertions) enabled.

