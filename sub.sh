#!/bin/sh
# gap and file_name can be change to what you wanna!
gap=499999
file_name="/home/weihu/oppein2ds01.csv"
total_num=`wc -l ${file_name} | awk -F' ' '{print $1}'`
echo "total line of csv is: $total_num"
a=1
for((i=1;i<${total_num};i+=1))
do	j=`expr $i + ${gap}`
	sed -n "${i},${j}p" $file_name > /home/weihu/oppein2ds01/oppein2ds01x$a.csv
	echo "$i and $j has been write to:oppein2ds01x$a.csv"
	a=`expr ${a} + 1`
	i=$j
done
