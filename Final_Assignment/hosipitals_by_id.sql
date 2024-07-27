DELIMITER // 
CREATE PROCEDURE get_hospital_id(IN hosp_id int) 
BEGIN 
	SELECT * FROM dornan20385853.hospital_details WHERE hospital_id=hosp_id;
END // 
DELIMITER ; 

SET @input_id = "1";
call get_hospital_id(@input_id)