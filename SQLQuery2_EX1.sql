-- แบบฝึกหัดคำสั่ง SQL ใช้ฐานข้อมูล Northwind
--1. ต้องการรหัสพนักงาน คำนำหน้า ชื่อ นามสกุล ของพนักงานที่อยู่ในเมือง London
--2. ต้องการข้อมูลสินค้าที่มีรหัสประเภท 1,2,4,8 และมีราคา ช่วง 50-100$
--3. ต้องการประเทศ เมือง ชื่อบริษัทลูกค้า ชื่อผู้ติดต่อ เบอร์โทร ของลูกค้าทั้งหมด
--4. ข้อมูลของสินค้ารหัสประเภทที่ 1 ราคาไม่เกิน 50 หรือสินค้ารหัสประเภทที่ 8 ราคาไม่เกิน 75
--5. ชื่อบริษัทลูกค้า ที่อยู่ใน ประเทศ USA ที่ไม่มีหมายเลข FAX  เรียงตามลำดับชื่อบริษัท 

select EmployeeID,TitleOfCourtesy,FirstName,LastName
from Employees
where City = 'London';

select ProductID
from Products
where CategoryID in (1,2,4,8) and UnitPrice between 50 and 100;

select Country,City,CompanyName,ContactName,Phone
from Customers

select *
from Products
where (CategoryID = 1 and UnitPrice <= 50) or (CategoryID = 8 and UnitPrice <= 75)

select CompanyName
from Customers
where Country = 'USA' and Fax is NULL
order by CompanyName asc


--6 ต้องการรหัสลูกค้า ชื่อบริษัท และชื่อผู้ติดต่อ เฉพาะชื่อบริษัท 'con'
select CustomerID,CompanyName,ContactName
from Customers
where CompanyName like '%con%'
