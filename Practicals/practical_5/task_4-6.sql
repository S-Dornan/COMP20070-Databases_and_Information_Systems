#F.	The number of students taking a given course; 
DELIMITER // 
CREATE PROCEDURE `count_students_taking_course`(IN code VARCHAR(45))
BEGIN
	SELECT COUNT(DISTINCT(studentid)) FROM practical_5.courses INNER JOIN practical_5.student_taking_course ON practical_5.courses.coursecode = practical_5.student_taking_course.coursecode WHERE practical_5.courses.coursecode = code;
END //
DELIMITER ;

CALL count_students_taking_course("EXL20");