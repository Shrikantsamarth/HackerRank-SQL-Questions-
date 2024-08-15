/* Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.


Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Output

Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria*/


--> Solution

  
with doctor as (
Select 
    Name, 
    Row_Number() Over(order by name) as rn
From Occupations 
Where Occupation like 'Doctor'
)
, professor as (Select 
                Name, 
                Row_Number() over(order by name) as rn
               From Occupations 
Where Occupation like 'Professor')
, singer as (Select 
             Name, 
             Row_Number() over(order by name) as rn
            From Occupations 
Where Occupation like 'Singer')

, Actor as (Select 
            Name, 
            Row_Number() over(order by name) as rn
           From Occupations
Where Occupation like 'Actor')

Select  d.name,
            p.name,
            s.name,
            a.name
from professor p
        left Join doctor d on d.rn=p.rn
        left Join singer s on s.rn=p.rn
        left Join actor a on a.rn=p.rn



