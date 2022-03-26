export ARCH=x86

# make LSMOD=$HOME/.config/modprobed.db localmodconfig LLVM=1 LLVM_IAS=1 -j69
make arch_lsmod_defconfig LLVM=1 LLVM_IAS=1 -j69
make LLVM=1 LLVM_IAS=1 -j69
make modules LLVM=1 LLVM_IAS=1 -j69
sudo make modules_install LLVM=1 LLVM_IAS=1 -j69
make bzImage LLVM=1 LLVM_IAS=1 -j69
sudo cp -v arch/x86/boot/bzImage /boot/vmlinuz-linux517
sudo mkinitcpio -p linux517
sudo grub-mkconfig -o /boot/grub/grub.cfg
