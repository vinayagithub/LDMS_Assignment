CREATE OR REPLACE PROCEDURE Proc_Display_TotalEmployee_Salary(
  deptid_in          IN Number)
IS

v_Salary NUMBER(10,2);
BEGIN

SELECT sum(Salary) INTO v_Salary FROM Employees
WHERE Department_Id = deptid_in;
  
DBMS_OUTPUT.PUT_LINE ('Salary: '||TO_CHAR(v_Salary));  

EXCEPTION
 WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE ('Employee not found.'); 
  
END;
/