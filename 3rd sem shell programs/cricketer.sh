if [ $# -ne 1 ]
then
  echo "Wrong argument passing.."
  exit
fi
if [ ! -f $1 ]
then
  echo "File not found..."
  exit
fi

exec < $1
read l
s=$l
t20=0
one=0
test=0

while read l
do
  ch1=`echo $l | cut -d  " " -f 1` 
  ch2=`echo $l | cut -d  " " -f 2`
  ch3=`echo $l | cut -d  " " -f 3`
  ch4=`echo $l | cut -d  " " -f 4`
  
  t20=`echo $t20 + $ch2 | bc`
  test=`echo $test + $ch3 | bc`
  one=`echo $one + $ch4 | bc`
  total=`echo $ch2 + $ch3 + $ch4 | bc`
  echo $ch1 >> f1
  echo -n "$ch1  " >> f2
  echo -n "  $total " >>f2
  echo  >> f2
  echo $l >> f3
  
done

echo "Display the player name:-"
echo
cat f1
echo

echo "Total T20 Run is :- "$t20
echo "Total Oneday Run is :- "$one
echo "Total Test Run is :- "$test
echo

echo "Total Run of Every Player :-"
echo
cat f2
echo

echo "Display record descending order according to T20 runs :-"
echo
echo $s
sort +1 -3 -n -r f3
echo

echo "Display record according to Oneday runs :-"
echo
echo $s
sort +3 -5 -n  f3
echo

echo "Display record according to Test runs :-"
echo
echo $s
sort +2 -4 -n  f3
echo

mv f1 bin
mv f2 bin
mv f3 bin

