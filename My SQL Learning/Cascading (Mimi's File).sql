-- child table

-- parents table

CREATE TABLE class_mimi (
id         VARCHAR (10)     NOT NULL  PRIMARY KEY,
class_name    VARCHAR (100) NOT NULL,
teacher_name VARCHAR (100) NOT NULL
);

DESC class_mimi;


INSERT INTO class_mimi ( id, class_name, teacher_name)
VALUES ( 'P101', 'math', 'mr. raymond'),
       ( 'P102', 'science', 'mrs. putri'),
       ( 'P103', 'english', 'mrs. aisyah'),
       ( 'P104', 'economic', 'mr. timothy');

select * from class_mimi;







INSERT INTO class_mimi ( id, class_name, teacher_name)
VALUES ( 'PXXX', 'ex', 'mr. ex');






create table students_mimi (
id  INT     NOT NULL    PRIMARY KEY,
id_class VARCHAR (10) NOT NULL, 
name VARCHAR (100) NOT NULL,
age    INT NOT NULL
)engine = InnoDB;

 
ALTER TABLE students_mimi
ADD CONSTRAINT fk_students_class
        FOREIGN KEY (id_class) REFERENCES class_mimi(id)
        ON UPDATE CASCADE
        ON DELETE cascade;


INSERT INTO students_mimi ( id, id_class, name, age)
VALUES (1, 'P101', 'mira', 22),
       (2, 'P103',  'mimi', 21);
       

desc students_mimi;
select * from students_mimi;

INSERT INTO students_mimi
VALUES ( 3, 'pxxx', 'shaheer', 21);


delete from class_mimi
where id = 'PXXX'