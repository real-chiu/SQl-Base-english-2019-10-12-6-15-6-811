CREATE TABLE student (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    age INT NOT NULL,
    sex VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
); 

INSERT INTO student VALUES (001, 'zhangsan', 18, 'male'); 
INSERT INTO student VALUES (002, 'lisi', 20, 'female'); 

CREATE TABLE subject (
    id int NOT NULL,
    subject varchar(255) NOT NULL,
    teacher varchar(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
); 


INSERT INTO subject VALUES (1001, 'Chinese', 'Mr. Wang', 'the exam is easy'); 
INSERT INTO subject VALUES (1002, 'math', 'Miss Liu', 'the exam is difficult'); 

CREATE TABLE score (
    id int NOT NULL,
    student_id int NOT NULL,
    subject_id int NOT NULL,
    score FLOAT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (subject_id) REFERENCES subject(id)
); 

INSERT INTO score VALUES (1, 001, 1001, 80); 
INSERT INTO score VALUES (2, 002, 1002, 60); 
INSERT INTO score VALUES (3, 001, 1001, 70); 
INSERT INTO score VALUES (4, 002, 1002, 60.5); 

