/*Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

Solution --->>>

Select c.Name
From city c left Join country co on c.countrycode = co.code
Where co.continent = 'AFRICA';
