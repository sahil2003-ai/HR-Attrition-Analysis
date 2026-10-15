# HR Attrition Analysis

A workforce analytics project using Python, SQL, and Excel to explore employee attrition and compare workforce indicators across employee groups.

![Python](https://img.shields.io/badge/Python-Analysis-blue) ![SQL](https://img.shields.io/badge/SQL-Analytics-blue) ![Excel](https://img.shields.io/badge/Excel-Reporting-green)

## Contents
- [Overview](#overview)
- [Business Questions](#business-questions)
- [Dataset](#dataset)
- [Workflow](#workflow)
- [Results and Metrics](#results-and-metrics)
- [Technology Stack](#technology-stack)
- [Repository Structure](#repository-structure)
- [Run the Project](#run-the-project)
- [Limitations and Next Steps](#limitations-and-next-steps)

## Overview
This project analyzes employee-level HR data to explore attrition patterns across department, job role, overtime, age group, income, satisfaction, and tenure. It combines notebook-based EDA, SQL queries, and an Excel workbook.

## Business Questions
- What share of employees are classified as attrited?
- How do attrition patterns vary across departments and job roles?
- How are overtime, income, satisfaction, and tenure represented in the dataset?
- Do Python, SQL, and Excel produce consistent counts and rates?

## Dataset
Source file: `HR_Attrition_Analysis.csv`.

| Metric | Saved notebook output |
|---|---:|
| Rows | 1,470 |
| Columns | 35 |
| Target | `Attrition` (Yes/No) |

The dataset includes department, job role, monthly income, overtime, job satisfaction, total working years, and years at the company. Reconfirm missing-value and duplicate counts by rerunning the notebook. Document the original source and license.

## Workflow
1. Load the CSV and inspect schema, types, missing values, and duplicates.
2. Define attrition rate as attrition-positive employees divided by the eligible employee count.
3. Explore overall and subgroup patterns in Python.
4. Run SQL queries and inspect filters and denominators.
5. Review Excel formulas and visual summaries.
6. Reconcile counts and rates across tools.

## Results and Metrics
The saved notebook output reports **1,470 rows × 35 columns**. The repository analysis covers attrition comparisons by department, job role, education field, overtime, age group, income, and working years. Numerical subgroup rates are not stated here because executed query outputs were not independently confirmed in this review.

Before adding a headline attrition rate, rerun the notebook and SQL and record the numerator, denominator, filters, and reporting population.

## Technology Stack
- Python and pandas for data profiling and EDA
- Jupyter Notebook for reproducible analysis
- SQL for grouped attrition queries
- Excel for summaries and visualization

## Repository Structure
```text
HR-Attrition-Analysis/
├── HR_Attrition_Analysis.csv
├── HR_Attrition_Analysis.ipynb
├── HR_Attrition_Analysis.sql
├── HR Attrition analysis.xlsx
└── README.md
```

## Run the Project
- Run `HR_Attrition_Analysis.ipynb` from top to bottom.
- Import the CSV into a compatible SQL engine and execute `HR_Attrition_Analysis.sql`.
- Open `HR Attrition analysis.xlsx` and validate its tables, formulas, and visuals.
- Reconcile employee counts and attrition rates across the three tools.

## Limitations and Next Steps
- Document the source dataset, data dictionary, date range, and license.
- Add verified attrition counts and rates by group.
- Include genuine screenshots from the workbook.
- Describe group differences as descriptive patterns, not proof of why employees leave.
- Handle employee-level data carefully and avoid publishing identifying information.

## Skills Demonstrated
Workforce analytics, KPI definitions, Python EDA, SQL aggregation, Excel reporting, data validation, and responsible interpretation.

## Author
**Sahil Gaikwad** · [GitHub](https://github.com/sahil2003-ai) · [LinkedIn](https://www.linkedin.com/in/sahil-gaikwad-a76b7224a/)
