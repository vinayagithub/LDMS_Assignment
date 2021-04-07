CREATE OR REPLACE PROCEDURE Proc_Update_Employee_Salary(
  ename_in        IN VARCHAR2,
  eid_in          IN Number,
  Percentage_in   IN Number,
  Inc_Dcr_Flag    IN CHAR)
IS
 ecode   NUMBER;
 emesg   VARCHAR2(200);  
BEGIN

IF Inc_Dcr_Flag = 'I' THEN
  UPDATE Employees
  SET   salary = salary * Percentage_in
  WHERE Employee_Name   = ename_in
    AND Employee_Id = eid_in;
ELSE
   UPDATE Employees
  SET   salary = salary * Percentage_in
  WHERE Employee_Name   = ename_in
    AND Employee_Id = eid_in;
END;    

EXCEPTION
 WHEN OTHERS THEN
  ecode := SQLCODE;
  emesg := SQLERRM;
  dbms_output.put_line(TO_CHAR(ecode) || '-' || emesg);
  
END;
/