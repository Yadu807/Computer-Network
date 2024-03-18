#leap year
# set -vx
clear
if [ $# -gt 1 ]
then
echo "Syntax is<$0> [<year>]"
exit 1
fi
if [ $# -ne 1 ]
then
yr=`date +%y`
else
yr=$1
fi
d4=`expr $yr % 4`
d100=`expr $yr % 100`
d400=`expr $yr % 400`
if [ $d4 -eq 0 -a $d100 -ne 0 -o $d400 -eq 0 ]
then
echo "Leap year : $yr"
else
echo "$yr is not Leap year"
fi
