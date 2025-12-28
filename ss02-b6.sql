CREATE TABLE Score (
	studentId int not null,
    subjectId int not null,
	FOREIGN KEY (studentId) REFERENCES student(studentId),
    FOREIGN KEY (subjectId) REFERENCES Subject(subjectId),
    process_score int not null CHECK (process_score>=0 and process_score<=10),
    final_exam_score int not null CHECK (final_exam_score>=0 and final_exam_score<=10)
);