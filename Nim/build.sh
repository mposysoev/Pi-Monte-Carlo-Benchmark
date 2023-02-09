#!/bin/bash

nim c --verbosity:0 -d:danger --passC:"-flto"  --passL:"-flto" --gc:arc main.nim