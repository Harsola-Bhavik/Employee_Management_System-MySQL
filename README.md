# 🏢 Employee Management System (MySQL)

A simple relational database project to manage employees, departments, attendance, and audit logs using MySQL.  
Includes full SQL schema, stored procedures, triggers, and sample data.

---

## 📦 Features
✅ Employees table with basic details  
✅ Departments table  
✅ Assign employees to departments (many‑to‑many)  
✅ Mark employee attendance  
✅ Audit log using trigger to track attendance actions  
✅ Stored procedures to:
- Register new employee
- Assign employee to department

---

## 🛠 Files included
| File                | Purpose                                             |
|--------------------:|----------------------------------------------------:|
| `schema.sql`        | Database schema (tables and relationships)         |
| `procedures.sql`    | Stored procedures to manage data                   |
| `triggers.sql`      | Trigger to automatically log attendance actions    |
| `sample_data.sql`   | Sample data to populate tables for testing         |

---

## ⚙️ Setup instructions

> 🐬 Make sure you have MySQL server running locally.

```bash
# 1️⃣ Create and select database
CREATE DATABASE EmployeeManagementSystem;
USE EmployeeManagementSystem;

# 2️⃣ Run schema
SOURCE schema.sql;

# 3️⃣ Add procedures and trigger
SOURCE procedures.sql;
SOURCE triggers.sql;

# 4️⃣ Insert sample data
SOURCE sample_data.sql;

-- Register a new employee
CALL register_employee('Mike', 'Brown', '1991-06-18', 'M', 'mike.brown@example.com', '2023-07-01');

-- Assign Mike to Engineering (assuming department_id = 2)
CALL assign_employee_to_department(5, 2);

-- Mark attendance
INSERT INTO attendance (employee_id, attendance_date, is_present)
VALUES (5, CURDATE(), TRUE);

-- Check audit log
SELECT * FROM audit_log;
