find . -type f -name "*.mp4" -exec ffmpeg -i "{}" -vf scale=1280:-1 -c:v libx264 -crf 23 -preset medium -c:a aac -b:a 128k -movflags +faststart "{}_compressed.mp4" \;