#!/bin/bash

#A script to resubmit multiple FixedCell optimisations.
#MOSTLY UNNCESSARY - CHECK BEFORE USE AND USE ONLY IF NECESSARY

for (( i=$1; i<=$2; i++ ))
do
	cd MP$i/FixedCell/
	qsub f_MP$i.script
	cd ../..
	echo Submitted MP$i
done




