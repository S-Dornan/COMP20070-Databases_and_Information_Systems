DELIMITER // 
CREATE PROCEDURE add_new_skill_to_position(IN posid INT, IN skillid INT)
BEGIN
	INSERT INTO position_skills(`position_details-id`, `skills_details-id`) VALUES(posid, skillid);
END //
DELIMITER ;

SET @skillid = "7";
SET @pos = "11";

call add_new_skill_to_position(@pos, @skillid);