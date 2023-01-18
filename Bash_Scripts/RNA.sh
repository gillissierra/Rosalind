#!/bin/bash

# transcribe a DNA string t into DNA string u by replacing T with U

t=$1
sed -e 's/T/U/g' <<< $t
