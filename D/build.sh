#!/bin/bash

ldc2.exe -O3 -release -mcpu=native -march=x86-64 -flto=full -static -ffast-math main.d