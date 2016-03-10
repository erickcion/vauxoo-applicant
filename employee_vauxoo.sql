-- Table employee
CREATE TABLE employee
(
   id serial, 
   first_name character varying, 
   last_name character varying, 
   PRIMARY KEY (id)
);

-- Table employee_department
CREATE TABLE employee_department
(
   id serial, 
   name character varying, 
   description character varying, 
   PRIMARY KEY (id)
);

-- Foreign Key
ALTER TABLE employee
  ADD COLUMN department_id integer;
ALTER TABLE employee
  ADD FOREIGN KEY (department_id) REFERENCES employee_department (id);


-- Insert departments
INSERT INTO employee_department(name, description)
    VALUES ('Reception', 'Client information and reception area'),
	   ('Administration', 'Administration and cash department'),
	   ('Human Resources', 'Direct interaction with employees and contract activities'),
	   ('Electrical Coordination', 'Projects electrical team'),
	   ('Planning', 'Project planing team'),
	   ('Direction', 'General direction of the company')
;

-- Insert employees
INSERT INTO employee(
            first_name, last_name, department_id)
    VALUES ('Sara', 'Díaz', 6),
		   ('Erick', 'Birbe', 4),
		   ('Juan', 'Contreras', 4),
		   ('Belkys', 'Salazar', 1)
;

-- Table employee_hobby
CREATE TABLE employee_hobby
(
   id serial, 
   name character varying, 
   description character varying, 
   PRIMARY KEY (id)
);

-- Relation Eployee and Hobby
CREATE TABLE employee_employeehobby
(
   employee_id integer, 
   hobby_id integer,
   PRIMARY KEY (employee_id, hobby_id),
   FOREIGN KEY (employee_id) REFERENCES employee_department (id),
   FOREIGN KEY (hobby_id) REFERENCES employee_department (id)
);

-- Insert Hobbies
INSERT INTO employee_hobby(name, description)
    VALUES ('Music', 'People who likes to play music'),
	   ('Sports', 'People who likes to practice sports'),
	   ('Sleep', 'People who likes to do nothing')
;

-- Employess hobbies
INSERT INTO employee_employeehobby(employee_id, hobby_id)
    VALUES (1, 1),
		   (1, 3),
		   (2, 1),
		   (2, 2),
		   (2, 3),
		   (3, 3),
		   (3, 2),
		   (3, 1),
		   (4, 1),
		   (4, 3)
;

-- Adding Boss
ALTER TABLE employee
  ADD COLUMN boss_id integer DEFAULT NULL;
ALTER TABLE employee
  ADD FOREIGN KEY (boss_id) REFERENCES employee (id);

UPDATE employee SET boss_id = 1 WHERE id IN (1, 2, 4);
UPDATE employee SET boss_id = 2 WHERE id = 3;
