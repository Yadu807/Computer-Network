#All prime numbers in a range
if [ $# -ne 2 ]
then
echo "Syntax error<0>[<number>]"
exit 0
fi

n1=$1
n2=$2

if [ $n1 -gt $n2 ]
then
temp=$n1
n1=$n2
n2=$temp
fi
if [ $n1 -lt 2 ]
then
n1=2
fi
while [ $n1 -le $n2 ]
do
 i=2
while [ $i -le `expr $n1 / 2` ]
 do
   if [ `expr $n1 % $i` -eq 0 ]
    then
	break
   fi
 i=`expr $i + 1`
 done

if [ $i -gt `expr $n1 / 2` ]
then
	echo -n"\n $n1\n"
fi
n1=`expr $n1 + 1`
done
exit 1


