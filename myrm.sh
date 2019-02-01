#!/bin/sh
mkdir -p /tmp/vasu321/eecs2031m/a1/recycle-bin #Creating the recycle-bin folder in this given path

echo "Enter file(s) to delete"

for f in $*; #0 or more files can be inputed to be deleted
do
if [ -f $f ] #Check whether the file is indeed a file
then
	echo deleting $f
	mv $f /tmp/vasu321/eecs2031m/a1/recycle-bin #Deleting the file and moving it to the recycle-bin created earlier
	else
		echo "Error: no target specified" #If no file was specified we give an error
fi
done
