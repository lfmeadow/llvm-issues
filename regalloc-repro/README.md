# GEP rewrite increases amdgpu VGPR usage

This code exhibits a problem with LLVM commit https://github.com/llvm/llvm-project/commit/e13bed4c5f3544c076ce57e36d9a11eefa5a7815:

```
commit e13bed4c5f3544c076ce57e36d9a11eefa5a7815
Author: Dmitriy Smirnov <dmitriy.smirnov@arm.com>
Date:   Fri Oct 6 11:15:00 2023 +0100

    [PATCH] [llvm] [InstCombine] Canonicalise ADD+GEP
```

This is a different problem than the simplifycfg issue. The code compiles and optimizes fine, but
the resulting assembly uses several more VGPR registers. This in turn increases the occupancy
resulting in an 8% slowdown on an MI100 for serveral rocFFT  kernels.

The files are:
- `gep.patch` contains a patch for a tunable to enable or disable the GEP commit.
- `llccmd.sh` compiles optimized bitcode into amdgpu assembly
- `LLVMBitcode.bc` is the unoptimized bit for the FFT kernel
- `optcmd-trunk.sh` runs the optimizer with the same options used by the HIP compiler
- `opt-gepoff.bc` is the optimized bitcode with the GEP commit disabled
- `opt-gepon.bc` is the optimized bitcode with the GEP commit enabled
- The corresponding `.ll` files are included for convenience
- `opt-gepoff.s` and `opt-gepon.s` contain the assembly generated from the optimized bitcode with the
GEP rewrite disabled and enabled, respectively. You can grep for VGPR to see that the GEP-enabled
version uses 70 VGPRs vs. 50 VGPRS, reducing the occupancy from 4 to 3.

A very recent trunk commit was used, the patches should apply cleanly and the results should be the
same as included here.
