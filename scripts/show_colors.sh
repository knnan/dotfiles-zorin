#!/bin/bash

desc='HELLO'
delim=';'
for i in {25..50};
do 
    for j in {25..40};
    do    

    color="${i}$delim${j}"
    echo "${color}  "
    printf "\e[%sm%s \e[m " "$color"  "${desc:+ ($desc)}"
    echo ''
done
done
