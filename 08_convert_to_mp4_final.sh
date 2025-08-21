ffmpeg -loop 1 -i 05.png -i 03.wav \
-filter_complex "[0:v]scale=-2:720[scaled];[scaled]pad=1280:720:0:0[bg];[bg]ass=07.ass[v]" \
-map "[v]" -map 1:a \
-c:v libx264 -pix_fmt yuv420p -shortest 08.mp4

