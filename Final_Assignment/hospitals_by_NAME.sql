DELIMITER // 
CREATE PROCEDURE get_hospital_name(IN hosp_name TEXT) 
BEGIN 
	SELECT * FROM dornan20385853.hospital_details WHERE hospital_name LIKE CONCAT('%',hosp_name,'%');
END // 
DELIMITER ; 

SET @input_name = "Beaumont";
call get_hospital_name(@input_name)