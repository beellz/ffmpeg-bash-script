#/bin/bash
ffmpeg -i af.mp3  -ss 5  -i af.mp3 -c copy -map 1:0 -map 0 -shortest -f nut - | ffmpeg -f nut -i - -map 0 -map -0:0 -c copy output-af.mp3 
sleep 2

ffmpeg -i macro.mp4 -i icon.png -filter_complex "overlay=20:20" output.mp4

sleep 2

echo "this is  encoding"

#ffmpeg -stream_loop -1 -i macro.mp4 -i output-af.mp3 -shortest -map 0:v:0 -map 1:a:1 -y out.mp4
ffmpeg  -stream_loop -1 -i output.mp4 -i output-af.mp3 -shortest -map 0:v:0 -map 1:a:0 -y out.mp4
