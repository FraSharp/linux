PATH="$HOME/tc/clang-14/bin:${PATH}" \
make LLVM=1 LLVM_IAS=1 arch_defconfig -j69

cp .config arch/x86/configs/arch_defconfig
