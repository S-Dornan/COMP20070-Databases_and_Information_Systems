DELIMITER // 
CREATE PROCEDURE `param_id`(IN p_id INT) 
BEGIN 
SELECT * 
     FROM practical_5.students 
     WHERE practical_5.students.studentid=p_id; 
END //
DELIMITER ;
call param_id(11111);