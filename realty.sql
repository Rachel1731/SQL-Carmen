-- 1. The average square footage of all offices
SELECT AVG(sq_ft) AS average_sq_ft_offices FROM Offices;

-- 2. The total number of apartments
SELECT COUNT(*) AS total_apartments FROM Apartments;

-- 3. The apartments where there is no tenant
SELECT * FROM Apartments WHERE tenant IS NULL;

-- 4. The names of all of the companies
SELECT DISTINCT company FROM Offices WHERE company IS NOT NULL;

-- 5. The number of cubicles and bathrooms in the 3rd office
SELECT cubicles, bathrooms FROM Offices WHERE office_number = 3;

-- 6. The storefronts that have kitchens
SELECT * FROM Storefronts WHERE kitchen = TRUE;

-- 7. The storefront with the highest square footage and outdoor seating
SELECT * FROM Storefronts 
WHERE outdoor_seating = TRUE 

-- 8. The office with the lowest number of cubicles
SELECT * FROM Offices 
ORDER BY cubicles ASC 
LIMIT 1;

-- 9. The office with the most cubicles and bathrooms
SELECT * FROM Offices 
ORDER BY cubicles DESC, bathrooms DESC 
LIMIT 1;
