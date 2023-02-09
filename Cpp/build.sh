#!/bin/bash

g++ main.cpp -O3 -s -static -flto -march=native -mtune=native -fomit-frame-pointer -fno-signed-zeros -fno-trapping-math -fassociative-math -ffast-math