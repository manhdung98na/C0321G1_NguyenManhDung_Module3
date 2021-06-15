-- Luyện tập các hàm thông dụng trong SQL
	-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
    Select * from subject where credit = (select max(credit) from subject); 
    
    -- Hiển thị các thông tin môn học có điểm thi lớn nhất.
    select s.SubID, s.SubName, s.Credit, s.`Status`, m.mark from subject s join mark m on m.subid = s.subid 
		where m.mark = (select max(mark) from mark);
    
    -- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
    select s.studentid, s.studentname, count(m.mark) as so_mon_co_diem, AVG(mark) as diem_trung_binh from student s join mark m on s.studentid = m.studentid group by s.StudentName order by diem_trung_binh desc;