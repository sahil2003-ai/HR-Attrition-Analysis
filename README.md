# HR Attrition Analysis

> Workforce analytics project using Excel, SQL, and Python to explore employee attrition patterns.

![Status](https://img.shields.io/badge/Status-Portfolio--Project-blue)

## 📌 Table of Contents

- [Overview](#overview)
- [Problem Statement](#problem-statement)
- [Objectives](#objectives)
- [Features](#features)
- [Dataset](#dataset)
- [Tech Stack](#tech-stack)
- [Project Workflow](#project-workflow)
- [Repository Structure](#repository-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Results and Insights](#results-and-insights)
- [Screenshots](#screenshots)
- [Challenges and Solutions](#challenges-and-solutions)
- [Limitations](#limitations)
- [Future Improvements](#future-improvements)
- [What I Learned](#what-i-learned)
- [Author](#author)
- [License](#license)

## 📖 Overview

Workforce analytics project using Excel, SQL, and Python to explore employee attrition patterns. This README documents the intended workflow and the files available in the repository. Verify all outputs against the current code and data before using them as evidence.

## 🎯 Problem Statement

HR teams need transparent workforce metrics to identify groups or patterns that merit further investigation.

## 🎯 Objectives

- Define attrition metrics clearly.
- Compare available workforce indicators.
- Present results through notebook, SQL, and Excel outputs.

## ✨ Features

- CSV dataset and SQL queries.
- Python notebook for EDA.
- Excel workbook/dashboard.

## 📂 Dataset

The saved notebook confirms **1,470 rows × 35 columns** in `HR_Attrition_Analysis.csv`.

- **Target:** `Attrition` (Yes/No).
- **Fields include:** age, department, job role, monthly income, overtime, job satisfaction, total working years, years at company, and other workforce attributes.
- **Missing values:** The notebook's saved output begins with zero counts; rerun the full check to confirm every column.
- **Privacy/provenance:** Treat this as employee-level data. Document the source/license and avoid publishing identifiable records.

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| Excel | Dashboard and summaries |
| SQL | Grouped queries |
| Python/pandas | EDA |
| Jupyter Notebook | Analysis |

## 🔄 Project Workflow

1. Inspect the CSV schema, missing values, data types, and duplicates.
2. Run HR_Attrition_Analysis.ipynb from the top after confirming the data path.
3. Define the attrition-rate denominator and compare it with the data.
4. Run SQL queries to summarize attrition across fields available in the dataset.
5. Review the Excel workbook's charts, pivot tables, and KPI calculations.
6. Reconcile important totals across SQL, Python, and Excel and write a cautious stakeholder summary.

## 🗂️ Repository Structure

```text
HR-Attrition-Analysis/
├── HR_Attrition_Analysis.csv
├── HR_Attrition_Analysis.ipynb
├── HR_Attrition_Analysis.sql
└── HR Attrition analysis.xlsx
└── README.md
```

The list above highlights known project files and folders; inspect the repository for the complete current structure.

## ⚙️ Installation

### Prerequisites

- Install the tools listed in the Tech Stack that apply to this project.
- For Python projects, use a Python version compatible with the dependencies actually imported by the code.
- For Power BI projects, use Power BI Desktop.

### Setup

Requires Excel, a SQL engine compatible with the script, and Python/Jupyter with the notebook's imported packages. Check notebook imports before installing.

Do not run generic commands that do not match the files in this repository. Confirm the data paths, database dialect, and package versions before execution.

## ▶️ Usage

Run the notebook and SQL queries after setting the data path; open the XLSX workbook in Excel.

## 📊 Results and Insights

### Verified dataset details from saved notebook output

| Check | Recorded result |
|---|---:|
| Rows | 1,470 |
| Columns | 35 |
| Target | `Attrition` (Yes/No) |

### Analysis implemented in SQL

The SQL file calculates total employee count, attrition counts and percentages, attrition by department/job role/education field/overtime/age group, average monthly income by department, and average working years by attrition status.

The SQL file contains query definitions but no saved result values. Attrition percentages and subgroup findings are therefore not asserted here. Run the queries and record both counts and denominators before drawing conclusions.

## 🖼️ Screenshots

No image files were confirmed for this repository during this update. If you have screenshots, upload them into an `images/` folder, then embed each real path here with a short caption. Do not use placeholder image paths.

## 🧩 Challenges and Solutions

| Challenge | Solution / validation approach |
|---|---|
| Comparing metrics across tools | Use a shared attrition definition and compare totals across SQL, notebook, and Excel. |

## ⚠️ Limitations

- Dataset dimensions are from saved notebook output; rerun to confirm the current CSV.
- Aggregate attrition metrics were not independently computed during this review.
- Attrition patterns do not prove why employees leave.
- Protect employee-level data and avoid decisions about individuals based only on group correlations.

## 🚀 Future Improvements

- [ ] Document data provenance and KPI formulas.
- [ ] Add screenshots and verified findings.
- [ ] Include data-quality notes and reproducible setup.

## 📚 What I Learned

- Workforce KPI analysis.
- Responsible interpretation of employee data.

## 👤 Author

**Sahil Gaikwad**

- GitHub: [sahil2003-ai](https://github.com/sahil2003-ai)
- LinkedIn: [Sahil Gaikwad](https://www.linkedin.com/in/sahil-gaikwad-a76b7224a/)

## 📄 License

Check the dataset terms and repository license.
