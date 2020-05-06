drop table INSTRUCTOR;

CREATE TABLE INSTRUCTOR
(
	Ins_id INTEGER PRIMARY KEY NOT NULL, 
	lastname VARCHAR(15) NOT NULL, 
	firstname VARCHAR(15) NOT NULL,
	city VARCHAR(15),
	country CHAR(2)
);

INSERT INTO INSTRUCTOR
(ins_id, lastname, firstname, city, country )
VALUES
('1', 'Ahuja', 'Rav', 'Toronto', 'CA'),
('2', 'Chong', 'Raul', 'Toronto', 'CA'),
('3', 'Vasudevan', 'Hima', 'Chicago', 'US');

SELECT * from INSTRUCTOR;

SELECT firstname,lastname,country FROM INSTRUCTOR WHERE city='Toronto';

UPDATE INSTRUCTOR SET city='Markham' WHERE ins_id='1';

DELETE FROM INSTRUCTOR WHERE firstname='Raul' and lastname='Chong';

SELECT * from INSTRUCTOR;



