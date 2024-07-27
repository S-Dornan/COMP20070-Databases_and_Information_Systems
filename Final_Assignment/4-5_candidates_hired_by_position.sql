DELIMITER //
CREATE PROCEDURE get_candidates_hired(IN pos_id INT) 
BEGIN 
	SELECT candidate_id, candidate_firstname, candidate_surname FROM dornan20385853.candidate_details 
    JOIN interview_details ON candidate_details.candidate_id = `interview_details`.`interview-candidate_id`
    WHERE `interview_details`.`interview-position_id` = pos_id AND `interview_details`.`candidate-hired` = 1;
END // 
DELIMITER ; 

SET @selected_position = "10";
call get_candidates_hired(@selected_position);