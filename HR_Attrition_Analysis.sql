Create database HR;
use HR;
-- 1. Basic employee count
SELECT COUNT(*) AS total_employees FROM HR_Attrition;

-- 2. Attrition count & percentage
SELECT 
    Attrition,
    COUNT(*) AS employee_count,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM HR_Attrition), 2) AS percentage
FROM HR_Attrition
GROUP BY Attrition;

-- 3. Attrition by Department
SELECT 
    Department,
    Attrition,
    COUNT(*) AS employee_count
FROM HR_Attrition
GROUP BY Department, Attrition
ORDER BY Department;

-- 4. Attrition by Job Role
SELECT 
    JobRole,
    Attrition,
    COUNT(*) AS employee_count
FROM HR_Attrition
GROUP BY JobRole, Attrition
ORDER BY JobRole;

-- 5. Average salary by Department
SELECT 
    Department,
    AVG(MonthlyIncome) AS avg_monthly_income
FROM HR_Attrition
GROUP BY Department;

-- 6. Attrition rate by Education Field
SELECT 
    EducationField,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS attrition_rate
FROM HR_Attrition
GROUP BY EducationField;

-- 7. Attrition by Overtime
SELECT 
    OverTime,
    Attrition,
    COUNT(*) AS employee_count
FROM HR_Attrition
GROUP BY OverTime, Attrition;

-- 8. Average working years by attrition
SELECT 
    Attrition,
    AVG(TotalWorkingYears) AS avg_working_years
FROM HR_Attrition
GROUP BY Attrition;

-- 9. Attrition by Age Group
SELECT 
    CASE 
        WHEN ï»¿Age < 25 THEN 'Under 25'
        WHEN ï»¿Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN ï»¿Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN ï»¿Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    Attrition,
    COUNT(*) AS employee_count
FROM HR_Attrition
GROUP BY age_group, Attrition
ORDER BY age_group;

-- 10. Top 5 job roles with highest attrition rate
SELECT 
    JobRole,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS attrition_rate
FROM HR_Attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC
LIMIT 5;
