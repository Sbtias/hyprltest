# HYPRL ISO roadmap

This is a starter, not a finished bootable ISO. On an Arch Linux build machine, install Archiso and copy the official releng profile:

    sudo pacman -S --needed archiso
    cp -r /usr/share/archiso/configs/releng ~/hyprl-iso

Add packages from packages.x86_64 to the profile package list, copy the HYPRL configuration into the live environment using Archiso profile customization, then build:

    sudo mkarchiso -v -w /tmp/hyprl-work -o ~/hyprl-out ~/hyprl-iso

Test the resulting image in a virtual machine before using it on hardware. An installer, hardware testing, and ISO validation remain future work.
