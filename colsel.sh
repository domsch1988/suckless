#!/bin/sh

passwords=$(lpass ls | grep -v '.*\/\s' | grep -v 'Generated')

# get choice
choice=$(cat ~/.Xresources | dmenu -l "15" -fn "Inconsolata Nerd Font:size=12" -nb "#2e3440" -nf "#d8dee9" -sb "#bf616a" -sf "#d8dee9")
id=$(echo ${choice} | awk '{print $3;}')

# exit if no choice
[[ -n $choice ]] || exit

echo $id | xclip -i
