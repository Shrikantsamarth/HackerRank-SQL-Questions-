/*Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.*/


Solution---->>>


with cte as
(
  select h.hacker_id, h.name, count(challenge_id) as numb
  from  hackers h 
    inner join challenges c 
    on h.hacker_id = c.hacker_id
  group by h.name, h.hacker_id
)

select  hacker_id, name, numb
from cte
where numb IN
(
  select   numb
  from cte
  group by numb
  having (count(numb) <  2)  or (numb = (select  max(numb) from cte))
)

order by numb desc, hacker_id;
