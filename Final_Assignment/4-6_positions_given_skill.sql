DELIMITER // 
CREATE PROCEDURE get_positions_given_skills(IN skill_id INT) 
BEGIN 
	SELECT position_id, position_name, position_type, `hospital_details-id` FROM dornan20385853.position_details 
    JOIN position_skills ON position_details.position_id = `position_skills`.`position_details-id`
    WHERE `position_skills`.`position_details-id` = skill_id;
END //
DELIMITER ;

SET @selected_skill = "2";
call get_positions_given_skills(@selected_skill);