DELIMITER //

CREATE TRIGGER after_attendance_insert
AFTER INSERT ON attendance
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (employee_id, action)
    VALUES (NEW.employee_id, 'Attendance Marked');
END //

DELIMITER ;
