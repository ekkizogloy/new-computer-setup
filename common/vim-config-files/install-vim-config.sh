#!/bin/bash

files=(
    ".vimrc"
)

for i in "${files[@]}"
do
    cp $i ~/$i
done

 
