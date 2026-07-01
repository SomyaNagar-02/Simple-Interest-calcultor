#!/bin/bash
echo "Enter the principal:"
read p
echo "Enter rate of interest per year:"
read r
echo "Enter time period in years:"
read t

# Input validation
if [ -z "$p" ] || [ -z "$r" ] || [ -z "$t" ]; then
    echo "Error: All fields are required. Please enter valid numbers."
    exit 1
fi

# Calculate simple interest
s=`expr $p \* $t \* $r / 100`
echo "The simple interest is: "
echo $s
