# bash-pic-sorter
Series of bash scripts to sort photos or files into a /YEAR/MONTH/ file tree

# To use
Copy this file a folder containing unsorted photos and run in the context of that folder
```
cd ~/path/to/my/photos
wget https://raw.githubusercontent.com/rgoodie/bash-pic-sorter/master/sort.via.exif.sh
chmod +x sort.via.exif.sh
./sort.via.exif.sh
```

Let this run you should be left with a folder structure of ./{Year} and ./{Year}/{Month}. Copy this to any place. 

Requires
-
Exiftool which may be installed via `# apt install libimage-exiftool-perl`.


