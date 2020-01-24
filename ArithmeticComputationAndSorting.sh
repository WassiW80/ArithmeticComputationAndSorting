#!/bin/bash -x
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c
result1=`echo "$a+$b*$c" | bc`
result2=`echo "$a*$b+$c" | bc`
result3=`echo "scale=2;$c+$a/$b" | bc`
result4=`echo "$a%$b+$c" | bc`
