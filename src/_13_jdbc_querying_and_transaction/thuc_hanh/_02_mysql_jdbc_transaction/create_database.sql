CREATE DATABASE demo;
USE demo;
create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

create table permision(
    id int(11) not null primary key ,
    name varchar(50) not null
);

create table user_permision
(
    user_id      int(11) not null,
    permision_id int(11) not null,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (permision_id) REFERENCES permision (id)
);

DELIMITER $$
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
    SELECT users.name, users.email, users.country
    FROM users
    where users.id = user_id;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_user(
    IN user_name varchar(50),
    IN user_email varchar(50),
    IN user_country varchar(50)
)
BEGIN
    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);
END$$
DELIMITER ;


TRUNcate table users;

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(name, email, country) values('Kagrtnte','kante@che.uk','Kqưe enia');
insert into users(name, email, country) values('Kandsfste','kante@che.uk','Keư nia');
insert into users(name, email, country) values('Kancvcte','kante@che.uk','Keni a');
insert into users(name, email, country) values('Kaxv ádnte','kante@che.uk','Ksda enia');
insert into users(name, email, country) values('Ka ádeq nte','kante@che.uk','Ke ánia');

insert into Permision(id, name) values(1, 'add');
insert into Permision(id, name) values(2, 'edit');
insert into Permision(id, name) values(3, 'delete');
insert into Permision(id, name) values(4, 'view');