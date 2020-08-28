#Append current date to all log files name which has extension .log.1 from a folder
#!/bin/bash -x
for file in `ls *.log.1`
do
	today=`date +%d%m%Y`;
	firstName=`echo $file | awk -F. '{print $1}'`;
	NewName="$firstName"_"$today";
	mv "$file" "${NewName%.log.1}.log”;
done

