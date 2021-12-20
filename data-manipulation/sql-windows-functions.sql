-- Print total salary
SELECT SUM(SALARY) FROM windowFunctions

-- Print total salary per job category
SELECT JOB, SUM(SALARY) FROM windowFunctions
GROUP BY JOB    

-- Print total salary wtih every row
SELECT *,
SUM(salary) OVER() AS total_salary
FROM windowFunctions;

-- Print total salary per job category
SELECT *,
SUM(salary) OVER(PARTITION BY job) AS total_job_salary
FROM windowFunctions;

-- Order rows within partitions
SELECT *,
SUM(salary) OVER(PARTITION BY job ORDER BY salary DESC) AS ordered_job_salary
FROM windowFunctions;

-- Number rows using row_number
SELECT *, ROW_NUMBER() OVER(ORDER BY NAME) AS "row_number" FROM windowFunctions;

-- Number rows within each partition
SELECT *, ROW_NUMBER() OVER(PARTITION BY job ORDER BY salary) AS "partition_row_number" FROM windowFunctions;

-- Rank rows within each partition using rank function 
SELECT *, 
ROW_NUMBER() OVER(PARTITION BY job ORDER BY salary) AS "row_number",
RANK() OVER(PARTITION BY job ORDER BY salary) AS "rank_row" 
from windowFunctions;

-- Rank rows within each partition using dense_rank function*/
SELECT *, 
ROW_NUMBER() OVER(PARTITION BY job ORDER BY salary) AS "row_number",
RANK() OVER(PARTITION BY job ORDER BY salary) AS "rank_row",
DENSE_RANK() OVER(PARTITION BY job ORDER BY salary) AS "dense_rank_row"
FROM windowFunctions;

-- Statistics using ntile function 
SELECT *, 
NTILE(4) OVER(ORDER BY salary) AS "quartile"
FROM windowFunctions;

-- Lead values 
SELECT *,
LEAD(salary, 1) OVER(PARTITION BY job ORDER BY salary) AS sal_next
FROM windowFunctions;

-- Lag values 
SELECT *,
LAG(salary, 1) OVER(PARTITION BY job ORDER BY salary) AS sal_previous,
salary - LAG(salary, 1) Over(PARTITION BY job ORDER BY salary) AS sal_diff
FROM windowFunctions;