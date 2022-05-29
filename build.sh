#!/usr/bin/env sh

set -e

export ARCH=x86 LLVM=1 LLVM_IAS=1
export PATH="$HOME/tc/clang-14/bin:${PATH}"

main() {
    make arch_defconfig -j69
    make -j69
    make modules -j69
    sudo make modules_install -j69
    make bzImage -j69

    sudo cp -v arch/x86/boot/bzImage /boot/vmlinuz-linux519
    sudo mkinitcpio -p linux519
    sudo grub-mkconfig -o /boot/grub/grub.cfg
}

main "$@"
