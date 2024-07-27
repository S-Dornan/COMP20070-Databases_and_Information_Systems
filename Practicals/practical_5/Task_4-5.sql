DELIMITER // 
CREATE PROCEDURE `count_given_coursecost`(IN cost INT)
BEGIN
	SELECT COUNT(coursecode) FROM practical_5.courses WHERE coursecost = cost;
END //
DELIMITER ;

CALL count_given_coursecost(200)