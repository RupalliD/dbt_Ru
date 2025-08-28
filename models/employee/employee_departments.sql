WITH employee_cte AS (
    SELECT
        employee_id,
        department_id
    FROM {{ ref('employee_source') }}
),

department_cte AS (
    SELECT
        department_id,
        department_name
    FROM Test_Ru.Learning_Ru.departments
)

SELECT
    e.employee_id,
    d.department_name
FROM employee_cte e
LEFT JOIN department_cte d
    ON e.department_id = d.department_id
