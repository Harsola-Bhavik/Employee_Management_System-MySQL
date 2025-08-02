USE EmployeeManagementSystem;

-- Insert departments
INSERT INTO departments (department_name)
VALUES 
('Human Resources'),
('Engineering'),
('Marketing'),
('Sales'),
('Finance');

-- Insert employees
INSERT INTO employees (first_name, last_name, date_of_birth, gender, email, hire_date)
VALUES
('John', 'Doe', '1990-05-15', 'M', 'john.doe@example.com', '2020-03-01'),
('Jane', 'Smith', '1988-11-22', 'F', 'jane.smith@example.com', '2019-07-15'),
('Alice', 'Johnson', '1992-08-09', 'F', 'alice.johnson@example.com', '2021-01-10'),
('Bob', 'Williams', '1985-02-17', 'M', 'bob.williams@example.com', '2018-09-25');

-- Assign employees to departments
INSERT INTO employee_departments (employee_id, department_id)
VALUES
(1, 2), -- John -> Engineering
(2, 1), -- Jane -> HR
(3, 3), -- Alice -> Marketing
(4, 4); -- Bob -> Sales

-- Insert attendance records
INSERT INTO attendance (employee_id, attendance_date, is_present)
VALUES
(1, '2025-08-01', TRUE),
(2, '2025-08-01', TRUE),
(3, '2025-08-01', FALSE),
(4, '2025-08-01', TRUE),
(1, '2025-08-02', TRUE),
(2, '2025-08-02', FALSE),
(3, '2025-08-02', TRUE),
(4, '2025-08-02', TRUE);

-- View audit log after attendance trigger fired
SELECT * FROM audit_log;
