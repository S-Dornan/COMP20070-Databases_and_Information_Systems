DELIMITER // 
CREATE PROCEDURE add_new_position(IN pos_name VARCHAR(45), IN pos_type VARCHAR(45), IN hosp_details_id INT)
BEGIN
	INSERT INTO position_details(position_name, position_type, hospital_details) VALUES(pos_name, pos_type, hosp_details_id);
END //
DELIMITER ;

SET @pname = "IT Support Staff";
SET @ptype = "Temporary";
SET @hos_id = "16";

call add_new_position(@pname, @ptype, @hos_id);