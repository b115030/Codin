#Check if a folder exists or not. If it’s not present, create it.
#!/bin/bash -x
read -p “enter the directory path” path
if [ ! -d $path ]
then 
	mkdir $path;
else 
	echo Directory exists;
fi

