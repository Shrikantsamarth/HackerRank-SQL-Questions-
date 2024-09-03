/*
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note: The tables may contain duplicate records.*/



Solution--->
  
Select c.company_code, c.founder,
count (distinct l.lead_manager_code), count (distinct S.senior_manager_code), count( distinct M.manager_code),count(distinct E.employee_code)
from company C, Lead_manager L, senior_manager S, manager M, employee E
Where C.Company_code= L.company_code
And L.company_code=S.company_code
and S.company_code=M.company_code
and M.company_code=E.company_code
group by C.company_code, C.founder order by C.company_code;
