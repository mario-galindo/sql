IF NOT EXISTS(SELECT * FROM sysobjects where name='windowFunctions' AND xtype='U')
CREATE TABLE windowFunctions
(
    [EMPID] INT PRIMARY KEY NOT NULL,
    [NAME] VARCHAR(100),
    [JOB] VARCHAR(100),
    [SALARY] DECIMAL(12,2)
)

-- Sample data
INSERT INTO windowFunctions (EMPID, NAME, JOB, SALARY)
VALUES
(201, 'ANIRUDDHA', 'ANALYST', 2100),
(212, 'LAKSHAY', 'DATA ENGINEER', 2700),
(209, 'SIDDHARTH', 'DATA ENGINEER', 3000),
(232, 'ABHIRAJ', 'DATA SCIENTIST', 3000),
(205, 'RAM', 'ANALYST', 2500),
(222, 'PRANAV', 'MANAGER', 4500),
(202, 'SUNIL', 'MANAGER', 4800),
(233, 'ABHISHEK', 'DATA SCIENTIST', 2800),
(244, 'PURVA', 'ANALYST', 2500),
(217, 'SHAROON', 'DATA SCIENTIST', 3000),
(216, 'PULKIT', 'DATA SCIENTIST', 3500),
(200, 'KUNAL', 'MANAGER', 5000),
(210, 'SHIPRA', 'ANALYST', 2800);