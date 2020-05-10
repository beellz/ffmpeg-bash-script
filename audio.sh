#/bin/bash

for i in *.mp3
do

        echo "$i"
        ffmpeg -i "$i"  -ss 5  -i "$i" -c copy -map 1:0 -map 0 -shortest -f nut - | ffmpeg -f nut -i - -map 0 -map -0:0 -c copy 'output-'"$i"
sleep 3

done 
