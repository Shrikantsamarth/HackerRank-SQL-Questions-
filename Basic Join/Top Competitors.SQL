/*Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.*/



solution---->>>>

Select h.hacker_id, h.name
from Submissions s
Inner Join Hackers h on h.hacker_id = s.hacker_id
Inner Join Challenges c on c.challenge_id = s.challenge_id
Inner Join Difficulty d on d.difficulty_level = c.difficulty_level
Where s.score = d.score
AND d.difficulty_level = c.difficulty_level
group by h.hacker_id,h.name
having count(s.submission_id)>1
Order by count(s.submission_id) DESC, h.hacker_id ASC;

