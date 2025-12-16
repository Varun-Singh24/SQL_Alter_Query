CREATE TABLE Company_Emp (
    Employee_id Serial ,
    Name VARCHAR(30) Not Null, 
    age INT check (age >= 18) ,
    Department VARCHAR(50) , 
    Hired_Date Date 
);

Drop table if exists Company_Emp ;


--  Alter the table -- 
-- Adding the Column 

Alter Table Company_Emp 
add column E_Mail Varchar(50)  ; 
select * from Company_Emp ;  

-- Renaming the Column 
alter table Company_Emp rename column Employee_id to ID; 
Describe Company_Emp ;

-- Also we can drop the column 
Alter table Company_Emp Drop column Hired_Date ; 
Describe Company_Emp ; 

-- ADDING A COLUMN 

Alter table Company_Emp Add column Marital_Status Varchar(10)  ; 
Describe Company_Emp ; 
