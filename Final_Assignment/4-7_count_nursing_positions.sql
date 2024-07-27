DELIMITER // 
CREATE PROCEDURE count_nursing_positions(IN skill_id INT) 
BEGIN 
	SELECT COUNT(DISTINCT position_id) FROM dornan20385853.position_details 
    JOIN position_skills ON position_details.position_id = `position_skills`.`position_details-id`
    WHERE `position_skills`.`position_details-id` = skill_id;
END //
DELIMITER ;

SET @selected_skill = "1";
call count_nursing_positions(@selected_skill);