Attempt to create a minimal EDK2 for SM8250 (Transplanted from Pixel3XL).

[![Build Status](https://dev.azure.com/zhuoweizhang/edk2-pixel3/_apis/build/status/Pixel3Dev.edk2-pixel3?branchName=master)](https://dev.azure.com/zhuoweizhang/edk2-pixel3/_build/latest?definitionId=1&branchName=master)

## Status

The boot windows10 PE is stuck in the logo

Boot Linux must add kernel parameters:efi=novamap pd_ignore_unused clk_ignore_unused

## Building
Tested on Ubuntu 18.04.

First, clone EDK2.

```
cd ..
git clone https://github.com/tianocore/edk2.git --recursive
git clone https://github.com/tianocore/edk2-platforms.git
```

You should have all three directories side by side.

Next, install dependencies:

18.04:

```
sudo apt install build-essential uuid-dev iasl git nasm python3-distutils gcc-aarch64-linux-gnu abootimg
```

Also see [EDK2 website](https://github.com/tianocore/tianocore.github.io/wiki/Using-EDK-II-with-Native-GCC#Install_required_software_from_apt)

Finally, ./build.sh.

Then fastboot boot boot_uefi.img.

# Credits

SimpleFbDxe screen driver is from imbushuo's [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg).
