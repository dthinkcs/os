ls | while read LINE; do echo -n "$LINE "; wc -l $LINE | awk '{print $1}'; done
