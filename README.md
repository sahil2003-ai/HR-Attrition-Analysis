# 👥 HR Attrition Analysis

> A comprehensive data analysis project analyzing employee attrition patterns, identifying risk factors, and uncovering actionable insights to reduce employee turnover.

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Python](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL-MySQL%2FPostgreSQL-orange.svg)](#)

## 📋 Overview

This project provides an in-depth analysis of employee attrition using a multi-tool approach. By combining **Excel dashboards**, **SQL analytics**, and **Python data science**, this project delivers comprehensive insights into why employees leave and what factors drive turnover.

### Key Statistics
- **Total Employees**: 1,470
- **Employees Who Left**: 237 (≈16% Attrition Rate)
- **Active Employees**: 1,233 (≈84%)
- **Average Employee Age**: 37 years

## 🗂️ Project Structure

```
HR-Attrition-Analysis/
├── HR Attrition analysis.xlsx        # Excel dashboard with pivot tables & visualizations
├── HR_Attrition_Analysis.csv         # Raw dataset (1,470 employee records)
├── HR_Attrition_Analysis.ipynb       # Python analysis with EDA & visualizations
├── HR_Attrition_Analysis.sql         # SQL queries for database analysis
└── README.md                         # Project documentation
```

## 📊 Dataset Overview

The dataset contains **1,470 employee records** with **35 features** including:

| Column | Description |
|--------|-------------|
| `EmployeeID` | Unique employee identifier |
| `Age` | Age of employee (18-65 years) |
| `Gender` | Gender (Male/Female) |
| `Department` | Department (Sales, R&D, HR) |
| `JobRole` | Job title/position |
| `MonthlyIncome` | Monthly salary |
| `TotalWorkingYears` | Years of experience |
| `OverTime` | Whether employee works overtime (Yes/No) |
| `Attrition` | **Target variable** - Did employee leave? (Yes/No) |
| `EducationField` | Field of education background |
| `DistanceFromHome` | Distance from workplace (km) |
| `JobSatisfaction` | Job satisfaction rating |
| `PerformanceRating` | Employee performance rating |

*See `HR_Attrition_Analysis.csv` for the complete dataset.*

## 🔍 Key Findings & Insights

### 1. **High-Risk Departments**
- **R&D Department**: Highest attrition (133 employees, ~18%)
- **Sales Department**: Second highest (92 employees, ~15%)
- **HR Department**: Lowest (12 employees, ~6%)
- **Insight**: Technical departments face higher turnover — possibly due to workload or career progression challenges.

### 2. **Attrition by Job Role**
- **Laboratory Technicians**: 62 employees left (highest)
- **Sales Executives**: 57 employees left
- **Sales Representatives**: 33 employees left
- **Insight**: Entry-level and technical roles show significantly higher turnover rates.

### 3. **Age & Experience Patterns**
- **Youngest employees (18-25)**: High turnover — lack of career development
- **Mid-level (35-44)**: Moderate turnover — seeking advancement
- **Senior (55+)**: Lowest turnover — stable and established
- **Insight**: Early career retention programs could significantly reduce overall attrition.

### 4. **Performance & Attrition Correlation**
- **Low performers**: 200 employees left
- **High performers**: Only 37 employees left
- **Insight**: Performance-based attrition suggests engagement/satisfaction issues among underperforming staff.

### 5. **Overtime Impact**
- **With Overtime**: 127 left (≈18% attrition)
- **Without Overtime**: 110 left (≈14% attrition)
- **Insight**: Overtime is strongly correlated with burnout and turnover.

### 6. **Gender Distribution**
- **Male**: 150 employees left (≈16%)
- **Female**: 87 employees left (≈16%)
- **Insight**: Attrition affects both genders equally — suggests systemic workplace issues.

## 📈 Dashboard Highlights (Excel)

The Excel file includes:
- **Summary Dashboard**: Key metrics and KPIs at a glance
- **Pivot Tables**: Cross-tabulation analysis by department, role, age group, and education
- **Conditional Formatting**: Color-coded high-risk areas
- **Charts**: Interactive visualizations of attrition trends
- **Slicers**: Filter data dynamically by department, gender, and overtime status

## 🐍 Python Analysis

### Key Steps in `HR_Attrition_Analysis.ipynb`:

1. **Data Loading & Exploration**
   - Import dataset using Pandas
   - Check data types, missing values, and basic statistics
   - Dataset shape: (1,470, 35)

2. **Exploratory Data Analysis (EDA)**
   - Statistical summaries and distributions
   - Correlation analysis
   - Identify skewness and outliers

3. **Visualizations** (using Matplotlib, Seaborn, Plotly)
   - Attrition distribution by department, age, and role
   - Income vs. attrition trends
   - Overtime vs. turnover comparison
   - Box plots for salary analysis

4. **Feature Analysis**
   - Attrition rate by education field
   - Age group segmentation
   - Working experience impact

5. **Insights & Recommendations**
   - Identify key attrition drivers
   - Suggest retention strategies
   - Highlight at-risk employee segments

### Required Libraries:
```bash
pip install pandas numpy matplotlib seaborn plotly scikit-learn jupyter
```

## 🧮 SQL Analysis

The SQL file (`HR_Attrition_Analysis.sql`) includes 10 comprehensive queries:

### Query Examples:

**1. Total Employee Count**
```sql
SELECT COUNT(*) AS total_employees FROM HR_Attrition;
```

**2. Attrition Rate by Department**
```sql
SELECT 
  Department,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS attrition_rate
FROM HR_Attrition
GROUP BY Department
ORDER BY attrition_rate DESC;
```

**3. Top 5 Job Roles with Highest Attrition**
```sql
SELECT 
  JobRole,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS attrition_rate
FROM HR_Attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC
LIMIT 5;
```

**All 10 queries cover**: Total count, attrition %, department analysis, job role analysis, salary trends, education field, overtime impact, working years, age segmentation, and top at-risk roles.

## 🚀 How to Use

### Option 1: Excel Analysis
```
1. Open HR Attrition analysis.xlsx
2. Navigate to Dashboard tab for summary metrics
3. Use pivot tables for custom analysis
4. Apply slicers to filter by department, role, etc.
```

### Option 2: SQL Analysis (MySQL/PostgreSQL/SQLite)
```sql
-- Create database and import CSV
CREATE DATABASE HR;
USE HR;
LOAD DATA INFILE 'HR_Attrition_Analysis.csv' INTO TABLE HR_Attrition;

-- Run queries from HR_Attrition_Analysis.sql
SOURCE HR_Attrition_Analysis.sql;
```

### Option 3: Python Analysis (Jupyter Notebook)
```bash
# Install dependencies
pip install -r requirements.txt

# Launch Jupyter
jupyter notebook HR_Attrition_Analysis.ipynb

# Run all cells to see analysis and visualizations
```

## 💡 Business Recommendations

Based on this analysis:

1. **Improve Career Development**
   - Implement mentorship programs for junior employees
   - Create clear career progression paths
   - Offer training and skill development programs

2. **Manage Workload & Burnout**
   - Monitor overtime usage and redistribute work
   - Implement wellness programs
   - Improve work-life balance initiatives

3. **Department-Specific Strategies**
   - R&D: Review workload, salary competitiveness
   - Sales: Provide better support, tools, and resources
   - HR: Share best practices from HR department

4. **Performance Support**
   - Low performers need coaching, not exit
   - Implement performance improvement programs
   - Provide regular feedback and support

5. **Retention Focus Areas**
   - Target employees in 2-5 years tenure (highest churn)
   - Create retention bonuses for critical roles
   - Improve onboarding and early engagement

## 📁 File Descriptions

| File | Size | Description |
|------|------|-------------|
| `HR_Attrition_Analysis.csv` | ~300 KB | Raw dataset with 1,470 records |
| `HR_Attrition_Analysis.ipynb` | ~500 KB | Jupyter notebook with Python analysis |
| `HR_Attrition_Analysis.sql` | ~15 KB | SQL queries for database analysis |
| `HR Attrition analysis.xlsx` | ~2 MB | Excel dashboard with pivot tables |
| `README.md` | This file | Complete project documentation |

## 🛠️ Tools & Technologies

- **Data Processing**: Python (Pandas, NumPy)
- **Visualization**: Matplotlib, Seaborn, Plotly
- **Database**: SQL (MySQL, PostgreSQL, SQLite)
- **Spreadsheet**: Microsoft Excel, Google Sheets
- **Analysis Environment**: Jupyter Notebook
- **Data Format**: CSV, XLSX

## 📊 Analysis Metrics

- Overall Attrition Rate: **16%**
- Department Attrition Range: **6% - 18%**
- Overtime Correlation: **Positive (+4% increase)**
- Performance Impact: **5.4x difference** (low vs. high performers)

## 🎯 Future Enhancements

- [ ] Predictive modeling to identify at-risk employees
- [ ] Machine learning classification model
- [ ] Interactive Power BI/Tableau dashboard
- [ ] Sentiment analysis of exit interviews
- [ ] Longitudinal tracking of retention metrics
- [ ] Cost of turnover analysis

## 📝 License

This project is open source and available under the MIT License.

## 👤 Author

**Sahil Gaikwad**
- GitHub: [@sahil2003-ai](https://github.com/sahil2003-ai)
- LinkedIn: [Sahil Gaikwad](https://linkedin.com)
- Email: [Contact](mailto:sahil@example.com)

## 🙏 Acknowledgments

- Dataset: HR Attrition Dataset
- Tools: Python, SQL, Excel
- Inspiration: Employee retention best practices from HR analytics

## ⭐ Show Your Support

If this project helped you, please consider giving it a star! Your support motivates me to create more projects.

---

**Last Updated**: January 2026 | **Version**: 2.0
