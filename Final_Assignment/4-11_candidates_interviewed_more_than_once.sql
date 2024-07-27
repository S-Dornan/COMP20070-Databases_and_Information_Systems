DELIMITER // 
CREATE PROCEDURE candidates_interviewed_more_than_once() 
BEGIN 
	SELECT candidate_details.candidate_id, candidate_details.candidate_firstname, candidate_details.candidate_surname, COUNT(interview_details.interview_id) AS num_interviews FROM dornan20385853.candidate_details
	JOIN dornan20385853.interview_details
	ON candidate_details.candidate_id = interview_details.`interview-candidate_id`
	GROUP BY candidate_details.candidate_id, candidate_details.candidate_firstname, candidate_details.candidate_surname
    HAVING COUNT(interview_details.interview_id) >= 2;
END // 
DELIMITER ; 

call candidates_interviewed_more_than_once() 