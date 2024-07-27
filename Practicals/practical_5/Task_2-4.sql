DELIMITER // 
CREATE PROCEDURE get_students_taking_EXL20() 
BEGIN 
	SELECT COUNT(studentid) FROM practical_5.student_taking_course WHERE coursecode = "EXL20";
END // 
DELIMITER ;

call get_students_taking_EXL20()