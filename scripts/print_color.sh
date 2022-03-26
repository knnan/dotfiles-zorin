#!/bin/bash


fontstyle='01'
message='HELLO EVERYONE'
while getopts s:f:b:m flag
do
    case "${flag}" in
        s) fontstyle=${OPTARG};;
        f) foreground=${OPTARG};;
        b) background=${OPTARG};;
        m) message=${OPTARG};;
    esac
done

delim=';'
color="${fontstyle}${delim}${foreground}${delim}${background}"

printf "\e[%sm%s \e[m " "$color"  "${message}"
echo " => ${color} "
