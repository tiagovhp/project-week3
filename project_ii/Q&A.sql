USE abnb;
select * from porto;

-- 1. What is the average price of listings in each city?
SELECT
	avg(lx.price) AS avg_price_lx,
    avg(porto.price) AS avg_price_porto 
FROM 
	lx,
    porto;

-- 2. How many listings are there in each neighborhood?
-- LISBON
SELECT 
	neighbourhood,
    COUNT(id) as nr_list_neigh
FROM lx
GROUP BY neighbourhood
ORDER BY nr_list_neigh DESC;
-- PORTO
SELECT 
	neighbourhood,
    COUNT(id) as nr_list_neigh
FROM porto
GROUP BY neighbourhood
ORDER BY nr_list_neigh DESC;

-- 3. What is the average number of reviews per listing in each neighborhood?
SELECT 
neighbourhood,
AVG(number_of_reviews_ltm) as avg_nr_reviews_neigh
FROM lx
group by neighbourhood
ORDER BY avg_nr_reviews_neigh DESC;

-- What is the average reviews per month for listings in each neighborhood?


