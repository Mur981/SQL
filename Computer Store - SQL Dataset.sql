CREATE TABLE Manufacturers (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL,
  PRIMARY KEY (Code)   
);

CREATE TABLE Products (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL ,
  Price DECIMAL NOT NULL ,
  Manufacturer INTEGER NOT NULL,
  PRIMARY KEY (Code), 
  FOREIGN KEY (Manufacturer) REFERENCES Manufacturers(Code)
)


INSERT INTO Manufacturers(Code,Name) VALUES(1,'Sony');
INSERT INTO Manufacturers(Code,Name) VALUES(2,'Creative Labs');
INSERT INTO Manufacturers(Code,Name) VALUES(3,'Hewlett-Packard');
INSERT INTO Manufacturers(Code,Name) VALUES(4,'Iomega');
INSERT INTO Manufacturers(Code,Name) VALUES(5,'Fujitsu');
INSERT INTO Manufacturers(Code,Name) VALUES(6,'Winchester');

INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(1,'Hard drive',240,5);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(2,'Memory',120,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(3,'ZIP drive',150,4);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(4,'Floppy disk',5,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(5,'Monitor',240,1);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(6,'DVD drive',180,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(7,'CD drive',90,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(8,'Printer',270,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(9,'Toner cartridge',66,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(10,'DVD burner',180,2);


---1.1 Select the names of all the products in the store.

select * from Products;
Select * from Manufacturers;

select Name from Products;

-- 1.2 Select the names and the prices of all the products in the store.
select * from Products;
Select * from Manufacturers;

select Name,Price from Products;

-- 1.3 Select the name of the products with a price less than or equal to $200.
select Name,Price from Products
where Price<=200;

-- 1.4 Select all the products with a price between $60 and $120.

select Name,Price from Products
where Price BETWEEN 60 AND 120;

-- 1.5 Select the name and price in cents (i.e., the price must be multiplied by 100).
select name,price*100 as Cent from Products

-- 1.6 Compute the average price of all the products.

select avg(price) from Products;

-- 1.7 Compute the average price of all products with manufacturer code equal to 2.
select * from Products;
select AVG(price) from Products
where Manufacturer = 2;

-- 1.8 Compute the number of products with a price larger than or equal to $180.
select * from Products;
select count(name)from Products
where Price>=180;

-- 1.9 Select the name and price of all products with a price larger than or equal to $180, 
-- and sort first by price (in descending order), and then by name (in ascending order).
select * from Products;
select name,price from Products
where Price>=180
Order by Price desc,Name;

-- 1.10 Select all the data from the products, including all the data for each product's manufacturer.
select * from Products
select * from Manufacturers

select * from Products
Join Manufacturers
ON
Products.Manufacturer = Manufacturers.Code;

-- 1.11 Select the product name, price, and manufacturer name of all the products.

select a.name,a.price,b.name from Products
a join Manufacturers b
ON
a.Manufacturer = b.Code

-- 1.12 Select the average price of each manufacturer's products, showing only the manufacturer's code.

select AVG(price),Manufacturer from Products
Group by Manufacturer;

-- 1.13 Select the average price of each manufacturer's products, showing the manufacturer's name.

select * from Products
select * from Manufacturers

select AVG(p.Price),m.Name from Products
p JOIN Manufacturers m
ON
p.Manufacturer = m.Code
group by m.Name

-- 1.14 Select the names of manufacturer whose products have an average price larger than or equal to $150.

select AVG(a.price) as Averageprice,b.name from Products a
join Manufacturers b
ON
a.Manufacturer = b.Code
group by b.Name
having AVG(a.price)>=150;

-- 1.15 Select the name and price of the cheapest product.
select name,price from Products
where Price = 
(select(MIN(price))
from Products

-- 1.16 Select the name of each manufacturer along with the name and price of its most expensive product.

select max_price_mapping.name as manu_name, max_price_mapping.price, products_with_manu_name.name as product_name
from 
    (SELECT Manufacturers.Name, MAX(Price) price
     FROM Products, Manufacturers
     WHERE Manufacturer = Manufacturers.Code
     GROUP BY Manufacturers.Name)
     as max_price_mapping
   left join
     (select products.*, manufacturers.name manu_name
      from products join manufacturers
      on (products.manufacturer = manufacturers.code))
      as products_with_manu_name
 on
   (max_price_mapping.name = products_with_manu_name.manu_name
    and
    max_price_mapping.price = products_with_manu_name.price); 


-- 1.17 Add a new product: Loudspeakers, $70, manufacturer 2.
select * from Products
insert into Products 
values (11,'Loudspeakers',70,2)

-- 1.18 Update the name of product 8 to "Laser Printer".
update Products
set Name = 'Laser Printer'
where Code = 8;

-- 1.19 Apply a 10% discount to all products.

update products
set price=price*0.9;

-- 1.20 Apply a 10% discount to all products with a price larger than or equal to $120.
update Products
set Price=Price*0.9
where Price >= 120;

select * from Products






















