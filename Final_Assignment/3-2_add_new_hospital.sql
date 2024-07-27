DELIMITER // 
CREATE PROCEDURE add_new_hospital(IN hosp_name TEXT, IN hosp_address text, IN hosp_telno INT)
BEGIN
	INSERT INTO hospital_details(hospital_name, hospital_address, hospital_telephone) VALUES(hosp_name, hosp_address, hosp_telno);
END //
DELIMITER ;

SET @hname = "St. Mary's Hospital";
SET @haddr = "Shelbourne Road, Ballsbridge, Dublin 4";
SET @htelno = "0124568365";
call add_new_hospital(@hname, @haddr, @htelno);