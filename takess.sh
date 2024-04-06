#!/bin/bash

res=$( echo -e "region\nwhole screen" | rofi -dmenu -p "option" )
file_name=$( rofi -dmenu -p "file name" )
sleep .5 # wait for rofi window to disappear
wait

if [ "$file_name" = "" ]; then
    file_name="temp"
fi

if [ "$res" = "region" ]; then
    import -silent ~/Pictures/Screenshots/"$file_name".png
fi
if [ "$res" = "whole screen" ]; then
    import -silent -window root ~/Pictures/Screenshots/"$file_name".png
fi

xclip -selection clipboard -t image/png < ~/Pictures/Screenshots/"$file_name".png

if [ "$file_name" = "temp" ]; then
    rm ~/Pictures/Screenshots/temp.png
fi

exit 0
