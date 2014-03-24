DROP DATABASE UMWdining;


CREATE DATABASE IF NOT EXISTS UMWdining;
GRANT ALL PRIVILEGES ON UMWdining.* to 'website'@'localhost' 
identified by 'umwdiningsecret';
USE UMWdining;

CREATE TABLE reviews
(
  reviewkey INT() NOT NULL AUTO_INCREMENT,
  text BLOB(),
  rating int NOT NULL,
  PRIMARY KEY (reviewkey)
);

CREATE TABLE review_food
(
  reviewkey INT(),
  foodkey INT();
);

CREATE TABLE foods
(
   foodkey INT() NOT NULL AUTO_INCREMENT
   name VARCHAR(25) NOT NULL,
   description BLOB(),
   PRIMARY KEY (foodkey)
);

CREATE TABLE food_location
(
   foodkey INT(),
   locationkey INT()
);

CREATE TABLE locations 
(
   locationkey INT () NOT NULL AUTO_INCREMENT,
   name char (24) NOT NULL,
   description BLOB (),
   image BLOB (),
   PRIMARY KEY (locationkey)

);


