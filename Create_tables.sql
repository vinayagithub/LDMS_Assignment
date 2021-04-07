Create table Departments (
         Department_Id       NUMBER(5) PRIMARY KEY,
         Department_Name     VARCHAR2(50) NOT NULL,
         Location            VARCHAR2(50) NOT NULL);
		 
Create table Employees (
         Employee_Id         NUMBER(10) PRIMARY KEY,
         Employee_Name       VARCHAR2(50) NOT NULL,
         Job_Title           VARCHAR2(50) NOT NULL,
         Manager_Id          NUMBER(10),
         DateHired           Date NOT NULL,
         Salary              NUMBER(10) NOT NULL,
         Department_Id       NUMBER(5) NOT NULL,
         CONSTRAINT FK_Department_Id FOREIGN KEY (Department_Id) REFERENCES Departments (Department_Id)
         );		 