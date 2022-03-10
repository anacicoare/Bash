#!/bin/bash
find /etc -name '*.conf'> path_fisiere.txt
mkdir /home/student/tema3-scripts-output/backup-confs
while read path; do
	cp  $path /home/student/tema3-scripts-output/backup-confs 
done < path_fisiere.txt
find /etc -name '*.conf' 2> /home/student/tema3-scripts-output/backup-confs/errors.txt
for file in /home/student/tema3-scripts-output/backup-confs/*; do
	FILESIZE=$(stat -c%s "$file")
        if (( "$FILESIZE" > "1000" )); then
        mv "$file" "${file}_large"
        fi

done
