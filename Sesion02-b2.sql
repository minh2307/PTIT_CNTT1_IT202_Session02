CREATE DATABASE IT202;
USE IT202;

CREATE TABLE Class (
	classId int PRIMARY KEY,
    className char(10) not null,
    course varchar(10) not null
);

CREATE TABLE Student (
	StudentId int PRIMARY KEY,
    StudentName char(10) not null,
    birthDay varchar(10) not null,
    classId int,
    FOREIGN KEY (classId) REFERENCES Class(classId)
);