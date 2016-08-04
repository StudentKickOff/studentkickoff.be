#!/bin/bash

i=1
for f in *; do
    mv "$f" $i.jpg
    i=$((i+1))
done
