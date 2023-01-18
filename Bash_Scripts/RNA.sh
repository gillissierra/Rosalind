#!/bin/bash

# transcribe a DNA string t into DNA string u by replacing T with U

sed -e 's/T/U/g' <<< $1
