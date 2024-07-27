DELIMITER // 
CREATE PROCEDURE get_student_id() 
BEGIN 
	SELECT COUNT(studentid) FROM practical_5.students;
END // 
DELIMITER ; 

call get_student_id()