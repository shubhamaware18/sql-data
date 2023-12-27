use campusx;
-- Aggregate Functions
-- Max/Min
-- Find the smartphone with Min and Max Price
select max(price) from campusx.smartphones;
select min(price) from campusx.smartphones; 
#####################################################
-- find the price of the costliest samsung smartphone
select max(price) from campusx.smartphones
where brand_name = 'Samsung';
select * from campusx.smartphones
where brand_name = 'samsung' and price = '110999';

-- OR

SELECT *
FROM campusx.smartphones s
JOIN (
  SELECT MAX(price) AS max_price
  FROM campusx.smartphones
  WHERE brand_name = 'Samsung'
) t ON s.price = t.max_price
WHERE s.brand_name = 'Samsung';
##############################################
-- AVG
-- FIND THE AVG RATING OF AAPLE SMARTPHONES
SELECT AVG(rating)  AS avg_rating 
FROM campusx.smartphones
WHERE brand_name = 'apple';
##############################################
-- SUM
-- FIND THE TOTAL PRICE OF THE SMARTPHONES PRESENT IN THE DATA
SELECT SUM(price) AS total_price FROM campusx.smartphones
where brand_name = 'ONEPLUS';

##############################################
-- COUNT
-- FIND THE COUNT OF ONEPLUS SMARTPHONES AS THEY HAS A SNAPDRAGON PROCESSOR
SELECT COUNT(*) AS num_of_phones FROM campusx.smartphones
WHERE brand_name = 'ONEPLUS' AND processor_brand = 'SNAPDRAGON';
##############################################
-- COUNT DISTINCE(UNIQUE)
-- FIND THE DISTINCT COUNT OF SMARTPHONES IN THE DATA
SELECT COUNT(DISTINCT(brand_name)) FROM campusx.smartphones;
##############################################
-- STD
-- FIND THE STD OF SCREEN SIZE
SELECT STD(screen_size) AS std_screen FROM campusx.smartphones;
##############################################
-- SCALER FUNCTIONS
-- ABS
SELECT ABS(PRICE - 100000) AS 'ABSOLUTE_PRICE' FROM campusx.smartphones;

