DELIMITER // 
CREATE PROCEDURE get_average_cost() 
BEGIN 
	SELECT AVG(coursecost) FROM practical_5.courses;
END // 
DELIMITER ;

call get_average_cost()