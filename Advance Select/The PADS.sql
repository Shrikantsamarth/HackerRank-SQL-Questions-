/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, 
immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). 
For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. 
Sort the occurrences in ascending order, and output them in the following format: 
*/

--> Solution

select concat(Name, '(', Left(occupation,1), ')')
from occupations
order by name;

select concat('There are a total of', ' ', count(Occupation),' ', 
lower(Occupation), 's.')
from Occupations
group by occupation
order by count(occupation), Occupation
