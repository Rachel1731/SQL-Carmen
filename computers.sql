-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

psql sql_lab -f computers.sql
psql sql_lab -f televisions.sql


-- In case there is already a computers table, drop it

DROP TABLE IF EXISTS computers;

-- Create the computers table
CREATE TABLE computers (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(100),
    processor VARCHAR(100),
    ram_gb INTEGER,
    storage_gb INTEGER,
    price DECIMAL(10, 2)
);


-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports

CREATE TABLE computers (
    id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(100),
    cpu_speed DECIMAL(4, 2), -- in GHz
    memory_size INTEGER, -- in GB
    price DECIMAL(10, 2), -- in USD
    release_date DATE,
    photo_url TEXT,
    storage_amount INTEGER, -- in GB
    number_usb_ports INTEGER,
    number_firewire_ports INTEGER,
    number_thunderbolt_ports INTEGER
);


-- Insert 4 computers into the computers table

INSERT INTO computers (
    make, model, cpu_speed, memory_size, price, release_date, photo_url,
    storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports
) VALUES
(
    'Apple', 'MacBook Pro 14"', 3.20, 16, 1999.99, '2023-10-20',
    'https://example.com/macbook_pro_14.jpg', 512, 3, 0, 3
),
(
    'Dell', 'XPS 13', 3.10, 16, 1399.99, '2023-05-15',
    'https://example.com/dell_xps_13.jpg', 512, 2, 0, 1
),
(
    'HP', 'Spectre x360', 2.80, 16, 1249.99, '2022-11-10',
    'https://example.com/hp_spectre_x360.jpg', 1024, 3, 0, 1
),
(
    'Lenovo', 'ThinkPad X1 Carbon', 3.50, 32, 1799.99, '2023-01-05',
    'https://example.com/thinkpad_x1_carbon.jpg', 1024, 2, 1, 2
);


-- Select all entries from the computers table

SELECT * FROM computers;


-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column

ALTER TABLE computers
DROP COLUMN storage_amount;

-- and add storage_type and storage_size columns

ALTER TABLE computers
ADD COLUMN storage_type VARCHAR(50), -- e.g. 'SSD', 'HDD', 'Hybrid'
ADD COLUMN storage_size INTEGER;     -- in GB


