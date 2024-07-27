DELIMITER // 
CREATE PROCEDURE get_courses_in_order() 
BEGIN 
	SELECT * FROM practical_5.courses ORDER BY coursecost ASC;
END // 
DELIMITER ;

call get_courses_in_order()