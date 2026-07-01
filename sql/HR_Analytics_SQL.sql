CREATE DATABASE hr_analytics;
USE hr_analytics;
SELECT COUNT(*) AS TotalEmployees FROM Employee_Attritions;
select * from Employee_Attritions;
SHOW TABLES;
SELECT COUNT(*) AS EmployeesLeft
FROM employee_attritions
WHERE Attrition = 'Yes';

SELECT COUNT(*) AS CurrentEmployees
FROM employee_attritions
WHERE Attrition = 'No';

SELECT
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/
COUNT(*),2) AS AttritionRate
FROM employee_attritions;

SELECT
Department,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS EmployeesLeft
FROM employee_attritions
GROUP BY Department;

SELECT
Gender,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM employee_attritions
GROUP BY Gender;

SELECT
JobRole,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM employee_attritions
GROUP BY JobRole
ORDER BY AttritionCount DESC;

SELECT
Department,
ROUND(AVG(MonthlyIncome),2) AS AvgSalary
FROM employee_attritions
GROUP BY Department;

SELECT
ROUND(AVG(YearsAtCompany),2) AS AvgYears
FROM employee_attritions;

SELECT
OverTime,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM employee_attritions
GROUP BY OverTime;

SELECT
MaritalStatus,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM employee_attritions
GROUP BY MaritalStatus;

SELECT
EducationField,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM employee_attritions
GROUP BY EducationField;

SELECT
EmployeeNumber,
JobRole,
MonthlyIncome
FROM employee_attritions
ORDER BY MonthlyIncome DESC
LIMIT 5;

SELECT
ROUND(AVG(Age),1) AS AverageAge
FROM employee_attritions;

SELECT
JobSatisfaction,
COUNT(*) AS Employees
FROM employee_attritions
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

select Age from employee_attritions;
ALTER TABLE employee_attritions
RENAME COLUMN ï»¿Age TO Age;