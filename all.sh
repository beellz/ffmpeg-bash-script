#!/bin/bash


array=( *.mp3 )

array2=( *.mp4 )



for ((i=0;i<${#array[@]};++i)); do

            # printf "%s is in %s\n" "${array["i"]}" "${array2["i"]}"

     ffmpeg  -stream_loop -1 -i "${array2["i"]}" -i "${array["i"]}" -shortest -map 0:v:0 -map 1:a:0 -y "${array["i"]}""out.mp4"

     done
