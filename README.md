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

📌 Future Improvements

Build a predictive machine learning model for attrition risk (e.g., Logistic Regression, Random Forest).

Create an interactive dashboard using Power BI or Tableau.

Incorporate employee satisfaction survey data for deeper insights.

⚡ Author: Sahil gaikwad
📅 Date: September 2025
