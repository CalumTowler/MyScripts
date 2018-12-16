#!/bin/bash

# A script to loop through the fixed cell calculations and extract the free energy for convergance testing.

echo Creating files...
for (( i=$1; i<=$2; i+=50 ))
do
	echo Processing $i\eV...
	cd $i\eV
	echo $i\eV > FreeEng$i.txt
	grep free\ \ energy\ \ \ T OUTCAR >> FreeEng$i.txt
	echo Finished with this directory, moving onto the next...
	cd ..
done

echo Collecting files...
touch AllFreeEngs.txt

for (( i=$1; i<=$2; i+=50 ))
do
	echo Collecting from $i\eV...
	cd $i\eV
	cat FreeEng$i.txt >> ../AllFreeEngs.txt
	cd ..
	echo Moving onto next directory...
done

echo Finished!
