DELIMITER // 
CREATE PROCEDURE `students_id`(IN first_name VARCHAR(45), last_name VARCHAR(45)) 
BEGIN 
SELECT studentid, firstname, lastname 
     FROM practical_5.students 
     WHERE practical_5.students.firstname=first_name AND practical_5.students.lastname=last_name; 
END //
DELIMITER ;
call students_id("Frank", "Murphy");