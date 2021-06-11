use quanlysinhvien;

-- thêm vào bảng Class --
insert into class values(1, 'A1', '2008-12-20', 1), (2,'A2', '2008-12-22', 1), (3, 'B3', current_date(), 0);

-- Thêm vào bảng Student --
insert into student value (1, 'Hung', 'Ha noi', 0912113113, 1, 1);
insert into student (StudentId, StudentName, Address, Status, ClassId) value (2, 'Hoa', 'Hai Phong', 1,1);
insert into student value (3, 'Manh', 'HCM', 0123123123, 0, 2);

-- thêm vào bảng Subject --
insert into subject value (1,'CF', 5, 1), (2, 'C', 6, 1), (3, 'HDJ', 5, 1), (4, 'RDBMS', 10, 1);

-- thêm vào bảng Mark --
insert into mark value(1,1,1,8,1), (2,1,2,10,2), (3,2,1,12,1);