#!/bin/sh
echo Cleaning source tree...
make clean
echo Cleaning \"deploy\" directory...
rm -f deploy/*
echo Done!

