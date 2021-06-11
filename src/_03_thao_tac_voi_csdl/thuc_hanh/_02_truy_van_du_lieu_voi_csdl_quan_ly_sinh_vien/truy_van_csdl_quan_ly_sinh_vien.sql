use quanlysinhvien;

-- hiển thị danh sách tất cả các học viên --
select * from student;

-- Hiển thị danh sách các học viên đang theo học -- 
select * from student where status = 1;

-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ --
select * from subject where credit < 10;

-- Hiển thị danh sách học viên lớp A1 --
SELECT S.StudentId, S.StudentName, C.ClassName FROM Student S join Class C on S.ClassId = C.ClassID WHERE C.ClassName = 'A1';

-- Hiển thị điểm môn CF của các học viên
select student.StudentId, student.StudentName, subject.SubName, mark.Mark 
	from student join mark on student.StudentId = mark.StudentID 
				 join subject on subject.SubID = mark.SubID where subject.SubName = 'CF';
