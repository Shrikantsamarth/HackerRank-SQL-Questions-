/*Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

Solution 1:--->


 Select co.continent, Floor(AVG(c.population))
from country co Inner join city c on co.code=c.countrycode
Group by co.Continent;


Solution 2 --->>>

Select co.continent, Floor(AVG(c.population))
from country co, city c
Where co.code=c.countrycode
Group by co.Continent;


