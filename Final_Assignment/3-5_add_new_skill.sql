DELIMITER // 
CREATE PROCEDURE add_new_skill(IN skillname VARCHAR(45))
BEGIN
	INSERT INTO skills_details(`skill_name`) VALUES(skillname);
END //
DELIMITER ;

SET @skill = "SQL";

call add_new_skill(@skill);