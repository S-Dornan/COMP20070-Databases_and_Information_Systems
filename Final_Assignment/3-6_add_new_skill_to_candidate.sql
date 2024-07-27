DELIMITER // 
CREATE PROCEDURE add_new_skill_to_candidate(IN candid INT, IN skillid INT)
BEGIN
	INSERT INTO candidate_skills(`candidate_details-id`, `skills_details-id`) VALUES(candid, skillid);
END //
DELIMITER ;

SET @skillid = "7";
SET @cand = "2";

call add_new_skill_to_candidate(@cand, @skillid);