#!/bin/zsh

fileName=${2}/$(date -v -$(($(date '+%w') - 1))d '+WC-%Y-%m-%d').log

echo $1 >> $fileName
lc=$(wc -l $fileName | awk '{print $1}')
echo "${lc} issue(s) this week"

