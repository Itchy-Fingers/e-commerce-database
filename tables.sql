CREATE DATABASE ecommerce;
USE ecommerce; -- Choosing the database to use

-- Stores bradn information like Nike, Apple, Samsung
CREATE TABLE brand (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
description TEXT
);

-- Classifies products into categories like Electronics, Clothing, Footwear
CREATE TABLE productCategory (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
description TEXT
);

-- Stores the product information.
CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
brand_id INT,
price DECIMAL(10,2),
description TEXT,
category_id INT,
FOREIGN KEY (brand_id) REFERENCES brand(id),
FOREIGN KEY (category_id) REFERENCES productCategory(id)
);

-- Stores the actual sellable items of a product.
-- For example, a product can have multiple SKUs (Stock Keeping Units) for different sizes or colors.
CREATE TABLE productItem (
id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT,
sku VARCHAR(100) UNIQUE, -- stock keeping unit
price DECIMAL(10,2),
stock INT DEFAULT 0,
FOREIGN KEY (product_id) REFERENCES product(id)
);


-- Stores images related to products.
CREATE TABLE productImage (
id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT,
imageUrl VARCHAR(250) NOT NULL,
altText VARCHAR(150),
FOREIGN KEY (product_id) REFERENCES product(id)
);


-- Stores color information for products.
CREATE TABLE color (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
hex_code VARCHAR(7)
);


-- Stores size categories like Clothing Sizes, Shoe Sizes.
CREATE TABLE sizeCategory (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100)
);

-- Stores size options under different categories.
CREATE TABLE sizeOption (
id INT PRIMARY KEY AUTO_INCREMENT,
sizeCategory_id INT,
label VARCHAR(20), -- eg, 'M',,'42'
FOREIGN KEY (sizeCategory_id) REFERENCES sizeCategory(id)
);

-- Combines product items with their respective colors and sizes.
CREATE TABLE productVariation (
id INT PRIMARY KEY AUTO_INCREMENT,
item_id INT,
color_id INT,
size_id INT,
FOREIGN KEY (item_id) REFERENCES productItem(id),
FOREIGN KEY (color_id) REFERENCES color(id),
FOREIGN KEY (size_id) REFERENCES sizeOption(id)
);


CREATE TABLE attributeCategory (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
description TEXT
);


CREATE TABLE attributeType (
id INT PRIMARY KEY AUTO_INCREMENT,
name ENUM ('text','number','boolean') NOT NULL
);


CREATE TABLE productAttribute (
id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT,
attributeCategory_id INT,
attributeType_id INT,
name VARCHAR(100),
value TEXT,
FOREIGN KEY (product_id) REFERENCES product(id),
FOREIGN KEY (attributeCategory_id) REFERENCES attributeCategory(id),
FOREIGN KEY (attributeType_id) REFERENCES attributeType(id)
);

