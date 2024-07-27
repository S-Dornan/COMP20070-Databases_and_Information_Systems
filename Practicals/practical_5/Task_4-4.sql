DELIMITER // 
CREATE PROCEDURE `count_given_lastname`(IN surname VARCHAR(45))
BEGIN
	SELECT COUNT(lastname) FROM practical_5.students WHERE lastname = surname;
END //
DELIMITER ;

CALL count_given_lastname("Murphy")