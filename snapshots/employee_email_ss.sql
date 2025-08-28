{% snapshot employee_email_ss %}

  {{
    config(
      target_schema='Learning_Ru',
      target_database='Test_Ru',
      unique_key='employee_id',
      strategy='timestamp',
      updated_at='updated_at'  
    )
  }}

  SELECT
    employee_id,
    first_name,
    last_name,
    email,
    updated_at
  FROM {{ ref('employee_source') }}

{% endsnapshot %}
