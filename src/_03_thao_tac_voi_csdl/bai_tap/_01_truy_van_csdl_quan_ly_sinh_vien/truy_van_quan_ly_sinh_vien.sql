-- Truy vấn dữ liệu với CSDL Quản lý sinh viên
use quanlysinhvien;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘H’
SELECT 
    *
FROM
    student s
WHERE
    s.student_name LIKE 'H%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12
SELECT 
    class_name, start_date
FROM
    class c
WHERE
    c.start_date REGEXP '^.{5}12';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5
SELECT 
    subject_name, credit
FROM
    subject s
WHERE
    s.Credit BETWEEN 3 AND 5;

-- Thay đổi mã lớp(class_id) của sinh viên có tên ‘Hung’ là 2
UPDATE student 
SET 
    class_id = 2
WHERE
    student_name = 'Hung';

-- Hiển thị các thông tin: student_name, subject_name, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần
SELECT 
    std.student_name, sub.subject_name, m.Mark
FROM
    student std
        JOIN
    mark m ON std.student_id = m.student_id
        JOIN
    subject sub ON sub.subject_id = m.subject_id
ORDER BY Mark DESC , std.student_name ASC;