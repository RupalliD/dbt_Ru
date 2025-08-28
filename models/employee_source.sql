
WITH employee_source AS (

SELECT 
employee_id,
first_name,
last_name,
email,
FROM Test_Ru.Learning_Ru.employee
)
SELECT  * FROM   employee_source