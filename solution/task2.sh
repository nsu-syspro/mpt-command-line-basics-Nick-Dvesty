find . -type f \( -name "foo.txt" -o -name "bar.txt" -o -name "baz.txt" \) -exec cat {} \;
