DROP DATABASE UMWdining;

CREATE DATABASE IF NOT EXISTS UMWdining;
GRANT ALL PRIVILEGES ON UMWdining.* to 'website'@'localhost' 
identified by 'umwdiningsecret';
USE UMWdining;

CREATE TABLE reviews
(
  food VARCHAR(25),
  locations VARCHAR(25),
  rating int,
  summary VARCHAR(144)
);
  
INSERT INTO reviews VALUES ('Sandwich', 'The Nest', 5, 'The sandwich was a bit dry however I enjoyed the options.');
INSERT INTO reviews VALUES ('Soup', 'Woodstock', 6, 'Good soup.  Wish they had more varieties.');
INSERT INTO reviews VALUES ('Salad', 'Seacobeck', 3, 'The variety of toppings is not the problem. There are so many choices!  The food however sits out too long.');
INSERT INTO reviews VALUES ('Omlette', 'Seacobeck', 9, 'Estelle makes the best omlettes I have ever tasted.');

