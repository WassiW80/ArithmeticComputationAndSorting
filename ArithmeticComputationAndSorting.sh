#!/bin/bash -x
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c
result1=`echo "scale=2;$a+$b*$c" | bc`
result2=`echo "scale=2;$a*$b+$c" | bc`
