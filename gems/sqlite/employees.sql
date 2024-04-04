CREATE TABLE employees (
  id INTEGER PRIMARY KEY,
  username TEXT NOT NULL,
  password TEXT NOT NULL,
  role TEXT NOT NULL
);

INSERT INTO employees
(username, password, role)
VALUES
("andrew1", "$2a$12$11NjdceCL5xjWhu/jpPG8.apOlU2yUctwUMDOBYbS5COCYddGoG/K", "manager"),
("Alex", "$2a$12$xfFXzszTTGSPznN4ykx76OzRWHoS51/00iQDY16QYPbyiUfgxaKiu", "rider"),
("Many", "$2a$12$HJZU.BMjyx6kIGP/i9V0COVL5H9sdG4OIEFnRzWvEGwCmv3HD/WFa", "manager");
