# Bank-Loan-Analysis-Using-SQL-Power-BI
# 📊 Bank Loan Analysis Using SQL & Power BI

This project analyzes bank loan performance using SQL and presents insights through an interactive Power BI dashboard.  
It explores loan applications, funded amounts, repayment patterns, customer behavior, and loan status performance (good vs bad loans).
📁 Project Structure
🔍 Objective

To transform raw loan data into meaningful insights that help financial institutions:

- Monitor loan KPIs  
- Identify trends in loan approvals and repayments  
- Compare good vs bad loan performance  
- Understand borrower characteristics  
- Improve decision-making in lending strategies  
## 🛠️ Tools & Technologies

- **SQL** — Data cleaning, transformation, KPI calculations  
- **Power BI** — Interactive visualisation and reporting  
- **MySQL Workbench** — Database setup and querying
- 
## 🧮 Key KPIs Calculated (SQL)

### **1. Loan Volume KPIs**
- Total Loan Applications  
- Month-to-Date (MTD) Applications  
- Previous-Month-to-Date (PMTD) Applications  

### **2. Funding KPIs**
- Total Funded Amount  
- MTD Funded Amount  
- PMTD Funded Amount  

### **3. Collection KPIs**
- Total Amount Received  
- MTD Total Amount Received  
- PMTD Total Amount Received  

### **4. Interest & DTI KPIs**
- Average Interest Rate  
- Average Debt-to-Income (DTI) Ratio  
- MTD & PMTD variations  

### **5. Good vs Bad Loan Analysis**
- Good Loan % (Fully Paid / Current)  
- Bad Loan % (Charged Off)  
- Amount funded & received for each loan category  

### **6. Dimensional Analysis**
- Loan applications by:
  - Month  
  - State  
  - Term  
  - Employee length  
  - Purpose  
  - Home ownership  
## 📊 Power BI Report Features

The dashboard provides:

- At-a-glance KPI cards  
- Trend visuals (monthly performance)  
- Loan status breakdown  
- Geographic analysis by customer state  
- Borrower profile insights  
- Good vs bad loan comparison charts 

## 📜 SQL File Included

The file **“Bank Loan SQL Queries.odt”** contains:

- KPI SQL queries  
- Good vs bad loan calculations  
- Monthly analysis queries  
- State, purpose, ownership, and employment length analysis  
- Dataset exploration queries  
- Clean and organised query sections  

## 📂 Power BI Report

The **Bank_Loan_Report.pbix** file includes:

- Fully interactive dashboard  
- Filters for month, loan purpose, and loan status  
- Clean visual layout  
- Automatically calculated measures linked to SQL outputs  
## 🚀 How to Use This Project

1. Import the CSV dataset into MySQL  
2. Run the SQL queries to calculate KPIs  
3. Load the results into Power BI  
4. Open the `.pbix` file to explore the visuals  
5. Modify visuals or queries depending on your needs  

Feel free to fork the repository and improve the dashboard or SQL scripts.



