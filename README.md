# bash-pic-sorter
Series of bash scripts to sort photos or files into a /YEAR/MONTH/ file tree. There really is nothing magical about this file. It's executes a `for` loop, infers year and month from Exif information, and moves the file to that folder named for that year and month. It leaves you with folder sorted items, that you can move into your family's master file store. 

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


Errata
-
No warrenties given. As always, have back ups of your media and precious memories. Use at your own risk. Explore code to understand what's happening before blind use. Report back any errors, mistakes, or suggestions to [Issues](https://github.com/rgoodie/bash-pic-sorter/issues). 
