for YEAR in `seq 2012 2015`; 
do 
	
	for MONTH in `seq 1 12`;
	do 
		mkdir -p $YEAR/$MONTH/;
	done;
	
done;