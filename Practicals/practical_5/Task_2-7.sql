DELIMITER // 
CREATE PROCEDURE get_average_fees_by_student() 
BEGIN 
	SELECT studentid, AVG(coursecost) 
	FROM practical_5.courses 
	INNER JOIN practical_5.student_taking_course 
	ON practical_5.courses.coursecode = practical_5.student_taking_course.coursecode
	GROUP BY studentid;

END // 
DELIMITER ;

call get_average_fees_by_student()