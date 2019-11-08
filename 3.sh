grep -E "ICT" stud.txt | wc -l

sed -E "s/IT/Information Technology/" stud.txt > ITStudents.txt

grep -E "1234" stud.txt | cut -d ":" -f 6-8 | sed "s/:/+/g" | awk '{print "(" $1 ")/3 "}' | bc

cat stud.txt | tr "[a-z]" "[A-Z]"

grep -E "MIT" * | cut -d ":" -f 1
grep -E "1" * | sed "s/1/ONE/g"

ls [0-9]* | wc -c # something fishy for each file print the number of lines, etc