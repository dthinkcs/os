echo "21 34 23 24" | sed -E 's/\s+/\n/g' | sort > tmp.txt; echo `tr '\n' ' ' < tmp.txt`
