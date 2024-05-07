 # To count number of words and lines in a file without using wc command

if [ $# -ne 1 ]
then
	echo "Syntax is <$0> [<file name>]"
	exit 1
fi

flag=0
file=$1

if [ $# -eq 1 ]
then
	term=`tty`
	exec < $1
	flag=1
fi

while read line
do
	number_of_lines=`expr $number_of_lines + 1`
	set $line > /dev/null
	number_of_words=`expr $number_of_words + $#`
done

echo "Number of lines in $file =  $number_of_lines"
echo "Number of words in $file =  $number_of_words"

if [ $flag -eq 1 ]
then
	exec < $term
fi
exit 0

