DELIMITER // 
CREATE PROCEDURE get_interview_by_date(IN intvw_date DATE) 
BEGIN 
	SELECT * FROM dornan20385853.interview_details WHERE `interview_date`=intvw_date;
END // 
DELIMITER ; 

SET @input_date = "20231113";
call get_interview_by_date(@input_date);