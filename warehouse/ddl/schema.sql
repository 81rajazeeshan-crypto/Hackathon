
-- Star Schema DDL for Warehouse
CREATE TABLE IF NOT EXISTS dim_employee (
    emp_id VARCHAR PRIMARY KEY,
    name VARCHAR,
    dept_id VARCHAR,
    valid_from DATE,
    valid_to DATE,
    is_current BOOLEAN
);

CREATE TABLE IF NOT EXISTS fact_attendance_daily (
    attendance_id SERIAL PRIMARY KEY,
    emp_id VARCHAR REFERENCES dim_employee(emp_id),
    work_date DATE,
    status VARCHAR,
    worked_hours NUMERIC,
    overtime_hours NUMERIC
);
