#Execute command “hello” and “ls” and check it’s execution status and print whether command executed successful or not.
`echo hello`
checkstat=$?;
if [ $checkstat==0 ]
then
echo successful;
else
echo Not successful;
fi
`ls`
checkstat=$?;
if [ $checkstat==0 ]
then
echo successful;
else
echo Not successful;
fi

