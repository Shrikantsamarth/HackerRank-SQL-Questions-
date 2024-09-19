/*You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.*/


Solution --->>>
Select  
    H.Hacker_id,
    H.Name,
    Sum(maxscore)
    From Hackers H
    Inner Join (Select 
        max(score) As maxscore, Hacker_id
        from Submissions
Group by challenge_id, Hacker_id) AS subquery 
On subquery.hacker_id = h.hacker_id
Group by H.hacker_id, H.name
Having Sum(maxscore) > 0
Order By Sum(maxscore) Desc, Hacker_id Asc
;
