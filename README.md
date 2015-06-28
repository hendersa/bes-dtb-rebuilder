# bes-dtb-rebuilder
Beagle Entertainment System device tree builder for 3.14-ti kernel

This tree contains device tree definitions extracted from the Linux
kernel source tree. It was originally forked from the 3.14 branch of:

https://github.com/RobertCNelson/dtb-rebuilder

Use the "build.sh" script to create the device tree files used for 
BES. The "clean.sh" script will clean up the source tree and delete any
.dtb files in the "deploy" directory. Once you have built the .dtb files:

1. Run the "build.sh" script to create the various BES .dtb files. Each
.dtb file has a particular display configured for it, so select the .dtb
file in "deploy" that matches the display you want to use. Your choices 
are the built-in HDMI cape and the various LCD capes: CircuitCo LCD3/4/7 
and the 4DSystems 4DCAPE-43T/70T.

2. Backup the dtb/am335x-boneblack.dtb file in the /boot partition of your
BES microSD card.

3. Copy the BES .dtb file that you wish to use to the /boot partition of the
microSD card as dtb/am335x-boneblack.dtb. 

When you boot the BES system with the new .dtb, you'll have the following
features in your system:

1. Display support for the display option you selected.

2. GPIO button inputs for SNES controller 1 on P8.7 through P8.19 (in
bes-gpio.dtsi).
