Use Ineuron_DB
Select * from Worker

-----Assignment 6-----
---Question 1

Select *from Worker
WHERE MONTH(Joining_Date) = 2 AND YEAR(Joining_Date) = 2014;

----Question 2------

Select * from Worker W1
WHERE W1.Salary IN
(Select  Salary
From Worker
GROUP BY Salary,Joining_Date
HAVING COUNT (*) >1)
AND W1.Joining_Date IN
(Select Joining_Date
From Worker
GROUP By Salary,Joining_Date
Having Count (*) >1)


---------Question 3------
With ID AS
(
  Select *, ROW_NUMBER() Over(Partition by First_Name Order By ID Desc) AS RN
  from Worker)
Select * from ID;

With ID AS
(
  Select *, ROW_NUMBER() Over(Partition by First_Name Order By ID Desc) AS RN
  from Worker)
Delete from ID Where RN >1;


-----Assignment 7 ------

-----Question 1---------

Select * from Worker
Where ID%2=1; ------ODD Values

Select * from Worker
Where ID%2=0; ------Even Values

------Question 2------

Create Table Worker2
(id int primary key , First_Name varchar(40) not null , Last_Name varchar(40) , Department varchar(30) , Salary int, Email varchar(30), Joining_Date date);

insert into Worker2 (ID,First_Name,Last_Name,Department,Salary,Email,Joining_Date)
Select * from Worker;

Select * from Worker2

---------Assignment 8-------
------Question 1-------

insert into Worker2 values 
(25,'Thomas' , 'Hardy' , 'Purchase',330000, 'Thomas@ineuron.com','2020-12-12'),
(26,'Victoria' , 'Futterkiste' , 'Marketing',460000, 'Alfreds@ineuron.com','2020-09-22')

Select * from Worker
INTERSECT
Select * from Worker2


-----Question 2---------
Select * from Worker2
Where ID NOT IN (Select id from Worker)

-------Assignment 9----------
--------Question 1----------

Select Top 10 *
From Worker ; 

-----Question 2----------

Select Top 1 Salary from 
(Select Distinct Top 5 Salary
From Worker
Order by Salary Desc)
Result
Order by Salary;

------Assignment 10-------
-----Question 1--------

Select Salary from Worker AS W1
Where 5-1 = (Select Count(Distinct Salary) from Worker W2
Where W2.Salary > W1.Salary);

------Question 2--------

Select * from
(
Select *, COUNT(*) OVer (Partition by Salary) as SalaryCnt
From Worker
) S1
Where SalaryCnt > 1
Order by Salary Desc;






















































































	 