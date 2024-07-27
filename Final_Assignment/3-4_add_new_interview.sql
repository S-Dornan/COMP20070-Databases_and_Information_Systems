DELIMITER // 
CREATE PROCEDURE add_new_interview(IN intvw_date DATE, IN intvw_pos_id INT, IN intvw_cand_id INT, IN hired TINYINT)
BEGIN
	INSERT INTO interview_details(`interview_date`, `interview-position_id`, `interview-candidate_id`, `candidate-hired`) VALUES(intvw_date, intvw_pos_id, intvw_cand_id);
END //
DELIMITER ;

SET @interview_date = "20231116";
SET @interview_pos_id = "12";
SET @cand_id = "8";
SET @cand_hired = "0";

call add_new_interview(@interview_date, @interview_pos_id, @cand_id, @cand_hired)