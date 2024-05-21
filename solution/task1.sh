temp_foldren=`mktemp -d ./tempdir.XXXXXX`
unzip -d $temp_foldren data/archive-part2.zip
tar -xvf data/archive-part1.tar -C $temp_foldren
cd $temp_foldren
tar -czvf ../data/archive-combined.tar.gz .
cd ..
rm -r $temp_foldren

