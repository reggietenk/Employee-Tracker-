INSERT INTO department (name)
VALUES
('Sales'),
('Design'),
('Service'),
('Billing');


INSERT INTO roles (title, salary, department_id)
VALUES
('Sales-Rep', 55000, 1),
('Engineer', 105000, 2),
('Service-Rep', 70000, 3),
('Acct-Payable', 80000, 4);



INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
  ('Ronald', 'Firbank', 1, 1),
  ('Virginia', 'Woolf', 1, 1),
  ('Piers', 'Gaveston', 1, 0),
  ('Charles', 'LeRoi', 2, 1),
  ('Katherine', 'Mansfield', 2, 1),
  ('Dora', 'Carrington', 3, 0),                                                         
  ('Edward', 'Bellamy', 3, 0),
  ('Montague', 'Summers', 3, 1),
  ('Octavia', 'Butler', 3, 1),
  ('Unica', 'Zurn', NULL, 1);

  