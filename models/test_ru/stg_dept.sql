SELECT
DEPARTMENT_ID AS dept_id,
DEPARTMENT_NAME as department_name,
UPPER(DEPARTMENT_HEAD) AS department_head,
CURRENT_TIMESTAMP() AS dbt_loaded_at
FROM {{ source('department_table','DEPARTMENTS')}}
WHERE DEPARTMENT_ID IS NOT NULL 