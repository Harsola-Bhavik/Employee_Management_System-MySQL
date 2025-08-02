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
