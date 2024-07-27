#C.	Name of courses taken by students with a given last name;
DELIMITER // 
CREATE PROCEDURE `coursename_given_lastname`(IN surname VARCHAR(45))
BEGIN
	SELECT coursename FROM practical_5.students, practical_5.courses WHERE lastname = surname;
END //
DELIMITER ;

CALL coursename_given_lastname("Murphy")