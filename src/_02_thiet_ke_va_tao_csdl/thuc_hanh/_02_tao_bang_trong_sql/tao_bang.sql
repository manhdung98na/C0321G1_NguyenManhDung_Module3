create database QuanLyDiemThi;
use QuanLyDiemThi;
create table HocSinh(
	MaHS varchar(20) primary key,
    TenHS varchar(50),
    NgaySinh datetime,
    Lop varchar(20),
    GT varchar(20)
);

create table MonHoc(
	MaMH varchar(20) primary key,
    TenMH varchar(50)
);

CREATE TABLE BangDiem (
    MaHS VARCHAR(20),
    MaMH VARCHAR(20),
    DiemThi INT,
    NgayKT DATE,
    PRIMARY KEY (MaHS , MaMH),
    FOREIGN KEY (MaHS)
        REFERENCES hocsinh (MaHS),
    FOREIGN KEY (MaMH)
        REFERENCES monhoc (MaMH)
);

create table GiaoVien(
	MaGV varchar(20) primary key,
    TenGV varchar(50),
    SDT int
);

alter table MonHoc ADD MaGV VARCHAR(20);
alter table MonHoc add constraint FK_MaGV foreign key(MaGV) references giaovien(MaGV);