CREATE OR REPLACE PROCEDURE Proc_Display_Employee_Salary(
  ename_in        IN VARCHAR2,
  eid_in          IN Number)
IS

v_Salary NUMBER(10,2);
BEGIN

SELECT Salary INTO v_Salary FROM Employees
WHERE Employee_Id = eid_in
  AND Employee_Name = ename_in;
  
DBMS_OUTPUT.PUT_LINE ('Salary: '||TO_CHAR(v_Salary));  

EXCEPTION
 WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE ('Employee not found.'); 
  
END;
/