#message good morning with username

hour=`date +%H`
if [ $hour -lt 20 ]
then
echo "Hello $USER Good Evening"
elif [ $hour -le 16 ]
then
echo "Hello $USER Good Afternoon"
elif [ $hour -lt 12 ]
then
echo "Hello $USER Good Morning"
else
echo "Hello $USER Good Night"
fi

