CREATE OR REPLACE PROCEDURE Proc_Display_DeptEmployees(
  deptid_in          IN Number)
IS
l_cnt  NUMBER := 0;

BEGIN
  
FOR cur_r IN (SELECT Employee_Name 
                   FROM employees
                  WHERE Department_Id  = deptid_in)
   LOOP
      l_cnt := l_cnt + 1;
      DBMS_OUTPUT.put_line ('Employee name is :' || cur_r.Employee_Name);
   END LOOP;

   IF l_cnt = 0
   THEN
      DBMS_OUTPUT.put_line ('Your select statement retrieved 0 rows.');
   END IF;

EXCEPTION
 WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE ('Employee not found.'); 
  
END;
/