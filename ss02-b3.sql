CREATE TABLE Student (
	StudentId int PRIMARY KEY,
    StudentName varchar(10) not null
);
CREATE TABLE Subject (
	SubjectId int PRIMARY KEY,
    SubjectName varchar(10) not null,
    credits int CHECK (credits > 0)
);