create database quanlybanhang;
use quanlybanhang;
create table customer(
	cID int auto_increment primary key,
    cName varchar(50) not null,
    cAge tinyint not null check (cAge > 0)
);

create table orderr(
	oID int auto_increment primary key,
    oDate datetime not null,
    oTotalPrice int not null check(oTotalPrice > 0),
    cID int,
    foreign key (cID) references customer(cID)
);

create table product(
	pID int auto_increment primary key,
    pName varchar(50) not null,
    pPrice int not null check(pPrice > 0)
);

create table orderdetail(
	oID int,
    pID int,
    odQTY int,
    primary key(oID, pID),
    foreign key(oID) references orderr(oID),
    foreign key(pID) references product(pID)
);