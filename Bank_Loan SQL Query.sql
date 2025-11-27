CREATE DATABASE Bank_Loan_db;
USE Bank_Loan_db;

CREATE TABLE Bank_loan(
    id INT PRIMARY KEY,
    address_state VARCHAR(50),
    application_type VARCHAR(50),
    emp_length VARCHAR(50),
    emp_title VARCHAR(50),
    grade VARCHAR(50),
    home_ownership VARCHAR(50),
    issue_date DATE,
    last_credit_pull_date VARCHAR(50),
    last_payment_date VARCHAR(50),
    loan_status VARCHAR(50),
    next_payment_date VARCHAR(50),
    member_id INT,
    purpose VARCHAR(50),
    sub_grade VARCHAR(50),
    term VARCHAR(50),
    verification_status VARCHAR(50),
    annual_income DECIMAL(10,2),
    dti DECIMAL(10,4),
    installment DECIMAL(10,2),
    int_rate DECIMAL(10,4),
    loan_amount INT,
    total_acc INT,
    total_payment INT
);

SELECT * FROM bank_loan
-- Total Loan Application
SELECT COUNT(id) AS Total_Loan_Application From  bank_loan

-- MTD Loan Application
SELECT COUNT(id) AS Total_Application FROM bank_loan
WHERE MONTH(issue_date)=12

-- PMTD Loan Applications
SELECT COUNT(id) AS PMTD_Total_Applications FROM bank_loan
WHERE MONTH(issue_date) = 11

-- Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan

-- MTD Total Funded Amount
SELECT SUM(loan_amount) AS MTD_Total_Funded_AMOUNT FROM bank_loan
WHERE MONTH(issue_date)=12

-- PMTD Total Funded Amount
SELECT SUM(loan_amount) AS PMTD_Total_Funded_AMOUNT FROM bank_loan
WHERE MONTH(issue_date)=11

-- Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan

-- MTD Total Amount Received
SELECT SUM(total_payment) AS MTD_Total_Amount_Collected FROM bank_loan
WHERE MONTH(issue_date)=12

-- PMTD Total Amount Received
SELECT SUM(total_payment) AS PMTD_Total_Amount_Collected FROM bank_loan
WHERE MONTH(issue_date)=11

-- Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM bank_loan

-- MTD Average Interest Rate
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM bank_loan
WHERE MONTH(issue_date) = 12

-- PMTD Average Interest Rate
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM bank_loan
WHERE MONTH(issue_date) = 11

-- Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan

-- MTD Avg DTI
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM bank_loan
WHERE MONTH(issue_date) = 12

-- PMTD Avg DTI
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM bank_loan
WHERE MONTH(issue_date) = 11

-- Good Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan

-- Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


-- Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Bad Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan

-- Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan
WHERE loan_status = 'Charged Off'

-- Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan
WHERE loan_status = 'Charged Off'

-- Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan
WHERE loan_status = 'Charged Off'

-- Loan status
SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan
    GROUP BY
        loan_status;
        
        SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

-- Month
SELECT 
    MONTH(issue_date) AS Month_Number,
    MONTHNAME(issue_date) AS Month_Name,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY 
    MONTH(issue_date), 
    MONTHNAME(issue_date)
ORDER BY Month_Number;

-- State
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY address_state
ORDER BY address_state

-- TERM
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY term
ORDER BY term

-- EMPLOYEE LENGTH
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY emp_length
ORDER BY emp_length

-- PURPOSE
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY purpose
ORDER BY purpose

-- HOME OWNERSHIP
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY home_ownership
ORDER BY home_ownership

        
        

