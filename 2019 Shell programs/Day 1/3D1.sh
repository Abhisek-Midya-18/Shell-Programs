while true
do
  clear
  echo "1.Addition"
  echo "2.Subtraction"
  echo "3.Multipication"
  echo "4.Division"
  echo "5.exit"
  echo
  echo -n "Enter your choice: "
  read ch
  case $ch in
    1)
      echo
      echo -n "Enter the first number: "
      read a
      echo 
      echo -n "Enter the secound number: "
      read b
      echo
      let r=a+b  
      echo "The Addition is => $r"
      ;;
    2)
      echo
      echo -n "Enter the first number: "
      read a
      echo 
      echo -n "Enter the secound number: "
      read b
      echo
      let r=a-b  
      echo "The Subtraction is => $r"
      ;;
    3)
      echo
      echo -n "Enter the first number: "
      read a
      echo 
      echo -n "Enter the secound number: "
      read b
      echo
      let r=a*b  
      echo "The Multipication is => $r"
      ;;
    4)
      echo
      echo -n "Enter the first number: "
      read a
      echo 
      echo -n "Enter the secound number: "
      read b
      echo
      r=`echo "scale=2; $a/$b" | bc`  
      echo "The Subtraction is => $r"
      ;;
    5)
      echo
      exit
      ;;
    *)
      echo
      echo "Wrong choice..."
      echo
  esac
  echo
  echo -n "Do you continue ? (y/n)  "    
  read ch
  if ! [ "$ch" = "Y" -o "$ch" = "y" ]
  then
    echo
    exit
  fi  
done
