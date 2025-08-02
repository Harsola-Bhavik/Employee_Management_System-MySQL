DELIMITER //

CREATE PROCEDURE register_employee(
    IN fname VARCHAR(50),
    IN lname VARCHAR(50),
    IN dob DATE,
    IN gen CHAR(1),
    IN email VARCHAR(100),
    IN hire DATE
)
BEGIN
    INSERT INTO employees (first_name, last_name, date_of_birth, gender, email, hire_date)
    VALUES (fname, lname, dob, gen, email, hire);
END //

CREATE PROCEDURE assign_employee_to_department(
    IN eid INT,
    IN did INT
)
BEGIN
    INSERT INTO employee_departments (employee_id, department_id)
    VALUES (eid, did);
END //

DELIMITER ;
