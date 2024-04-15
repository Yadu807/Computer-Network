#script to check if the given sides can be the sides of a trianle 
if [ $# -gt 1 ]
then
echo "syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
read -p "Enter the length of side a: " a
read -p "Enter the length of side b: " b
read -p "Enter the length of side c: " c
fi
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
then
echo "$a $b $c can not be the sides of triangle"
else
echo "$a $b $c can be the sides of triangle"
if [ $a -eq $b -a  $b -eq $c ]
then
echo "$a $b $c is Equalateral Triangle"
elif [  $a -eq $b -o  $b -eq $c -o $a -eq $c ]
then
echo "$a $b $c is Isosceles Triangle"
else
echo "$a $b $c is Scalene Triangle"
fi
fi

