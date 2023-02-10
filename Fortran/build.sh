#!/bin/bash

#ifort -O3 -march=native -ipo -static -qopenmp main.f90
gfortran -O3 -fomit-frame-pointer -march=native  -fopenmp main.f90