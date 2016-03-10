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
