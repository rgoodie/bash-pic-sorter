# Renames the months to two digit
# 1 becomes 01
# 2014/2 becomes 2014/02/

for YEAR in `seq 2012 2015`; 
do 
	for MONTH in `seq 1 9`;
	do 
		newMONTH=0$MONTH;
		mv $YEAR/$MONTH $YEAR/$newMONTH;
	done;
done;