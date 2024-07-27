SELECT DISTINCT practical_4.students.lastname, practical_4.student_taking_course.studentid
FROM practical_4.students, practical_4.student_taking_course, courses
WHERE coursecost < 250;