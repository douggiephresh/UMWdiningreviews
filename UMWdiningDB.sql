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

CREATE TABLE `Descriptions` (

'Name' VARCHAR(35) NOT NULL,
'Picture' VARCHAR(255),
'Description' VARCHAR(255),

);

INSERT into 'Descriptions' VALUES ('The Underground', 'A Picture', 'Located in Lee Hall, The Underground is a great place for students to study, eat, and enjoy the entertainment on UMW’s campus. With programs happening all week long there is always something to do in the Underground.');
INSERT into 'Descriptions' VALUES ('Seacobeck Dining Hall', 'A PIcture', 'Seacobeck Hall, designated a Green Restaurantby the Virginia Department of Environmental Quality, contains three distinct buffet-style restaurants for students, as well as the elegant Faculty and Staff Dining Room, which is used for staff luncheons and special catered events. Purchase of a meal at Seacobeck entitles the guest to visit all three student restaurants for a delicious all-you-care-to-eat dining experience. The Bistro offers Italian and Mediterranean cuisine, such as fresh hand-made pizza, paninis, gelato, and made-to-order pasta dishes. In the South Market, guests enjoy freshly made sushi, made-to-order Asian stir-fry, deli sandwiches, and Mexican or South American features like tacos or burritos. The third student dining room – The Washington Diner- offers classic American dishes, like hamburgers, French fries, grilled cheese sandwiches, mashed potatoes, and home-style meatloaf. Breakfast and lunch guests particularly enjoy the Belgian Waffle Bar, too! The restaurants also offer a plentiful array of soups, salads, and desserts.');
INSERT into 'Descriptions' VALUES ('The Eagles Nest', 'A Pciture', 'On the ground floor of the Woodard Campus Center, the Eagle’s Nest offers a variety of meals for students and visitors to the campus. EagleOne cards, as well as cash and credit cards, are accepted. There is an inside dining area as well as large a covered porch for outside dining. ');

CREATE TABLE menu;
(
   location VARCHAR(25);
   items VARCHAR(100);
)

INSERT INTO menu VALUES ('SeacoBeck', 'cheeseburger, pasta, chicken');
INSERT INTO menu VALUES ('The Nest"', 'Buffalo Wrap, Burger, Wings');
