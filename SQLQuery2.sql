-- Assignment 2 Question 1

select * from [Ineuron_DB].[dbo].[Worker]
Order by ID ASC

select LEFT(First_Name,3) from [dbo].[Worker]

--Question 2

select CHARINDEX('a',[First_Name] Collate Latin1_General_CS_AS)
from [dbo].[Worker]
where [First_Name] = 'Amitabh'



--Question 3

Select W1.First_Name,W1.Salary,W1.Department
From Worker W1
Join (select MAX(Salary) as highest , department
from Worker group by Department) W2
on W1.Department = W2. Department and W1.Salary = W2.highest 



select First_Name, Min(salary) from [dbo].[Worker] Group by First_Name;