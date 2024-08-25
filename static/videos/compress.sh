#!/bin/bash

# 检查 FFmpeg 是否安装
if ! command -v ffmpeg &> /dev/null
then
    echo "FFmpeg 未安装。请安装 FFmpeg 后再运行此脚本。"
    exit 1
fi

# 遍历当前目录下所有以 RDT- 开头的 .mp4 文件
for file in RDT-*.mp4
do
    # 检查文件是否存在（防止没有匹配的文件时出错）
    if [ -f "$file" ]
    then
        # 构建输出文件名
        output_file="compressed_${file}"
        
        echo "正在压缩 $file ..."
        
        # 使用 FFmpeg 压缩视频
        ffmpeg -i "$file" -vcodec libx264 -crf 23 "$output_file"
        
        echo "$file 压缩完成。输出文件：$output_file"
    fi
done

echo "所有匹配的视频已压缩完成。"