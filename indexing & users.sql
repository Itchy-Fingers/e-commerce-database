USE ecommerce; -- Choosing the database to use

-- Creating indexes for faster searches
CREATE INDEX idx_productName
ON product(name);
CREATE INDEX idx_productPrice
ON product(price);
CREATE INDEX idx_brandName
ON brand(name);
CREATE ROLE dev,admin,client;

-- Creating roles for different user permissions
GRANT ALL PRIVILEGES ON ecommerce. * TO dev;
GRANT SELECT, INSERT, DELETE ON ecommerce. * TO admin;
GRANT SELECT ON ecommerce. * TO client;

-- Creating users for roles.
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'user1pass123';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'user2pass123';
CREATE USER 'user3'@'localhost' IDENTIFIED BY 'user3pass123';

-- Granting roles to users.
GRANT dev TO user1@localhost;
GRANT admin TO user2@localhost;
GRANT client TO user3@localhost;




