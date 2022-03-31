export ARCH=x86

PATH="$HOME/tc/clang-14/bin:${PATH}" \
make arch_defconfig LLVM=1 LLVM_IAS=1 -j69
PATH="$HOME/tc/clang-14/bin:${PATH}" \
make LLVM=1 LLVM_IAS=1 -j69
PATH="$HOME/tc/clang-14/bin:${PATH}" \
make modules LLVM=1 LLVM_IAS=1 -j69
PATH="$HOME/tc/clang-14/bin:${PATH}" \
sudo make modules_install LLVM=1 LLVM_IAS=1 -j69
PATH="$HOME/tc/clang-14/bin:${PATH}" \
make bzImage LLVM=1 LLVM_IAS=1 -j69

sudo cp -v arch/x86/boot/bzImage /boot/vmlinuz-linux517
sudo mkinitcpio -p linux517
sudo grub-mkconfig -o /boot/grub/grub.cfg
