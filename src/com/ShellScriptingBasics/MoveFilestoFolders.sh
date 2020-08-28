#1Move files from one folder to respective folders.

#!/bin/bash -x
for file in `ls *.txt`
do
	folderName=`echo $file | awk -F. '{print $1}'`;
	if [ -d $folderName]                   
	then                                                                                                  
		echo "Inside If";                                                                                      
		rm -r $folderName;                                                                                     
	fi                                                                                                     
	mkdir $folderName;                                                                                     
	mv $file $folderName;                                                                                  
done

