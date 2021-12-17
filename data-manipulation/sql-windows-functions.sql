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




