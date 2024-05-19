temp_foldren=`mktemp -d`
this_foldren=`pwd`
unzip -d $temp_foldren ../data/archive-part2.zip
tar -xvf ../data/archive-part1.tar -C $temp_foldren
cd $temp_foldren
tar -czvf ../archive-combined.tar.gz .
cd $this_foldren
mv $temp_foldren/../archive-combined.tar.gz ../data/
rm -r $temp_foldren
