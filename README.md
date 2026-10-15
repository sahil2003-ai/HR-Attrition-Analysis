# HR Attrition Analysis

> A workforce analytics project using Python, SQL, and Excel to explore employee attrition and compare workforce indicators across employee groups.

![Python](https://img.shields.io/badge/Python-Analysis-blue)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue)
![Excel](https://img.shields.io/badge/Excel-Reporting-green)

## 📌 Table of Contents

- [Overview](#-overview)
- [Problem Statement](#-problem-statement)
- [Objectives](#-objectives)
- [Features](#-features)
- [Dataset](#-dataset)
- [Tech Stack](#-tech-stack)
- [Project Workflow](#-project-workflow)
- [Repository Structure](#-repository-structure)
- [Installation](#-installation)
- [Usage](#-usage)
- [Results and Insights](#-results-and-insights)
- [Screenshots](#-screenshots)
- [Challenges and Solutions](#-challenges-and-solutions)
- [Limitations](#-limitations)
- [Future Improvements](#-future-improvements)
- [What I Learned](#-what-i-learned)
- [Author](#-author)
- [License](#-license)

## 📖 Overview

This project analyzes employee-level HR data to explore attrition patterns and how they vary by department, job role, overtime, age group, income, satisfaction, and tenure. It combines notebook-based EDA, SQL query definitions, and an Excel workbook.

## 🎯 Problem Statement

Organizations need to understand workforce attrition and identify employee groups that may warrant further investigation. Reliable analysis requires a clear attrition definition, valid denominators, and careful interpretation that avoids treating group-level correlations as causes.

## 🎯 Objectives

- Inspect the HR dataset and its quality.
- Define employee counts and attrition rates consistently.
- Compare attrition across available demographic and job-related fields.
- Validate findings between Python, SQL, and Excel.

## ✨ Features

- Exploratory data analysis in Jupyter Notebook.
- SQL analysis by department, job role, overtime, age group, income, and tenure.
- Excel workbook for summaries and visualization.
- Explicit attention to denominator definitions and responsible interpretation.

## 📂 Dataset

Source file: `HR_Attrition_Analysis.csv`.

| Metric | Value in saved notebook output |
|---|---:|
| Rows | 1,470 |
| Columns | 35 |
| Target | `Attrition` (Yes/No) |

The dataset includes fields such as department, job role, monthly income, overtime, job satisfaction, total working years, and years at the company. Missing-value and duplicate counts should be reconfirmed by rerunning the notebook. The original source URL and license should be documented.

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| Python / pandas | Data profiling and EDA |
| Jupyter Notebook | Reproducible analysis |
| SQL | Grouped attrition queries |
| Excel | Summary reporting and visualization |

## 🔄 Project Workflow

1. Load the CSV and inspect schema, types, missing values, and duplicates.
2. Define attrition rate as attrition-positive employees divided by the relevant employee count.
3. Explore overall and subgroup patterns in Python.
4. Run SQL queries and inspect their filters and denominators.
5. Review workbook formulas and visuals.
6. Reconcile the employee counts and attrition rates across tools.

## 🗂️ Repository Structure

```text
HR-Attrition-Analysis/
├── HR_Attrition_Analysis.csv
├── HR_Attrition_Analysis.ipynb
├── HR_Attrition_Analysis.sql
├── HR Attrition analysis.xlsx
└── README.md
```

## ⚙️ Installation

### Prerequisites

- Python and Jupyter Notebook
- SQL engine compatible with the script
- Microsoft Excel or compatible spreadsheet software

### Setup

```bash
git clone https://github.com/sahil2003-ai/HR-Attrition-Analysis.git
cd HR-Attrition-Analysis
python -m venv .venv
```

Activate the environment and install pandas and the notebook's imported packages. A root-level dependency file was not identified in the reviewed inventory.

## ▶️ Usage

- Run `HR_Attrition_Analysis.ipynb` from top to bottom.
- Import the CSV into your SQL engine and execute `HR_Attrition_Analysis.sql`.
- Open `HR Attrition analysis.xlsx` and validate its tables, formulas, and visuals.

## 📊 Results and Insights

### Verified dataset metric

The saved notebook output reports **1,470 rows × 35 columns**. The target field is `Attrition`.

### Analysis coverage

The SQL queries are designed to compare attrition by department, job role, education field, overtime, age group, income, and working years. Numerical subgroup rates are not reproduced here because the query result outputs were not independently confirmed in this review.

### Evaluation

Rerun the notebook and SQL, record both counts and denominators, and reconcile them with Excel before adding a headline attrition rate. Group differences are descriptive, not proof of why employees leave.

## 🖼️ Screenshots

The Excel workbook is present. Add genuine screenshots of the actual workbook/dashboard after verifying its formulas and data source.

## 🧩 Challenges and Solutions

| Challenge | Approach |
|---|---|
| Attrition rates can use inconsistent denominators | Document the numerator and denominator for every rate |
| Multiple tools may produce different totals | Reconcile filters and employee counts across Python, SQL, and Excel |
| HR findings can be overinterpreted | Describe group patterns without inferring causation or making individual employment decisions |

## ⚠️ Limitations

- Dataset provenance and license need to be documented.
- Saved dataset dimensions should be reconfirmed on rerun.
- Subgroup metrics need executed query outputs.
- Employee-level data should be handled carefully and not published with identifying information.

## 🚀 Future Improvements

- [ ] Add source and data dictionary.
- [ ] Export verified attrition counts/rates by group.
- [ ] Add screenshots with KPI definitions.
- [ ] Add statistical uncertainty or appropriate significance testing where justified.

## 📚 What I Learned

- Defining workforce KPIs with explicit denominators.
- Using SQL and Python for subgroup analysis.
- Reconciling outputs between notebooks and spreadsheets.
- Communicating sensitive HR findings responsibly.

## 👤 Author

**Sahil Gaikwad**

- GitHub: [sahil2003-ai](https://github.com/sahil2003-ai)
- LinkedIn: [Sahil Gaikwad](https://www.linkedin.com/in/sahil-gaikwad-a76b7224a/)

## 📄 License

Check for a repository license and document the original dataset source and reuse terms before redistributing the data.
