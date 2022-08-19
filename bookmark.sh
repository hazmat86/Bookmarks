#!/usr/bin/bash
#               _       _     _
# ___  ___ _ __(_)_ __ | |_  | |__  _   _ 
#/ __|/ __| '__| | '_ \| __| | '_ \| | | |
#\__ \ (__| |  | | |_) | |_  | |_) | |_| |
#|___/\___|_|  |_| .__/ \__| |_.__/ \__, |
#                |_|                |___/ 
# _                               _   
#| |__   __ _ _____ __ ___   __ _| |_ 
#| '_ \ / _` |_  / '_ ` _ \ / _` | __|
#| | | | (_| |/ /| | | | | | (_| | |_ 
#|_| |_|\__,_/___|_| |_| |_|\__,_|\__|
#
#Date: 08/19/2022
#Contact: tjchatman1986@gmail.com

target=$1
bookmarks="$HOME/.config/google-chrome/Default/Bookmarks"

grep -i $target $bookmarks > file.txt

loc="$HOME/bashScripts/file.txt"
file=$(cat $loc)

echo $file | tr -d " " | tr -d "\"" | sed 's/url:/\n/g' | sed 's/name:/\n/g' | grep http 

rm ./file.txt

