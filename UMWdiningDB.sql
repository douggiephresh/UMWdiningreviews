DROP DATABASE UMWdining;

CREATE DATABASE IF NOT EXISTS UMWdining;
GRANT ALL PRIVILEGES ON UMWdining.* to 'website'@'localhost' identified by 'umwdiningsecret';
USE UMWdining;



CREATE TABLE IF NOT EXISTS reviews (
	reviewkey int(11) NOT NULL AUTO_INCREMENT,
	description VARCHAR(160),
	rating int NOT NULL,
	PRIMARY KEY (reviewkey)
);


CREATE TABLE IF NOT EXISTS foods (
	foodkey int(11) NOT NULL AUTO_INCREMENT,
	name varchar(25) NOT NULL,
	description varchar(160),
	PRIMARY KEY (foodkey)
);


CREATE TABLE IF NOT EXISTS locations  (
	locationkey int (11) NOT NULL AUTO_INCREMENT,
	name char (24) NOT NULL,
	description VARCHAR(160),
	image VARCHAR(160),
	PRIMARY KEY (locationkey)
);


CREATE TABLE IF NOT EXISTS review_food (
	reviewkey int(11) NOT NULL AUTO_INCREMENT,
	foodkey int(11),
	FOREIGN KEY(reviewkey) REFERENCES reviews(reviewkey),
	FOREIGN KEY(foodkey) REFERENCES foods(foodkey)
);


CREATE TABLE IF NOT EXISTS food_location (
	foodkey int(11),
	locationkey int(11),
	FOREIGN KEY (foodkey) REFERENCES foods(foodkey),
	FOREIGN KEY(locationkey) REFERENCES locations(locationkey)
);

