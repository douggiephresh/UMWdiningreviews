DROP DATABASE UMWdining;

CREATE DATABASE IF NOT EXISTS UMWdining;
GRANT ALL PRIVILEGES ON UMWdining.* to 'website'@'localhost' identified by 'umwdiningsecret';
USE UMWdining;



CREATE TABLE IF NOT EXISTS reviews (
	reviewkey int NOT NULL AUTO_INCREMENT,
	description VARCHAR(160),
	rating int NOT NULL,
	PRIMARY KEY (reviewkey)
);


CREATE TABLE IF NOT EXISTS foods (
	foodkey int NOT NULL AUTO_INCREMENT,
	name varchar(25) NOT NULL,
	description varchar(160),
	PRIMARY KEY (foodkey)
);


CREATE TABLE IF NOT EXISTS locations  (
	locationkey int NOT NULL AUTO_INCREMENT,
	name char (24) NOT NULL,
	description VARCHAR(160),
	image VARCHAR(160),
	PRIMARY KEY (locationkey)
);


CREATE TABLE IF NOT EXISTS review_food (
	reviewkey int NOT NULL AUTO_INCREMENT,
	foodkey int,
	FOREIGN KEY(reviewkey) REFERENCES reviews(reviewkey),
	FOREIGN KEY(foodkey) REFERENCES foods(foodkey)
);


CREATE TABLE IF NOT EXISTS food_location (
	foodkey int,
	locationkey int,
	FOREIGN KEY (foodkey) REFERENCES foods(foodkey),
	FOREIGN KEY(locationkey) REFERENCES locations(locationkey)
);


INSERT INTO reviews (reviewkey, description, rating) VALUES
(1, 'This was a good slice of pizza', 4),
(2, 'The bread was a little stale', 2),
(3, 'Wow! Those wings really were great!', 5),
(4, 'I love red pepper gouda!', 5);

INSERT INTO locations (locationkey, name, description, image) VALUES
(1, 'Vocelli''s', 'The best pizza on campus!', '/blah/blah.jpeg'),
(2, 'Joe Stacks', 'Hot and cold sandwiches and coffee.', '/blah/blah.jpeg'),
(3, 'Woodstock', 'All natural and goood for you.', '/blah/blah.jpeg'),
(4, 'Wow Wingery', 'Come try our wings!', '/blah/blah.jpeg');

INSERT INTO foods (foodkey, name, description) VALUES
(1, 'Cheese Pizza', 'Two hot slices of cheese pizza'),
(2, 'Sandwich', 'One made to order sandwich.  Hot or cold.'),
(3, 'Vocelli''s Rolls', 'Two bread sticks with pepperoni and cheese'),
(4, 'Wings', 'Wings in any of our sauces with fries.'),
(5, 'Soup', 'Hot bowl of soup with a choice of your side.');

INSERT INTO review_food (reviewkey, foodkey) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 5);

INSERT INTO food_location (foodkey, locationkey) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 4),
(5, 3);




