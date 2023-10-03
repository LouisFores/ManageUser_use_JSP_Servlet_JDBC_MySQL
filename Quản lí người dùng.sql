-- Create database manage users
CREATE DATABASE quan_li_nguoi_dung;
USE quan_li_nguoi_dung;
create table users (
     id int(3) NOT NULL AUTO_INCREMENT,
     name varchar(120) NOT NULL,
     email varchar(220) NOT NULL,
     country varchar(120),
     PRIMARY KEY (id)
);
insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');


create table Permission(
      id int(11) primary key,
      name varchar(50)
);

create table User_Permission(
     permission_id int(11),
     user_id int(11)
);

insert into Permission(id, name) values(1, 'add');

insert into Permission(id, name) values(2, 'edit');

insert into Permission(id, name) values(3, 'delete');

insert into Permission(id, name) values(4, 'view');

-- Call MySQL Stored Procedures from JDBC
DELIMITER $$
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
SELECT name, email, country
FROM users
where users.id = user_id;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_user(IN user_name varchar(50),IN user_email varchar(50),IN user_country varchar(50))
BEGIN
INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);
END$$
DELIMITER 
create table Employee (
                          id int(3) NOT NULL AUTO_INCREMENT,
                          name varchar(120) NOT NULL,
                          salary int(220) NOT NULL,
                          created_Date datetime,
                          PRIMARY KEY (id)
);

select * from users;

call insert_user('hhh', 'lll', 'ccc');
