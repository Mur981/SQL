Select * From [dbo].[Worker]

select * from Worker
where Department = 'Finance' 
and Salary > 4000


select * from [dbo].[Worker]
where [First_Name] = 'Meeri'

-- In Statement
Select
[First_Name],
[Last_Name],
[Email],
[Salary]
from [dbo].[Worker]
where First_Name in ('Leena','Simone')
and Salary > 0


-- Between Statement

Select
[First_Name],
[Last_Name],
[Email],
[Salary]
from [dbo].[Worker]
where
Salary between 20000 and 60000


select * from Worker
insert into [dbo].[Worker] values (15,'Anna','Mohan','Null','12000','Anna@mohan.com','2009-11-21')

---Null Values

select
[First_Name],
[Last_Name],
[Department]
from [dbo].[Worker]
where [Department]is null;




