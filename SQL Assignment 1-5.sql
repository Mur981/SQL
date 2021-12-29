Use Ineuron_DB
Select * from Worker

 //Assignment 1

 //Question 1

 Select *From Worker
     order by ID Asc
Select * from Worker as First_Name;


//Question 2

select Distinct [Department] from Worker

//Question 3 

 Select *From Worker
     order by ID Asc
Select Top 5 * from Worker;


----Assignment 2
---Question 1

SELECT LEFT ([First_Name],3)
From Worker;

----Question 2

Select *From Worker

Select CHARINDEX('a','Amitabh',4);

---Question 3

Select W1.First_Name,W1.Salary,W1.Department
From Worker AS W1
JOIN (Select MAX(Salary) AS Highest, Department
From Worker GROUP BY Department) W2
ON W1.Department = W2.Department AND W1.Salary = W2.Highest;


----Assignment 3
---Question 1

Select RTRIM([First_Name])
From Worker;

---Question 2

Select DISTINCT ([Department]) , LEN([Department]) AS Length 
From Worker;

-----Question 3

select * from Worker

  Select Top 1 Salary from 
  (Select Distinct Top 1 Salary
  From Worker
  Order by Salary DESC)
  Result
  Order by Salary;

  ----In Top under Select Distint you can mention which Top salary you want to view---

----4.---Assignment 4-----

-----Question 1----------

Select first_Name From Worker

Select REPLACE(First_Name,'a','A')
from Worker;

-----Question 2---------

Select * from Worker
ORDER BY First_Name , Department DESC;

------Question 3---------
Select* from Worker

Select [First_Name] , [Last_Name]
From Worker
ORDER BY Salary DESC;

-------Assignment 5----------
---Question 1--------
select * from Worker

Select *from Worker
WHERE First_Name ! = 'Vipul' AND First_Name ! = 'Satish';

-------Question 2--------

Select [First_Name] from Worker
WHERE First_Name Like '_____h';

------Question 3------

Select * from Worker
WHERE Email  NOT LIKE '%@ineuron.com';































































	 