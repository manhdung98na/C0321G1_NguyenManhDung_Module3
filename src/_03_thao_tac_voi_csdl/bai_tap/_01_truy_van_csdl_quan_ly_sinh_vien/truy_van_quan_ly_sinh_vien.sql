-- Truy vấn dữ liệu với CSDL Quản lý sinh viên
use quanlysinhvien;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘H’
select * from student s where s.StudentName like 'H%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12
select ClassName, StartDate from class c where c.StartDate regexp '^.{5}12';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5
select subname, credit from subject s where s.Credit between 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2
update student set classid = 2 where studentname = 'Hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần
select std.StudentName, sub.SubName, m.Mark from student std join mark m on std.StudentId = m.StudentID join subject sub on sub.SubID = m.SubID order by Mark desc,std.StudentName asc;
