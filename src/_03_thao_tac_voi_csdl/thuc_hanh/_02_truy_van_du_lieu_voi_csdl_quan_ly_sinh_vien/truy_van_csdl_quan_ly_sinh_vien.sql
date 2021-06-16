use quanlysinhvien;

-- hiển thị danh sách tất cả các học viên --
SELECT 
    *
FROM
    student;

-- Hiển thị danh sách các học viên đang theo học -- 
SELECT 
    *
FROM
    student
WHERE
    status = 1;

-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ --
SELECT 
    *
FROM
    `subject`
WHERE
    credit < 10;

-- Hiển thị danh sách học viên lớp A1 --
SELECT 
    S.student_id, S.student_name, C.class_name
FROM
    Student S
        JOIN
    Class C ON S.class_id = C.class_id
WHERE
    C.class_name = 'A1';

-- Hiển thị điểm môn CF của các học viên
SELECT 
    student.student_id,
    student.student_name,
    `subject`.subject_name,
    mark.Mark
FROM
    student
        JOIN
    mark ON student.student_id = mark.student_id
        JOIN
    `subject` ON `subject`.subject_id = mark.subject_id
WHERE
    `subject`.subject_name = 'CF';
