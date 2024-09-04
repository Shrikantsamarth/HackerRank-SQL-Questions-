/*We define an employee's total earnings to be their monthly Salary x Months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these 2 values as  space-separated integers.*/

Solution--->>>

Select (Salary*months) as Total_Earnings, Count(*)
From Employee
Group by Total_Earnings
Order by Total_earnings Desc
LIMIT 1;
