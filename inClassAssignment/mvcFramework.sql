drop database if exists patternMVCAuth;
drop user if exists 'mvcuser'@'localhost';

create database patternMVCAuth;
use patternMVCAuth;

create table users(
   userID int AUTO_INCREMENT,
   username varchar(30) not null, index(username),
   lastname varchar(50),
   firstname varchar(30),
   passwd varchar(30),
   email varchar(255),
   urole varchar(30),
   lastModified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   primary key(userID)
)engine=innodb;

create user 'mvcuser'@'localhost' identified by 'mvcpass';
grant all privileges on patternMVCAuth.* to 'mvcuser'@'localhost';

insert into users(username,lastname,firstname,passwd,email,urole) values 
   ('admin','Admin','Admin','admin123','admin@mail.com','admin'),
    ('jsmith','Smith','Joe','buddy','jsmith@gmail.com','admin'),
   ('bwilliams','Williams','Brian','pass123','bwilliams@gmail.com','user'),
   ('mjones','Jones','Mike','pass1234','mjones@gmail.com','user'),
   ('mjohnson','Johnson','Monica','password','mjohnson@gmail.com','user'),
   ('user1', 'Doe', 'John', 'password1', 'user1@example.com', 'user'),
   ('user2', 'Smith', 'Alice', 'password2', 'user2@example.com', 'user'),
   ('user3', 'Johnson', 'Michael', 'password3', 'user3@example.com', 'user'),
   ('user4', 'Williams', 'Emma', 'password4', 'user4@example.com', 'user'),
   ('user5', 'Brown', 'Olivia', 'password5', 'user5@example.com', 'user'),
   ('user6', 'Jones', 'William', 'password6', 'user6@example.com', 'user'),
   ('user7', 'Garcia', 'Sophia', 'password7', 'user7@example.com', 'user'),
   ('user8', 'Martinez', 'James', 'password8', 'user8@example.com', 'user'),
   ('user9', 'Hernandez', 'Charlotte', 'password9', 'user9@example.com', 'user'),
   ('user10', 'Young', 'Daniel', 'password10', 'user10@example.com', 'user'),
   ('user11', 'Lee', 'Emily', 'password11', 'user11@example.com', 'user'),
   ('user12', 'Walker', 'Benjamin', 'password12', 'user12@example.com', 'user'),
   ('user13', 'Hall', 'Abigail', 'password13', 'user13@example.com', 'user'),
   ('user14', 'Allen', 'Matthew', 'password14', 'user14@example.com', 'user'),
   ('user15', 'Scott', 'Ava', 'password15', 'user15@example.com', 'user'),
   ('user16', 'Green', 'Jacob', 'password16', 'user16@example.com', 'user'),
   ('user17', 'Adams', 'Evelyn', 'password17', 'user17@example.com', 'user'),
   ('user18', 'Baker', 'Logan', 'password18', 'user18@example.com', 'user'),
   ('user19', 'King', 'Mia', 'password19', 'user19@example.com', 'user'),
   ('user20', 'Wright', 'Elijah', 'password20', 'user20@example.com', 'user'),
   ('user21', 'Lopez', 'Grace', 'password21', 'user21@example.com', 'user'),
   ('user22', 'Hill', 'Liam', 'password22', 'user22@example.com', 'user'),
   ('user23', 'Scott', 'Harper', 'password23', 'user23@example.com', 'user'),
   ('user24', 'Adams', 'Zoe', 'password24', 'user24@example.com', 'user'),
   ('user25', 'Cook', 'Nathan', 'password25', 'user25@example.com', 'user'),
   ('user26', 'Murphy', 'Isabella', 'password26', 'user26@example.com', 'user'),
   ('user27', 'Kelly', 'Ryan', 'password27', 'user27@example.com', 'user'),
   ('user28', 'Gonzalez', 'Lily', 'password28', 'user28@example.com', 'user'),
   ('user29', 'Perez', 'David', 'password29', 'user29@example.com', 'user'),
   ('user30', 'Roberts', 'Layla', 'password30', 'user30@example.com', 'user'),
   ('user31', 'Wood', 'Noah', 'password31', 'user31@example.com', 'user'),
   ('user32', 'Evans', 'Chloe', 'password32', 'user32@example.com', 'user'),
   ('user33', 'Stewart', 'Alexander', 'password33', 'user33@example.com', 'user'),
   ('user34', 'Gray', 'Madison', 'password34', 'user34@example.com', 'user'),
   ('user35', 'Rivera', 'Ella', 'password35', 'user35@example.com', 'user'),
   ('user36', 'Simmons', 'Lucas', 'password36', 'user36@example.com', 'user'),
   ('user37', 'Foster', 'Sofia', 'password37', 'user37@example.com', 'user'),
   ('user38', 'Butler', 'Aiden', 'password38', 'user38@example.com', 'user'),
   ('user39', 'Barnes', 'Scarlett', 'password39', 'user39@example.com', 'user'),
   ('user40', 'Ross', 'Jackson', 'password40', 'user40@example.com', 'user'),
   ('user41', 'Ward', 'Avery', 'password41', 'user41@example.com', 'user'),
   ('user42', 'Coleman', 'Elena', 'password42', 'user42@example.com', 'user'),
   ('user43', 'Russell', 'Connor', 'password43', 'user43@example.com', 'user'),
   ('user44', 'Griffin', 'Hannah', 'password44', 'user44@example.com', 'user'),
   ('user45', 'Gibson', 'Luke', 'password45', 'user45@example.com', 'user'),
   ('user46', 'Murray', 'Penelope', 'password46', 'user46@example.com', 'user'),
   ('user47', 'Jenkins', 'Caleb', 'password47', 'user47@example.com', 'user'),
   ('user48', 'Perry', 'Aria', 'password48', 'user48@example.com', 'user'),
   ('user49', 'Powell', 'Gabriel', 'password49', 'user49@example.com', 'user'),
   ('user50', 'Long', 'Samantha', 'password50', 'user50@example.com', 'user');