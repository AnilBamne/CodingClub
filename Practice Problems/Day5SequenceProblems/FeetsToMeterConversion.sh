##!/bin/bash -x

echo "Length of plot is 60 feet ";

echo "width of plot is 40 feets";


LengthInMeter=$(echo | awk 'BEGIN {print 60*0.3048}');
echo "Length of that plot in meter is : $LengthInMeter"

WidthInMeter=$(echo | awk 'BEGIN {print 40*0.3048}');
echo "Width of that plot in meter is : $WidthInMeter"


