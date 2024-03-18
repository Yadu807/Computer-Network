#multiplicatuion table of a no.

if [ # -ne 1 ]
then
echo "syntax error"
exit 1
fi
i=1
while [ $i -le 10 ]
do
echo "$i X $1 = `expr $i \* $1`"
i=`expr $i + 1`
done 
