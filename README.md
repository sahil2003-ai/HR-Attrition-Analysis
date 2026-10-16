# HR Attrition Analysis

A workforce analytics project built with **Python, SQL and Excel** to examine employee attrition and explore how attrition rates vary across departments, job roles, age groups, business travel, education fields, income, work-life balance and tenure.

<p align="left">
  <img src="https://img.shields.io/badge/Python-pandas%20%7C%20EDA-3776AB?logo=python&logoColor=white" alt="Python and pandas" />
  <img src="https://img.shields.io/badge/SQL-Workforce%20Analytics-336791?logo=mysql&logoColor=white" alt="SQL" />
  <img src="https://img.shields.io/badge/Excel-HR%20Reporting-217346?logo=microsoftexcel&logoColor=white" alt="Excel" />
  <img src="https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter&logoColor=white" alt="Jupyter Notebook" />
</p>

## Project overview

Employee attrition is an important workforce metric, but an overall rate alone cannot explain how workforce outcomes differ across employee groups. This project analyzes employee-level HR records, defines clear attrition KPIs, compares group-level counts and rates, and provides analysis artifacts that can be reviewed through Python, SQL and Excel.

The repository contains a source CSV, an exploratory-analysis notebook, a SQL script with business queries, and an Excel workbook.

## Dataset

**Source file:** [`HR_Attrition_Analysis.csv`](HR_Attrition_Analysis.csv)

The saved notebook profile reports **1,470 employee records and 35 columns**. The CSV contains demographic, job, satisfaction, compensation, travel and tenure fields, along with the binary `Attrition` target.

| Dataset metric | Value |
|---|---:|
| Employee records | 1,470 |
| Columns | 35 |
| Attrition categories | Yes / No |
| Missing values in notebook profile | 0 across the inspected columns |
| Derived age groups | 20–25, 26–35, 36–45, 46–55, 56+ |

### Important fields

| Field | Description |
|---|---|
| `Attrition` | Whether the employee is marked as having left (Yes/No) |
| `Age`, `Gender`, `MaritalStatus` | Demographic descriptors |
| `Department`, `JobRole`, `JobLevel` | Organizational and role information |
| `BusinessTravel`, `OverTime` | Travel and overtime indicators |
| `MonthlyIncome`, `PercentSalaryHike` | Compensation-related fields |
| `JobSatisfaction`, `EnvironmentSatisfaction`, `RelationshipSatisfaction` | Employee-reported satisfaction measures |
| `WorkLifeBalance`, `JobInvolvement` | Work experience indicators |
| `TotalWorkingYears`, `YearsAtCompany` | Overall experience and company tenure |
| `YearsInCurrentRole`, `YearsSinceLastPromotion`, `YearsWithCurrManager` | Role progression and manager tenure |

## Key results and metrics

The following figures are from the saved output of `HR_Attrition_Analysis.ipynb`. Counts and rates describe this dataset; they do **not** establish why employees leave.

### Overall workforce KPIs

| KPI | Result |
|---|---:|
| Total employees | 1,470 |
| Employees marked as attrited | 237 |
| Overall attrition rate | **16.12%** |
| Average monthly income | 6,502.93 (dataset currency/unit not specified) |
| Average age | 36.92 years |
| Average work-life balance score | 2.76 |

**Definition:** attrition rate = employees with `Attrition = Yes` ÷ all employee records in the dataset. The rate is 237 ÷ 1,470 = 16.12%.

### Attrition by department

| Department | Employees | Attrition count | Attrition rate |
|---|---:|---:|---:|
| Sales | 446 | 92 | **20.63%** |
| Human Resources | 63 | 12 | **19.05%** |
| Research & Development | 961 | 133 | **13.84%** |

Sales has the highest departmental attrition rate in this dataset, while Research & Development has the lowest of the three departments.

### Attrition by job role

The following roles have the highest saved attrition rates in the notebook's role-level summary:

| Job role | Employees | Attrition count | Attrition rate |
|---|---:|---:|---:|
| Sales Representative | 83 | 33 | **39.76%** |
| Laboratory Technician | 259 | 62 | **23.94%** |
| Human Resources | 52 | 12 | **23.08%** |
| Sales Executive | 326 | 57 | **17.48%** |
| Research Scientist | 292 | 47 | **16.10%** |

Rates should always be interpreted alongside group sizes. For example, the Sales Representative group has fewer employees than several other roles, so changes in a small number of records can affect its rate more strongly.

### Attrition by age group

| Age group | Employees | Attrition count | Attrition rate |
|---|---:|---:|---:|
| 20–25 | 123 | 44 | **35.77%** |
| 26–35 | 606 | 116 | **19.14%** |
| 36–45 | 468 | 43 | **9.19%** |
| 46–55 | 226 | 26 | **11.50%** |
| 56+ | 47 | 8 | **17.02%** |

The highest rate in the notebook's age grouping is among employees aged 20–25. These group comparisons are descriptive and should not be interpreted as evidence that age causes attrition.

### Other dimensions explored

The notebook also compares attrition by gender, business travel, education field, monthly income, work-life balance and years at the company. It generates plots for these dimensions, including income distributions split by attrition status and rates/counts over tenure.

## Analysis workflow

