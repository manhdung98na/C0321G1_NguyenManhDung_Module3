create database quanlysinhvien;
use quanlysinhvien;
create table class(
	ClassID int not null primary key auto_increment,
    ClassName varchar(60) not null,
    StartDate datetime not null,
    Status bit 
);
create table student(
	StudentId int not null primary key auto_increment,
    StudentName varchar(30) not null,
    Address varchar(50),
    Phone varchar(20),
    Status bit,
    ClassId int not null,
    foreign key (ClassId) references class(ClassID)
);

create table subject(
	SubID int not null primary key auto_increment,
    SubName varchar(30) not null,
    Credit tinyint not null default 1 check (Credit >= 1),
    Status bit default 1
);

create table mark(
	MarkID int not null auto_increment primary key,
    SubID int not null,
    StudentID int not null,
    Mark float default 0 check (Mark between 0 and 100),
    ExamTimes tinyint default 1,
    unique(SubID, StudentID),
    foreign key (SubID) references subject(SubID),
    foreign key (StudentID) references student(StudentId)
);