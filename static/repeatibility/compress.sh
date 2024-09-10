#!/bin/bash

# 检查 FFmpeg 是否安装
if ! command -v ffmpeg &> /dev/null
then
    echo "FFmpeg is not installed. Please install it and try again."
    exit 1
fi

# 检查 ImageMagick 是否安装
if ! command -v convert &> /dev/null
then
    echo "ImageMagick is not installed. Please install it and try again."
    exit 1
fi

# 压缩视频并静音，直接覆盖原文件
for file in *.mp4 *.avi *.mov *.mkv; do
    if [ -f "$file" ]; then
        echo "Processing video: $file"
        ffmpeg -i "$file" -vf scale=1280:-1 -c:v libx264 -crf 23 -preset medium -an -movflags +faststart "${file%.*}_temp.mp4" && mv "${file%.*}_temp.mp4" "$file"
    fi
done

# 压缩图片，直接覆盖原文件
for file in *.jpg *.jpeg *.png; do
    if [ -f "$file" ]; then
        echo "Processing image: $file"
        convert "$file" -resize "1280x1280>" -quality 85 "${file%.*}_temp.${file##*.}" && mv "${file%.*}_temp.${file##*.}" "$file"
    fi
done

echo "All media files have been processed and original files have been overwritten."