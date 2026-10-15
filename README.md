# HR Attrition Analysis

A workforce-analytics project using Python, SQL, and Excel to inspect employee attrition patterns and compare workforce indicators.

## Project components

| File | Purpose |
|---|---|
| `HR_Attrition_Analysis.csv` | Employee-level analysis dataset |
| `HR_Attrition_Analysis.ipynb` | Python EDA |
| `HR_Attrition_Analysis.sql` | SQL query definitions |
| `HR Attrition analysis.xlsx` | Workbook and dashboard/report |

## Dataset profile

Saved notebook output reports **1,470 rows × 35 columns** in `HR_Attrition_Analysis.csv`.

The target field is `Attrition` (Yes/No). The available fields include employee demographics and job attributes such as department, job role, monthly income, overtime, job satisfaction, total working years, and years at the company.

The full missing-value and duplicate checks should be rerun against the current CSV before asserting complete data quality. Document the original dataset source and usage terms.

## Analysis workflow

1. Inspect the CSV schema, data types, missing values, and duplicate records.
2. Run the notebook from top to bottom after confirming its input path.
3. Define attrition rate explicitly, including numerator and denominator.
4. Run SQL queries for employee count, attrition counts/rates, department and job-role comparisons, overtime, age groups, income, and tenure.
5. Open the Excel workbook and validate charts, pivot tables, and KPI formulas.
6. Reconcile key counts between SQL, Python, and Excel before documenting findings.

## Tech stack

- Python and pandas for EDA
- SQL for grouped queries
- Excel for summaries and visualization
- Jupyter Notebook for reproducible analysis

## Reproduce

Use Python/Jupyter for the notebook, a SQL engine compatible with the query syntax, and Microsoft Excel or a compatible spreadsheet application for the workbook. Install notebook dependencies based on its imports and confirm the SQL dialect before running queries.

## Results and verification status

| Metric | Evidence |
|---|---|
| Dataset shape | 1,470 rows × 35 columns in saved notebook output |
| Target | `Attrition` (Yes/No) |
| Attrition rate and subgroup results | Not stated here; query definitions exist but result values were not independently confirmed |

The SQL file is designed to analyze attrition by department, job role, education field, overtime, age group, income, and working years. Findings should be added only after running the queries and recording counts as well as denominators.

## Limitations and responsible interpretation

- Saved dataset dimensions should be reconfirmed after rerunning the notebook.
- Correlations or group differences do not prove why employees leave.
- Employee-level information should be handled with care; avoid publishing identifiable records.
- Do not use exploratory group patterns alone to make consequential decisions about individuals.

## Skills demonstrated

Data profiling, HR KPI definitions, SQL aggregations, descriptive analysis, and dashboard/report validation.

## Author

Sahil Gaikwad · [GitHub](https://github.com/sahil2003-ai) · [LinkedIn](https://www.linkedin.com/in/sahil-gaikwad-a76b7224a/)
