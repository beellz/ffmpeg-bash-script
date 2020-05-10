ffmpeg  -stream_loop -1 -i Macro.mp4 -i output.mp3 -shortest -map 0:v:0 -map 1:a:0 -y out.mp4
