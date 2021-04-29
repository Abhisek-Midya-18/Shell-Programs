clear
echo -n "Enter the decimal number : "
read n
a=`echo "ibase=10;obase=2;$n" | bc`
b=`echo "ibase=10;obase=16;$n" | bc`
echo
echo "The binary equevalent of $n is $a "
echo
echo "The hexadecimal equevalent of $n is $b "
echo
