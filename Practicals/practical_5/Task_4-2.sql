#B.	Name of course with a given course code; 
DELIMITER // 
CREATE PROCEDURE `course_name`(IN course_id VARCHAR(45)) 
BEGIN 
SELECT coursecode, coursename 
     FROM practical_5.courses 
     WHERE practical_5.courses.coursecode=course_id; 
END //
DELIMITER ;
call course_name("EXL20");