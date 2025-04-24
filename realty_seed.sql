--enter your seed data below

-- Insert into Apartments
INSERT INTO Apartments (apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_ft, price)
VALUES 
(101, 2, 1, '123 Maple St', 'Alice Johnson', TRUE, 850, 1200),
(202, 3, 2, '456 Oak Ave', 'Bob Smith', TRUE, 1100, 1600),
(303, 1, 1, '789 Pine Rd', NULL, FALSE, 600, 900);

-- Insert into Offices
INSERT INTO Offices (office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price)
VALUES 
(1, 2, 3000, 20, 2, '12 Business Plaza', 'TechNova', TRUE, 5000),
(2, 1, 1500, 8, 1, '88 Startup Lane', 'InnovateX', TRUE, 3000),
(3, 3, 5000, 40, 4, '900 Corporate Blvd', NULL, FALSE, 8000);

-- Insert into Storefronts
INSERT INTO Storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating)
VALUES 
('55 Market St', TRUE, 2500, TRUE, 1200, 'Cafe Bloom', TRUE),
('77 Fashion Ave', TRUE, 4000, FALSE, 1800, 'Style Hub', FALSE),
('101 Main St', FALSE, 2000, FALSE, 1000, NULL, FALSE);

