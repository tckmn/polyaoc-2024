#!/usr/bin/env bash

for extra in '' "/don't($/,/do($/d;"
do
    tr \) \\n <input | sed "$extra s/.*mul(\([0-9]*\),\([0-9]*\)$/\1*\2/; tx; d; :x" | paste -sd+ | bc
done
