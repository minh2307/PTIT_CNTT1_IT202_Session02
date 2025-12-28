CREATE TABLE Class (
	classId int PRIMARY KEY,
    className varchar(10) not null,
    course varchar(10) not null
);

CREATE TABLE Student (
	StudentId int PRIMARY KEY,
    StudentName varchar(10) not null,
    birthDay date not null,
    classId int,
    FOREIGN KEY (classId) REFERENCES Class(classId)
);

CREATE TABLE Subject (
	SubjectId int PRIMARY KEY,
    SubjectName varchar(10) not null,
    credits int CHECK (credits > 0)
);

CREATE TABLE Teacher (
	TeacherId int PRIMARY KEY,
    TeacherName varchar(15) not null,
    email varchar(50) not null UNIQUE
);

CREATE TABLE Score (
	studentId int not null,
    subjectId int not null,
    process_score int not null CHECK (process_score >= 0 AND process_score <= 10),
    final_exam_score int not null CHECK (final_exam_score >= 0 AND final_exam_score <= 10),
    PRIMARY KEY (studentId, subjectId),
	FOREIGN KEY (studentId) REFERENCES Student(StudentId),
    FOREIGN KEY (subjectId) REFERENCES Subject(SubjectId)
);

CREATE TABLE Enrollment (
	SubjectId int not null,
    StudentId int not null,
    TeacherId int not null,
    PRIMARY KEY (SubjectId, StudentId),
	FOREIGN KEY (SubjectId) REFERENCES Subject(SubjectId),
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
    FOREIGN KEY (TeacherId) REFERENCES Teacher(TeacherId)
);


