DELIMITER // 
CREATE PROCEDURE get_candidate_by_interview_date(IN intvw_date DATE) 
BEGIN 
	SELECT DISTINCT `interview-candidate_id` FROM dornan20385853.interview_details WHERE `interview_date`=intvw_date;
END // 
DELIMITER ; 

SET @input_date = "20231113";
call get_candidate_by_interview_date(@input_date);