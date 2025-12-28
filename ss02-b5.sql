CREATE TABLE Teacher (
	TeacherId int not null primary key,
    TeacherName varchar(15) not null,
    email varchar(15) not null
    
);

CREATE TABLE Enrollment (
	SubjectId int not null,
    StudentId int not null,
    TeacherId int not null,
	FOREIGN KEY (SubjectId) REFERENCES Subject(SubjectId),
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
    FOREIGN KEY (TeacherId) REFERENCES Teacher(TeacherId)
);