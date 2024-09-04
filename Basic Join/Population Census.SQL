/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

Solution--->>>

Select SUM(c.Population)
From City c left Join Country co on C.countrycode = co.code
Where Co.continent = 'ASIA';

