USE ecommerce; -- Choosing the database to use

-- Insert sample data into the tables
-- Brands table
INSERT INTO brand (name, description)
VALUES 
('Nike', 'Sportswear and athletic gear'),
('Apple', 'Consumer electronics and software'),
('Samsung', 'Global tech brand and manufacturer');

-- Categories table
INSERT INTO productCategory (name, description)
VALUES 
('Clothing', 'Apparel for all genders and ages'),
('Electronics', 'Devices and gadgets'),
('Footwear', 'All kinds of shoes and sandals');


-- Products table
INSERT INTO product (name, brand_id, price, description, category_id)
VALUES 
('Nike Running Shoes', 1, 120.00, 'Comfortable running shoes for all terrains', 3),
('iPhone 14 Pro', 2, 999.00, 'Latest Apple smartphone with advanced camera', 2),
('Samsung Galaxy Watch', 3, 250.00, 'Smartwatch with fitness tracking', 2);


-- Product Images table
INSERT INTO productImage (product_id, imageUrl, altText)
VALUES 
(1, 'https://images.pexels.com/photos/4252970/pexels-photo-4252970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Nike Running Shoes'),
(2, 'https://images.pexels.com/photos/30353223/pexels-photo-30353223/free-photo-of-sleek-apple-iphone-and-laptop-on-black-surface.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'iPhone 14 Pro front view'),
(3, 'https://images.pexels.com/photos/12237047/pexels-photo-12237047.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Samsung Galaxy Watch');

--Colors table
INSERT INTO color (name, hex_code)
VALUES 
('Red', '#FF0000'),
('Black', '#000000'),
('White', '#FFFFFF');

-- Size Categories table
INSERT INTO sizeCategory (name)
VALUES 
('Clothing Sizes'),
('Shoe Sizes');


-- Size Options table
INSERT INTO sizeOption (sizeCategory_id, label)
VALUES 
(2, '42'),
(2, '43'),
(1, 'M'),
(1, 'L');


-- Product Items table
INSERT INTO productItem (product_id, sku, price, stock)
VALUES 
(1, 'NIKE-RUN-RED-42', 120.00, 20),
(1, 'NIKE-RUN-BLACK-43', 125.00, 15),
(2, 'IPHONE14PRO-128GB', 999.00, 10),
(3, 'SAMSUNG-WATCH-BLK', 250.00, 25);

-- Product Variations
INSERT INTO productVariation (item_id, color_id, size_id)
VALUES 
(1, 1, 1),  -- Red, Size 42
(2, 2, 2),  -- Black, Size 43
(3, 3, NULL),  -- White (no size for phone)
(4, 2, NULL);  -- Black (no size for watch)


-- Attribute Categories
INSERT INTO attributeCategory (name, description)
VALUES 
('Physical Specs', 'Physical characteristics like weight and material'),
('Technical Specs', 'Specs such as RAM, Storage, and OS');


-- Attribute Types Table
INSERT INTO attributeType (name)
VALUES 
('text'),
('number'),
('boolean');

-- Product Attributes table
INSERT INTO productAttribute (product_id, attributeCategory_id, attributeType_id, name, value)
VALUES 
(1, 1, 2, 'Weight (grams)', '900'),
(1, 1, 1, 'Material', 'Mesh and Rubber'),
(2, 2, 2, 'Storage (GB)', '128'),
(2, 2, 1, 'Operating System', 'iOS 17'),
(3, 2, 3, 'Water Resistant', 'true');