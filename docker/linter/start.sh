#!/bin/bash

figlet -f small v.Nu

vnu /source/*.html
vnu /source/css

figlet -f small Bootlint

bootlint /source/*.html

figlet -f small Standard

standard /source/js
