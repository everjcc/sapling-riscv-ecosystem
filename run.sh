#!/bin/bash

# python3 landscape-score.py --name Apache-Mahout

# define directory
# directory="./metadata/big-data-processing"
# directory="./metadata/cloud-computing-cloud-native"
# directory="./metadata/language-runtime"
# directory="./metadata/video-encoding-decoding-AI-computing"
directory="./metadata/virtualization-containerization"


if [ ! -d "$directory" ];then
    echo "Directory does not exist: $directory"
    exit 1
fi

for file in `ls $directory/* | grep Landscape`; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        echo $filename
		
		softwarename=$(echo "$filename" | awk -F'-Landscape' '{print $1}')
		echo $softwarename
		python3 landscape-score.py --name $directory/$softwarename
    fi
done
