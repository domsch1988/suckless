#!/bin/sh

# login
if not lpass status; then
    lpass login dominik.schlack@gmail.com || exit
fi

# get alternatives
passwords=$(lpass ls | grep -v '.*\/\s' | grep -v 'Generated')

# get choice
choice=$(printf '%s\n' "${passwords}" | dmenu -l "15" -fn "Inconsolata Nerd Font:size=12" -nb "#2e3440" -nf "#d8dee9" -sb "#bf616a" -sf "#d8dee9")
id=$(echo ${choice} | awk -F [ '{print $2;}' | awk '{print $2;}' | sed 's/.$//')

# exit if no choice
[[ -n $choice ]] || exit
# get password
lpass show -c --username $id
