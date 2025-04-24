-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it

DROP TABLE IF EXISTS televisions;


-- Create a televisions table

CREATE TABLE televisions (
    id SERIAL PRIMARY KEY,
    model_name VARCHAR(100),
    screen_size INTEGER, -- in inches
    resolution VARCHAR(50), -- e.g. '4K', '1080p'
    price DECIMAL(10, 2), -- in USD
    release_date DATE,
    photo_url TEXT
);

--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url


-- Insert 4 televisions into the tv_models table

INSERT INTO televisions (
    model_name, screen_size, resolution, price, release_date, photo_url
) VALUES
(
    'Samsung QN90C Neo QLED', 65, '4K', 1999.99, '2023-03-15',
    'https://example.com/samsung_qn90c.jpg'
),
(
    'LG C3 OLED', 55, '4K', 1699.99, '2023-05-01',
    'https://example.com/lg_c3_oled.jpg'
),
(
    'Sony Bravia XR A80L', 77, '4K', 2499.99, '2023-04-10',
    'https://example.com/sony_bravia_a80l.jpg'
),
(
    'TCL 6-Series Roku TV', 65, '4K', 899.99, '2022-11-20',
    'https://example.com/tcl_6_series.jpg'
);


-- Select all entries from the tv_models table

SELECT * FROM televisions;

CREATE TABLE tv_models (
    ...
);

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column

ALTER TABLE tv_models
DROP COLUMN resolution;

--  and add vertical_resolution and horizontal_resolution columns

ALTER TABLE tv_models
ADD COLUMN vertical_resolution INTEGER,  -- in pixels
ADD COLUMN horizontal_resolution INTEGER; -- in pixels
