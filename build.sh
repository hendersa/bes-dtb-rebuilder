#!/bin/sh
echo Building BES device tree files...
make clean
# Built-in HDMI audio and video
make src/arm/bes-hdmi.dtb
# lcd3-01-00a2
make src/arm/bes-lcd3.dtb
# lcd3-01-00a2 and audio revb
make src/arm/bes-lcd3-audio.dtb
# lcd4-01-00a1
make src/arm/bes-lcd4.dtb
# lcd4-01-00a1 and audio revb
make src/arm/bes-lcd4-audio.dtb
# lcd7-01-00a3
make src/arm/bes-lcd7.dtb
# lcd7-01-00a3 and audio revb
make src/arm/bes-lcd7-audio.dtb

echo Copying device tree files into \"deploy\" directory...
rm -f deploy/*
cp -f src/arm/bes-*.dtb deploy
echo Done!

