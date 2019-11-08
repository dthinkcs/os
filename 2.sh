# echo "is" >> sample.txt
# >> for appending to a file
# > for writing to a file
# < to read from a file
# todo: delete


grep -E "^.{2}$" sample.txt # any char  ^-> starts $->ends 
echo ""
grep -E "^[A-Z]" sample.txt
echo ""
grep -E "[.]$" sample.txt
echo ""
grep -E "\s+" sample.txt
echo ""
grep -E "[0-9]" sample.txt > out.txt
