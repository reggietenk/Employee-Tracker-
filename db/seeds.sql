INSERT INTO department (name)
VALUES
('Sales'),
('Design'),
('Service'),
('Billing');


INSERT INTO roles (title, salary, department_id)
VALUES
('Sales Rep', 55000, 1),
('Engineer', 105000, 2),
('Office Manager', 70000, 3),
('Billing Rep', 80000, 4);



INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
  ('Ronald', 'Firbank', 'Office Manager', 1),
  ('Virginia', 'Woolf', 'Sales-Rep', 1),
  ('Piers', 'Gaveston', 'Engineer', 0),
  ('Charles', 'LeRoi', 'Billing Rep', 1),
  ('Katherine', 'Mansfield', 'Engineer', 1),
  ('Dora', 'Carrington', 'Sales Rep', 0),                                                         
  ('Edward', 'Bellamy', 'Engineer', 0),
  ('Montague', 'Summers', 'Billing Rep', 1),
  ('Octavia', 'Butler', 'Sales Rep', 1),
  ('Unica', 'Zurn', NULL, 1);

  