CREATE TABLE Enrollment (
	SubjectId int not null,
    StudentId int not null,
	FOREIGN KEY (SubjectId) REFERENCES Subject(SubjectId),
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId)
);