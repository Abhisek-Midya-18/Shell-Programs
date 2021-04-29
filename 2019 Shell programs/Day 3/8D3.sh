clear
echo -n "Enter the number: "
read n
echo
echo -n "The prime factor of $n is/are:"
factor $n | cut -d ":" -f 2
echo
