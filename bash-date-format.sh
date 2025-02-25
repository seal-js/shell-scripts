#!/bin/bash
 
# Date command accepts options if provided any
# $ date +<format-option><format-option>
#
# To format date with spaces, use the syntax
# $ date '+<format-option><format-option> <format-option>'
 
d=`date +%m-%d-%Y`
echo $d    # 12-30-2017

d=`date +%m-%Y`
 
echo $d    # 12-2017
 
d=`date '+%A %d-%B, %Y'`
 
echo $d   #  Saturday 30-December, 2017

# Get curent year
year=`date +%Y`
echo "Current year: $year"
year=`date +%y`
echo "Current year: $year"