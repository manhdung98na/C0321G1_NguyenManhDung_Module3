CREATE DATABASE demo;
USE demo;
create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

TRUNcate table users;

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(name, email, country) values('Kagrtnte','kante@che.uk','Kqưe enia');
insert into users(name, email, country) values('Kandsfste','kante@che.uk','Keư nia');
insert into users(name, email, country) values('Kancvcte','kante@che.uk','Keni a');
insert into users(name, email, country) values('Kaxv ádnte','kante@che.uk','Ksda enia');
insert into users(name, email, country) values('Ka ádeq nte','kante@che.uk','Ke ánia');

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

