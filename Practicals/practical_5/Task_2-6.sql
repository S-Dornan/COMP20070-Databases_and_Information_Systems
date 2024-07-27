DELIMITER // 
CREATE PROCEDURE get_courses_ending_in_20() 
BEGIN 
	SELECT (coursecode) FROM practical_5.courses WHERE coursecode LIKE "%20%";
END // 
DELIMITER ;

call get_courses_ending_in_20()