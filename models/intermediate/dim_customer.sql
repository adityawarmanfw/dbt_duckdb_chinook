{{ config(materialized="table", tags="dim") }}

     WITH customer AS (
        SELECT customer.*,
               employee.employee_first_name AS support_rep_first_name,
               employee.employee_last_name AS support_rep_last_name
          FROM {{ ref('stg_customer') }} customer
     LEFT JOIN {{ ref('stg_employee') }} employee USING (employee_id)
     )

     SELECT * FROM customer