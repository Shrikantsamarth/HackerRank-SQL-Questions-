/*Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.*/


Solution--->>>

Select w.id, wp.age, w.coins_needed, w.power
From Wands w
left Join wands_property wp on W.code = wp.code
Where is_evil = 0
AND w.coins_needed = (Select Min(coins_needed)
                           From Wands w1 
                           left Join wands_property wp1 on W1.code = wp1.code
                           Where w.power=w1.power AND wp.age=wp1.age)
Order by w.power DESC, Wp.age DESC;