1. **Load the data** from the CSV and inspect dimensions, data types and sample records.
2. **Profile data quality** by checking missing values and descriptive statistics.
3. **Prepare analysis fields** by normalizing column names, creating age groups and converting the attrition label to a binary flag.
4. **Calculate KPIs** for total employees, attrition count, attrition rate, average income, average age and work-life balance.
5. **Segment the workforce** by department, job role, age group, gender, business travel and education field.
6. **Visualize patterns** with bar charts, a pie chart, a box plot and tenure-related trend charts.
7. **Explore SQL summaries** to compare attrition counts and rates across job and employee dimensions.
8. **Review Excel output** and reconcile its calculations with the notebook and SQL definitions.

## Python notebook

Analysis file: [`HR_Attrition_Analysis.ipynb`](HR_Attrition_Analysis.ipynb)

The saved notebook includes:

- Data loading and shape check
- Data type, missing-value and descriptive-statistics summaries
- Column-name normalization
- Derived `AgeGroup` and `Attrition_Flag` fields
- Overall HR KPI table
- Attrition count/rate summaries by department, job role, age group, gender, business travel and education field
- Visualization of attrition, income, work-life balance and tenure patterns

**Libraries used:** pandas, NumPy and Matplotlib. The notebook uses the CSV filename with mixed capitalization (`HR_Attrition_analysis.csv`); on case-sensitive file systems, ensure the notebook's input path exactly matches the repository filename `HR_Attrition_Analysis.csv` before running.

## SQL analysis

Script: [`HR_Attrition_Analysis.sql`](HR_Attrition_Analysis.sql)

The script includes queries for:

- Total employee count
- Attrition count and percentage
- Attrition by department
- Attrition by job role
- Average monthly income by department
- Attrition rate by education field
- Attrition by overtime
- Average total working years by attrition status
- Attrition grouped by age
- Top job roles by attrition rate

**SQL compatibility note:** the script currently uses `CREATE DATABASE` and `USE HR` statements associated with MySQL-style workflows, while the notebook is Python/pandas based. Review the SQL dialect and import the CSV into a table named `HR_Attrition` before execution. The age-group query also contains a BOM-like prefix before `Age` in the column reference, which may need to be corrected to `Age` depending on the database schema.

The README's reported results are drawn from the saved notebook output. I have not independently executed the SQL script in a live database or recalculated the workbook formulas during this review.

## Excel workbook

Workbook: [`HR Attrition analysis.xlsx`](HR%20Attrition%20analysis.xlsx)

The Excel workbook is included for reviewing tabular HR analysis and any workbook-based reporting. Open it in Excel and verify its formulas, pivots and charts against the CSV and notebook. The repository currently contains no separate image or screenshot files, so this README does not embed invented visuals. If the workbook has dashboard sheets, export screenshots of those actual sheets into an `images/` directory and add them here for a visual preview.

## Repository structure

```text
HR-Attrition-Analysis/
├── HR_Attrition_Analysis.csv
├── HR_Attrition_Analysis.ipynb
├── HR_Attrition_Analysis.sql
├── HR Attrition analysis.xlsx
└── README.md
```

## Run the project

### 1. Clone the repository

```bash
git clone https://github.com/sahil2003-ai/HR-Attrition-Analysis.git
cd HR-Attrition-Analysis
```

### 2. Install Python libraries

```bash
python -m venv .venv
```

Activate the environment:

```bash
# Windows PowerShell
.venv\\Scripts\\Activate.ps1

# macOS / Linux
source .venv/bin/activate
```

Install the notebook dependencies:

```bash
pip install pandas numpy matplotlib jupyter
```

### 3. Run the notebook

Open Jupyter:

```bash
jupyter notebook HR_Attrition_Analysis.ipynb
```

Make sure the CSV path and filename in the first data-loading cell match the exact repository filename. Run the cells from top to bottom to regenerate the summary tables and charts.

### 4. Run SQL queries

Create/select a compatible database, import the CSV into a table named `HR_Attrition`, and execute `HR_Attrition_Analysis.sql` after reviewing its dialect-specific statements and age-column reference.

### 5. Review the Excel workbook

Open `HR Attrition analysis.xlsx`, inspect the relevant sheets, and reconcile its totals and subgroup metrics with the notebook's defined numerator and denominator.

## Limitations and next steps

- **Dataset provenance:** add the original source, dataset version and license.
- **SQL validation:** correct the age-column reference and confirm the intended SQL dialect and table schema.
- **Notebook path:** align the CSV filename capitalization so it runs consistently on Windows, macOS and Linux.
- **Cross-tool reconciliation:** confirm that Python, SQL and Excel use the same employee population, filters and attrition-rate denominator.
- **Dashboard screenshots:** export real workbook visuals to an `images/` folder if you want the README to display them.
- **Responsible interpretation:** attrition differences indicate association in this dataset, not causation. Avoid using these group summaries alone to make consequential decisions about individual employees.
- **Reproducibility:** pin dependency versions and add a short data dictionary describing coded satisfaction scales and dataset units.

## Skills demonstrated

**Analytics:** HR KPI definitions, attrition-rate calculations, group comparisons, descriptive analysis  
**Python:** pandas, NumPy, Matplotlib, data preparation, exploratory data analysis  
**SQL:** aggregations, conditional counts, group-level metrics  
**Excel:** workforce reporting and cross-checking  
**Communication:** documenting assumptions, denominator definitions and limitations

## Author

**Sahil Gaikwad**  
[GitHub](https://github.com/sahil2003-ai) · [LinkedIn](https://www.linkedin.com/in/sahil-gaikwad-a76b7224a/)
