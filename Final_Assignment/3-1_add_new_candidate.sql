DELIMITER // 
CREATE PROCEDURE add_new_candidate(IN cand_firstname VARCHAR(45), IN cand_surname VARCHAR(45), IN cand_address VARCHAR(45), IN cand_telephone INT)
BEGIN
	INSERT INTO candidate_details(candidate_firstname, candidate_surname, candidate_address, candidate_telephone) VALUES(cand_firstname, cand_surname, cand_address, cand_telephone);
END //
DELIMITER ;

SET @cand_fname = "Hannah";
SET @cand_sname = "Moynihan";
SET @cand_addr = "13B McLaren Heights";
SET @cand_telno = "11111112";
call add_new_candidate(@cand_fname, @cand_sname, @cand_addr, @cand_telno)