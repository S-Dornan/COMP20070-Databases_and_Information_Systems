DELIMITER // 
CREATE PROCEDURE get_candidates_surname(IN surname VARCHAR(45)) 
BEGIN 
	SELECT * FROM dornan20385853.candidate_details WHERE candidate_surname LIKE CONCAT('%',surname,'%');
END // 
DELIMITER ; 

SET @surname = "Verstappen";
call get_candidates_surname(@surname)