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

CREATE TABLE descriptions 
(
	name VARCHAR(35) NOT NULL,
	picture VARCHAR(255),
	description VARCHAR(255)

);

CREATE TABLE menu
(
   location VARCHAR(25),
   items VARCHAR(100)
);

  
INSERT INTO reviews VALUES ('Sandwich', 'The Nest', 5, 'The sandwich was a bit dry however I enjoyed the options.');
INSERT INTO reviews VALUES ('Soup', 'Woodstock', 6, 'Good soup.  Wish they had more varieties.');
INSERT INTO reviews VALUES ('Salad', 'Seacobeck', 3, 'The variety of toppings is not the problem. There are so many choices!  The food however sits out too long.');
INSERT INTO reviews VALUES ('Omlette', 'Seacobeck', 9, 'Estelle makes the best omlettes I have ever tasted.');



INSERT INTO descriptions VALUES ('The Underground', 'A Picture', 'A description');
INSERT INTO descriptions VALUES ('Seacobeck Dining Hall', 'A PIcture', 'A description');
INSERT INTO descriptions VALUES ('The Eagles Nest', 'A Pciture', 'A description');


INSERT INTO menu VALUES ('SeacoBeck', 'cheeseburger, pasta, chicken');
INSERT INTO menu VALUES ('The Nest"', 'Buffalo Wrap, Burger, Wings');
