#Unit Conversion
#a. 1ft = 12 in then 42 in = ? ft
#b. Rectangular Plot of 60 feet x 40 feet in meters
#c. Calculate area of 25 such plots in acres




#!/bin/bash -x
inft=`awk 'BEGIN{print '42'/'12'}'`
echo "If 1 ft = 12 in then 42 in = $inft ft"
inmeter=`awk 'BEGIN{print '60'*'0.3048'"  X  "'40'*'0.3048'}'`
echo "The rectangular plot is $inmeter in meter"
area=`awk 'BEGIN{print '60'*'0.3048'*'40'*'0.3048'*'0.000247105'*'25'}'`
echo "The area of 25 rectangular plots in acre is $area"
