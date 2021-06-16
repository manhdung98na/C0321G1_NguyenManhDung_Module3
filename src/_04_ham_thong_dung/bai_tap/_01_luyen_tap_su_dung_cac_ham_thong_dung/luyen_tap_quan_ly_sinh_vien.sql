-- Luyện tập các hàm thông dụng trong SQL
SELECT 
    *
FROM
    subject
WHERE
    credit = (SELECT 
            MAX(credit)
        FROM
            subject);
    
    -- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT 
    s.subject_id, s.subject_name, s.Credit, s.`Status`, m.mark
FROM
    subject s
        JOIN
    mark m ON m.subject_id = s.subject_id
WHERE
    m.mark = (SELECT 
            MAX(mark)
        FROM
            mark);
    
    -- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT 
    s.student_id,
    s.student_name,
    COUNT(m.mark) AS so_mon_co_diem,
    AVG(mark) AS diem_trung_binh
FROM
    student s
        JOIN
    mark m ON s.student_id = m.student_id
GROUP BY s.student_name
ORDER BY diem_trung_binh DESC;