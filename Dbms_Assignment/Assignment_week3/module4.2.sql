SELECT
  emp.empName,
  emp.department,
  emp.phone,
  emp.email
FROM Employee AS emp
WHERE emp.phone LIKE '3-%';