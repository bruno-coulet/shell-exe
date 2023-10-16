#! /bin/bash
arr_record1= $(tail -n +2 Shell_Userlist.csv | cut -d ',' -f1)
arr_record2= $(tail -n +2 Shell_Userlist.csv | cut -d ',' -f2)
arr_record3= $(tail -n +2 Shell_Userlist.csv | cut -d ',' -f3)
arr_record4= $(tail -n +2 Shell_Userlist.csv | cut -d ',' -f4)
echo "array of SNos  : ${arr_record1[@]}"
echo "array of Qty   : ${arr_record2[@]}"
echo "array of Price : ${arr_record3[@]}"
echo "array of Value : ${arr_record4[@]}"
