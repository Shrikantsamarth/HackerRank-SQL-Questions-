/*
Given table TRIANGLES holds data for three fields namely A, B, and C.
+-------------+------------+
| Column      |   Type     |
+-------------+------------+
| A           | INTEGER    |
| B           | INTEGER    |
| C           | INTEGER    |
+-------------+------------+
 
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

--> Solution

Select CASE 
When A + B <=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle'
When A=B AND B=C THEN 'Equilateral'
When A=B OR B=C OR C=A THEN 'Isosceles'
Else 'Scalene'
END As TriangleType
From Triangles;
