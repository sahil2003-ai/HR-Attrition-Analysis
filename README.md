👥 HR Attrition Analysis

This project focuses on analyzing employee attrition to understand patterns, risk factors, and potential drivers of turnover. It combines Excel, SQL, and Python (Jupyter Notebook) for data exploration, visualization, and insights.

📂 Project Structure

├── HR Attrition analysis.xlsx   # Excel file with data , pivot analysis & dashboard

├── HR_Attrition_Analysis.csv    # Raw HR attrition dataset

├── HR_Attrition_Analysis.ipynb  # Python notebook for EDA & visualization

├── HR_Attrition_Analysis.sql    # SQL scripts for analysis

└── README.md                    # Project documentation

🗂 Dataset

The dataset (HR_Attrition_Analysis.csv) contains employee-level data such as:

EmployeeID – Unique employee identifier

Age – Employee age

Gender – Gender of employee

Department – Department (e.g., Sales, R&D, HR)

JobRole – Role/title within the company

EducationField – Field of education

MonthlyIncome – Salary information

OverTime – Overtime status (Yes/No)

TotalWorkingYears – Career experience

Attrition – Whether the employee left the company (Yes/No)

---

## 📊 Dashboard Overview

**Key Metrics:**
- **Total Employees:** 1,470  
- **Total Attrition:** 237 (≈16%)  
- **Active Employees:** 1,233 (≈84%)  
- **Average Age:** 37 years  

**Highlights from the Dashboard:**
- **By Performance:** 200 low-performing vs. 37 high-performing employees left.  
- **By Department:** R&D had the highest attrition (133), followed by Sales (92) and HR (12).  
- **By Job Role:** Sales Executives (57) and Laboratory Technicians (62) showed significant attrition.  
- **By Gender:** Male (150) vs Female (87) attrition.  
- **By Overtime:** 127 employees with overtime left compared to 110 without.  
- **By Education Field:** R&D field faced the most attrition (133).  
- **By Experience:** Mid-level employees experienced the highest turnover (115).  

---

## 🧠 Insights

1. **High Attrition in R&D and Sales Departments**  
   Indicates potential workload imbalance or job dissatisfaction.

2. **Younger and Mid-level Employees**  
   Are more prone to leave — suggesting lack of career development opportunities.

3. **Performance Correlation**  
   Low performers dominate attrition, highlighting performance-based turnover.

4. **Work Distance and Overtime Factors**  
   Higher attrition among employees working nearby and doing overtime — signaling burnout.

---

## 🧮 SQL Analysis

The file [`HR_Attrition_Analysis.sql`](HR_Attrition_Analysis.sql) includes:
- Total employee count  
- Attrition rate and percentage by department, job role, education, and overtime  
- Age group segmentation  
- Average salary by department  
- Top 5 job roles with highest attrition rates  

Example query:
```sql
-- Attrition rate by department
SELECT Department,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS attrition_rate
FROM HR_Attrition
GROUP BY Department;
📊 SQL Analysis

File: HR_Attrition_Analysis.sql

Queries implemented

HR_Attrition_Analysis

:

Total employee count

Attrition count & percentage

Attrition by Department

Attrition by Job Role

Average salary by Department

Attrition rate by Education Field

Attrition by Overtime

Average working years by attrition

Attrition by Age Group (bucketed ranges)

Top 5 job roles with highest attrition rate

🐍 Python Analysis

File: HR_Attrition_Analysis.ipynb

Key steps:

Importing and cleaning HR data (pandas)

Exploratory Data Analysis (EDA)

Visualization of attrition by department, age, job role, salary, and overtime (matplotlib, seaborn, plotly)

Calculation of attrition rates by multiple dimensions (age, department, role, education field, overtime)

Insights into key drivers of attrition

📑 Excel Analysis

File: HR Attrition analysis.xlsx

Contains:

Raw dataset for quick analysis

Pivot tables summarizing attrition by department, job role, education, and overtime

Conditional formatting for high attrition areas

Charts for managerial presentation

🚀 How to Run
1️⃣ SQL

Run queries from HR_Attrition_Analysis.sql in MySQL / PostgreSQL / SQLite after creating the HR database.

2️⃣ Python
jupyter notebook HR_Attrition_Analysis.ipynb


Install dependencies:

pip install pandas matplotlib seaborn plotly

3️⃣ Excel

Open HR Attrition analysis.xlsx to explore pivot tables & charts.


⚡ Author: Sahil gaikwad
📅 Date: September 2025
