CREATE OR REPLACE PROCEDURE Proc_Insert_Employee(
  ename_in     IN VARCHAR2,
  job_in       IN VARCHAR2,
  mgr_in       IN NUMBER,
  hiredate_in  IN DATE,
  sal_in       IN NUMBER,
  deptno_in    IN NUMBER) 
IS
 ecode   NUMBER;
 emesg   VARCHAR2(200);
BEGIN
 INSERT INTO Employees(
  Employee_Name,
  Job_Title,
  Manager_Id,
  DateHired,
  Salary,
  Department_Id)
 VALUES(
  ename_in,
  job_in,
  mgr_in,
  hiredate_in,
  sal_in,
  deptno_in);
 COMMIT;
EXCEPTION
 WHEN OTHERS THEN
  ecode := SQLCODE;
  emesg := SQLERRM;
  dbms_output.put_line(TO_CHAR(ecode) || '-' || emesg);
END insert_employee;
/