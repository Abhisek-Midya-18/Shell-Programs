if [ $# -ne 2 ]
then
  echo "Wrong argument passing."
  exit
fi
if [ $(( $1 % 2 )) -eq 0 ]  
then 
  echo "error (month should be odd...)"
  exit
fi
if [ $(( $2 % 2 )) -ne 0 ]   
then 
  echo "error (year should be even...)"
  exit
fi
echo
echo "The calender is:- "
echo
cal $1 $2
echo
