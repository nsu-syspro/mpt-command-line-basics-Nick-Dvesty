temp_foldren=`mktemp -d`
echo $temp_foldren
unzip -d $temp_foldren ../data/archive-part2.zip
tar -xvf ../data/archive-part1.tar -C $temp_foldren
tar -czvf ../data/archive-combined.tar.gz $temp_foldren/some
rm -r  $temp_foldren
