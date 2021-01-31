echo -n "Enter the year: "
read year
if [ $(( $year % 400 )) -eq 0 ]
then
  echo "The entered year $year is a leap year..."
elif [ $(( $year % 4 )) -eq 0 -a $(( $year % 100 )) -ne 0 ]
then
  echo "The entered year $year is a leap year..."
else
  echo "The entered year $year is not a leap year..."
fi
