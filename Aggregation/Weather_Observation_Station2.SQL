/*Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.*/


Solution--->>>

Select Round(SUM(LAT_N),2), Round(SUM(LONG_W),2)
From STATION;
