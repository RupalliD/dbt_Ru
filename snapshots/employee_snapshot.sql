{% snapshot employee_snapshot %}

  {{
    config(
      target_schema='Learning_Ru',
      target_database='Test_Ru',
      unique_key='employee_id',
      strategy='check',
      check_cols=['first_name', 'last_name', 'email']
    )
  }}

  SELECT
    employee_id,
    first_name,
    last_name,
    email
  FROM {{ ref('employee_source') }}

{% endsnapshot %}
