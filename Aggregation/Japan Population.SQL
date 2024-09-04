/*Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.*/

Solution-->>

Select SUM(Population)
From CITY
Where COUNTRYCODE ='JPN';

