DELIMITER // 
CREATE PROCEDURE get_surnames() 
BEGIN 
	SELECT COUNT(DISTINCT(lastname)) FROM practical_5.students;
END // 
DELIMITER ;

call get_surnames()