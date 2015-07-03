#!/bin/bash


for YEAR in `seq 2012 2015`; 
do 
	
	for MONTH in `seq 1 9`;
	do 
		SEARCHPATH="0$MONTH"
		SEARCHPATH=$YEAR$SEARCHPATH;
		find -type f | grep $SEARCHPATH | xargs -L1 -I {}  mv {} ./$YEAR/$MONTH/;
		SEARCHPATH=''
	done;
	for MONTH in `seq 10 12`;
	do 
		SEARCHPATH=$YEAR$MONTH
		find -type f | grep $SEARCHPATH | xargs -L1 -I {}  mv {} ./$YEAR/$MONTH/;
		SEARCHPATH=''
	done;
done;
