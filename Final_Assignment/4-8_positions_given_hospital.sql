DELIMITER // 
CREATE PROCEDURE get_positions_by_hospital(IN hosp_id int) 
BEGIN 
	SELECT * FROM dornan20385853.position_details WHERE `hospital_details-id`=hosp_id;
END // 
DELIMITER ; 

SET @input_id = "3";
call get_positions_by_hospital(@input_id);