SELECT DISTINCT lastname 
FROM practical_4.students, practical_4.student_taking_course 
WHERE coursecode = "REL20";
#Note that this doesn't account for the fact that there are 2 Murphys