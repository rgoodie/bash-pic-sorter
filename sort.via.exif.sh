

# Create a for loop using 
# find - That only does ONE LEVEL (as to not look at already sorted files)
# grep - Look for specific types of files
for FILE in `find -maxdepth 1 -type f | egrep "(png$|jpg$|mov$|mp4$|JPG$|PNG$|MOV$|MP4$)"`; 
do 

	echo $FILE

	RAW=`exiftool $FILE | grep "File Modification Date/Time"`
	YEAR=`echo $RAW | perl -pe 's/.*([0-9]{4}).*/\1/g'`
	MONT=`echo $RAW | perl -pe 's/.*[0-9]{4}:([0-9]{2}).*/\1/g'`
	FOLDER="./$YEAR/$MONT"

	# make folder if not exists
	[ -d $FOLDER ] || mkdir -p $FOLDER

	# move file to that folder but only if there is data
	# to provide a year/month folder option
	if [ -n "$YEAR" ]; then
		mv $FILE $FOLDER 2>/dev/null
		if [ $? -ne 0 ]; then
		    echo "$FILE move failed"
		fi
	fi

done;
		