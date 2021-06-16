USE QuanLySinhVien;

SELECT 
    Address, COUNT(student_id) AS 'Số lượng học viên'
FROM
    Student
GROUP BY Address;

SELECT 
    S.student_id, S.student_name, AVG(Mark)
FROM
    Student S
        JOIN
    Mark M ON S.student_id = M.student_id
GROUP BY S.student_id , S.student_name;

SELECT 
    S.student_id, S.student_name, AVG(Mark)
FROM
    Student S
        JOIN
    Mark M ON S.student_id = M.student_id
GROUP BY S.student_id , S.student_name
HAVING AVG(Mark) > 15;

SELECT 
    S.student_id, S.student_name, AVG(Mark)
FROM
    Student S
        JOIN
    Mark M ON S.student_id = M.student_id
GROUP BY S.student_id , S.student_name
HAVING AVG(Mark) >= ALL (SELECT 
        AVG(Mark)
    FROM
        Mark
    GROUP BY Mark.student_id);