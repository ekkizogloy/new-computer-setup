#!/bin/bash

files=(
    ".gitconfig"
    ".gitexcludes"
    ".gitignore_global"
)

for i in "${files[@]}"
do
    cp $i ~/$i
done

 
