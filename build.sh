#!/bin/sh
echo Building BES device tree files...
make clean
make src/arm/bes-hdmi.dtb
make src/arm/bes-lcd3.dtb
make src/arm/bes-lcd4.dtb
make src/arm/bes-lcd7.dtb
make src/arm/bes-4dcape43t.dtb
make src/arm/bes-4dcape70t.dtb

echo Copying device tree files into \"deploy\" directory...
rm -f deploy/*
cp -f src/arm/bes-*.dtb deploy
echo Done!

