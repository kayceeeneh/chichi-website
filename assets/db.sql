CREATE TABLE menu_items (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    image TEXT NOT NULL
);

INSERT INTO menu_items (name, price, image) VALUES
('EWA AGANYIN STEW AND BEANS', '£125.00', 'images/ewa-aganyin.jpg'),
('BEANS AND CORN (ADALU)', '£100.00', 'images/adalu.jpg'),
('PLATAIN PORRIDGE (with stewed beef)', '£120.00', 'images/plantain-porridge.jpg'),
('YAM PORRIDGE (with stewed beef)', '£135.00', 'images/yam-porridge.jpg'),
('JOLLOF RICE', '£150.00', 'images/jollof-rice.jpg'),
('FRIED RICE', '£140.00', 'images/fried-rice.jpg'),
('PEPPER SOUP', '£110.00', 'images/pepper-soup.jpg'),
('MOI MOI', '£90.00', 'images/moi-moi.jpg'),
('PUFF PUFF', '£50.00', 'images/puff-puff.jpg'),
('SUYA', '£130.00', 'images/suya.jpg'),
('PEPPERED SNAIL', '£160.00', 'images/peppered-snail.jpg'),
('OFADA RICE', '£170.00', 'images/ofada-rice.jpg'),
('EGUSI SOUP', '£180.00', 'images/egusi-soup.jpg'),
('OKRA SOUP', '£150.00', 'images/sea food okro soup.jpg');

CREATE TABLE menu_details (
    id INTEGER PRIMARY KEY,
    menu_item_id INTEGER NOT NULL,
    description TEXT NOT NULL,
    ingredients TEXT NOT NULL,
    FOREIGN KEY (menu_item_id) REFERENCES menu_items(id) ON DELETE CASCADE
);

INSERT INTO menu_details (menu_item_id, description, ingredients) VALUES
(1, 'A delicious stew made with beans and special spices.', 'Beans, spices, oil'),
(2, 'A traditional dish made with beans and corn.', 'Beans, corn, spices'),
(3, 'Porridge made with plantains and stewed beef.', 'Plantains, beef, spices'),
(4, 'Porridge made with yams and stewed beef.', 'Yams, beef, spices'),
(5, 'Classic Jollof rice with a rich tomato base.', 'Rice, tomatoes, spices'),
(6, 'Fried rice with vegetables and spices.', 'Rice, vegetables, spices'),
(7, 'Spicy pepper soup with a rich broth.', 'Broth, spices, meat'),
(8, 'Steamed bean pudding.', 'Beans, spices, oil'),
(9, 'Deep-fried dough balls.', 'Flour, sugar, oil'),
(10, 'Grilled spicy meat skewers.', 'Meat, spices, oil'),
(11, 'Spicy and flavorful snails.', 'Snails, spices, oil'),
(12, 'Traditional Nigerian rice dish.', 'Rice, spices, oil'),
(13, 'Rich and hearty melon seed soup.', 'Melon seeds, meat, spices'),
(14, 'Savory soup with okra and spices.', 'Okra, meat, spices');
