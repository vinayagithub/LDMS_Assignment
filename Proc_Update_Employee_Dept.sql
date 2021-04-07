CREATE OR REPLACE PROCEDURE Proc_Update_Employee_Dept(
  ename_in        IN VARCHAR2,
  eid_in          IN Number,
  dept_to_update_in   IN Number)
IS
 ecode   NUMBER;
 emesg   VARCHAR2(200);  
 DeptCount int;
BEGIN

SELECT COUNT(*) INTO DeptCount FROM Departments WHERE Department_Id = dept_to_update_in;
IF DeptCount = 0 THEN
RAISE_APPLICATION_ERROR(-20002,'Department '||TO_CHAR(dept_to_update_in)||' does not exist.');
END IF;

 UPDATE Employees
 SET   Department_Id = dept_to_update_in
 WHERE Employee_Name   = ename_in
   AND Employee_Id = eid_in;

EXCEPTION
 WHEN OTHERS THEN
  ecode := SQLCODE;
  emesg := SQLERRM;
  dbms_output.put_line(TO_CHAR(ecode) || '-' || emesg);
  
END;
/