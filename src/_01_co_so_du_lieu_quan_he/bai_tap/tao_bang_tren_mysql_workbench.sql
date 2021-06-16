create database student_management;
use student_management;
Create table student(
	`id` int not null primary key,
    `name` varchar(45) null,
    `age` int null,
    `country` varchar(45) null
);

Create table class(
	`id` int not null primary key,
    `name` varchar(45)
);

Create table teacher(
	`id` int not null primary key,
    `name` varchar(45),
    `age` int,
    `country` varchar(45)
);