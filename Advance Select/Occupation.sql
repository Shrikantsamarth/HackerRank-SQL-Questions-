/* Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.


Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Output

Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria*/


--> Solution

With Doctor as (
Select 
    name,
    Row_number() over(order by name) as rn
    from Occupations
    where occupation LIKE 'Doctor'
)
,professor as(
Select 
    name,
    Row_number() over(order by name) as rn
    from Occupations
    where occupation LIKE 'Professor'
)
,singer as(
Select 
    name,
    Row_number() over(order by name) as rn
    from Occupations
    where occupation LIKE 'singer'
)
,actor as(
Select 
    name,
    Row_number() over(order by name) as rn 
    from Occupations
    where occupation LIKE 'actor'
)

Select 
        d.name,
        p.name,
        s.name,
        a.name
from professor p
left join doctor d on d.rn=p.rn
left join singer s on s.rn=p.rn
left join actor a on a.rn=p.rn
