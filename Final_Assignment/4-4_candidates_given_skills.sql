DELIMITER //
CREATE PROCEDURE get_candidates_given_skills(IN pos_id TEXT) 
BEGIN 
	SELECT candidate_id, candidate_firstname, candidate_surname, candidate_address, candidate_telephone FROM dornan20385853.candidate_details 
    JOIN candidate_skills ON candidate_details.candidate_id = `candidate_skills`.`candidate_details-id`
    JOIN position_skills ON `candidate_skills`.`skills_details-id` = `position_skills`.`skills_details-id`
    WHERE `position_skills`.`position_details-id` = pos_id;
END // 
DELIMITER ; 

SET @selected_position = "11";
call get_candidates_given_skills(@selected_position);