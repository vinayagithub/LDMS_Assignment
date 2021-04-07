INSERT INTO DEPARTMENTS (Department_Id, Department_Name, Location)
	      select  1, 'Management', 'London' from dual
union all select  2, 'Engineering', 'Cardiff' from dual
union all select  3, 'Research & Development', 'Edinburgh' from dual
union all select  4, 'Sales', 'Belfast' from dual;

INSERT INTO Employees
          select  90001, 'John Smith',   'CEO',          NULL, to_date('01-01-1995','dd-mm-yyyy'), 100000, 1  from dual
union all select  90002, 'Jimmy Willis', 'Manager',     90001, to_date('23-09-2003','dd-mm-yyyy'), 52500,  4  from dual
union all select  90003, 'Roxy Jones',   'Salesperson', 90002, to_date('11-02-2017','dd-mm-yyyy'), 35000,  4  from dual
union all select  90004, 'Selwyn Field', 'Salesperson', 90003, to_date('20-05-2015','dd-mm-yyyy'), 32000,  4  from dual
union all select  90005, 'David Hallett','Engineer',    90006, to_date('17-04-2018','dd-mm-yyyy'), 40000,  2  from dual
union all select  90006, 'Sarah Phelps', 'Manager',     90001, to_date('21-03-2015','dd-mm-yyyy'), 45000,  2  from dual
union all select  90007, 'Louise Harper','Engineer',    90006, to_date('01-01-2013','dd-mm-yyyy'), 47000,  2  from dual
union all select  90008, 'Tina Hart',    'Engineer',    90009, to_date('28-07-2014','dd-mm-yyyy'), 45000,  3  from dual
union all select  90009, 'Gus Jones',    'Manager',     90001, to_date('15-05-2018','dd-mm-yyyy'), 50000,  3  from dual
union all select  90010, 'Mildred Hall', 'Secretary',   90001, to_date('12-10-1996','dd-mm-yyyy'), 35000,  1  from dual;	
