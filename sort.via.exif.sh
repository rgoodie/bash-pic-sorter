# Attemts to 

for FILE in `find -type f | egrep "(png$|jpg$|JPG$|PNG$)"`; 
do 
	
	# Get Year and Month inside a variable to 
	# use later in processing
	RAW=`exiftool -DateTimeOriginal $FILE`
	YEAR=`echo $RAW | perl -pe 's/.*([0-9]{4}).*/\1/g'`
	MONT=`echo $RAW | perl -pe 's/.*[0-9]{4}:([0-9]{2}).*/\1/g'`
	FOLDER="./$YEAR/$MONT"

	# make folder if not exists
	[ -d $FOLDER ] || mkdir -p $FOLDER

	# move file to that folder but only if there is data
	# to provide a year/month folder option
	if [ -n "$YEAR" ]; then
		mv $FILE $FOLDER
	fi
		
	
done;

# preg_match('/([0-9]{4})/',$sourcestring,$matches)