#!/bin/bash
#Archive the files from /var/log folder which have modified 7 days ago and move it to your backup folder
for file in `Find /var/log -type f -mtime -7 -ls`
do
	mv $file Backup_folder
done

