------------------------------------------------------------------------------------------
---------------------------------------QUERIES--------------------------------------------
------------------------------------------------------------------------------------------

-- 1. Try writing your own query to select only the id, account_id, and occurred_at columns for all orders in the orders table.
SELECT id,
    account_id,
    occurred_at
FROM orders;

-- 2. Try using LIMIT yourself below by writing a query that displays all the data in the occurred_at, account_id, and channel columns of the web_events table, and limits the output to only the first 15 rows.
SELECT 
    occurred_at, account_id, channel
FROM
    web_events
LIMIT 15;

-- 3. Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.
SELECT 
    id, occurred_at, total_amt_usd
FROM
    orders
ORDER BY occurred_at
LIMIT 10; 

-- 4. Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id, and 
SELECT 
    id, account_id, total_amt_usd
FROM
    orders
ORDER BY total_amt_usd DESC
LIMIT 5;

-- 5. Write a query to return the lowest 20 orders in terms of smallest total_amt_usd. Include the id, account_id, and total_amt_usd.
SELECT 
    id, account_id, total_amt_usd
FROM
    orders
ORDER BY total_amt_usd ASC
LIMIT 20;

-- 6. Write a query that displays the order ID, account ID, and total dollar amount for all the orders, sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).
SELECT 
    id, account_id, total_amt_usd
FROM
    orders
ORDER BY account_id ASC , total_amt_usd DESC;

-- 7. Write a query that again displays order ID, account ID, and total dollar amount for each order, but this time sorted first by total dollar amount (in descending order), and then by account ID (in ascending order).
SELECT 
    id, account_id, total_amt_usd
FROM
    orders
ORDER BY total_amt_usd DESC , account_id ASC;

-- 8. Compare the results of these two queries above. How are the results different when you switch the column you sort on first?
/* It was witnessed that, when the first subquery was inputted, it was first ordered using account_id first then followed by the total_amt_usd score, meaning
 the account_id column influened how the total_amt_usd column will appear, but vice versa happens in the alternative.*/
 
-- 9. Write a query that: Pulls the first 5 rows and all columns from the orders table that have a dollar amount of gloss_amt_usd greater than or equal to 1000.
SELECT 
    *
FROM
    orders
WHERE
    gloss_amt_usd >= 1000
LIMIT 5;

-- 10. Pulls the first 10 rows and all columns from the orders table that have a total_amt_usd less than 500.
SELECT 
    *
FROM
    orders
WHERE
    total_amt_usd < 500
LIMIT 10;

-- 11. Filter the accounts table to include the company name, website, and the primary point of contact (primary_poc) just for the Exxon Mobil company in the accounts table.
SELECT 
    name, website, primary_poc
FROM
    accounts
WHERE
    name = 'Exxon Mobil';

-- 12. Using the orders table: Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order. Limit the results to the first 10 orders, and include the id and account_id fields.
SELECT id,
    account_id,
    round(standard_amt_usd / standard_qty, 3) as unit_price
FROM orders
LIMIT 10;

-- 13. Write a query that finds the percentage of revenue that comes from poster paper for each order. You will need to use only the columns that end with _usd. (Try to do this without using the total column.) Display the id and account_id fields also.
SELECT 
    id,
    account_id,
    ROUND(poster_amt_usd / (standard_amt_usd + gloss_amt_usd + poster_amt_usd) * 100,
            0) AS per_poster_revenue
FROM
    orders
LIMIT 10;

-- 14. Use the accounts table to find all the companies whose names start with 'C'.
SELECT 
    *
FROM
    accounts
WHERE
    name LIKE 'C%';
    
    -- 15. All companies whose names contain the string 'one' somewhere in the name.
SELECT 
    *
FROM
    accounts
WHERE
    name LIKE '%one%';
    
-- 16. All companies whose names end with 's'
SELECT 
    *
FROM
    accounts
WHERE
    name LIKE '%s';
    
-- 17. Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and Nordstrom.
SELECT 
    name, primary_poc, sales_rep_id
FROM
    accounts
WHERE
    name IN ('Target' , 'Walmart', 'Nordstorm');
    
-- 18. Use the web_events table to find all information regarding individuals who were contacted via the channel of organic or adwords.
SELECT 
    *
FROM
    web_events
WHERE
    channel IN ('organic' , 'adwords');
    
-- 19. Use the accounts table to find the account name, primary poc, and sales rep id for all stores except Walmart, Target, and Nordstrom.
SELECT 
    name, primary_poc, sales_rep_id
FROM
    accounts
WHERE
    name NOT IN ('Walmart' , 'Target', 'Nordstrom');
    
-- 20. Use the web_events table to find all information regarding individuals who were contacted via any method except using organic or adwords methods.
SELECT 
    *
FROM
    web_events
WHERE
    channel NOT IN ('organic' , 'adwords');
    
-- 21. All the companies whose names do not start with 'C'.
SELECT 
    *
FROM
    accounts
WHERE
    name NOT LIKE 'C%';
    
-- 22.All companies whose names do not contain the string 'one' somewhere in the name.
SELECT 
    *
FROM
    accounts
WHERE
    name NOT LIKE '%one%';
    
-- 23. All companies whose names do not end with 's'.
SELECT 
    *
FROM
    accounts
WHERE
    name NOT LIKE '%s';
    
-- 24. Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.
SELECT 
    *
FROM
    orders
WHERE
    standard_qty > 1000 AND poster_qty = 0
        AND gloss_qty = 0;
        
-- 25. Using the accounts table, find all the companies whose names do not start with 'C' and end with 's'.
SELECT 
    *
FROM
    accounts
WHERE
    name NOT LIKE 'C%' AND name LIKE '%s';
    
-- 26.When you use the BETWEEN operator in SQL, do the results include the values of your endpoints, or not? Figure out the answer to this important question by writing a query that displays the order date and gloss_qty data for all orders where gloss_qty is between 24 and 29. Then look at your output to see if the BETWEEN operator included the begin and end values or not.
-- Yes, values for 24 and 29 will appear in the results as the BETWEEN clause is inclusive 
SELECT 
    gloss_qty, occurred_at
FROM
    orders
WHERE
    gloss_qty BETWEEN 24 AND 29;
    
-- 27.Use the web_events table to find all information regarding individuals who were contacted via the organic or adwords channels, and started their account at any point in 2016, sorted from newest to oldest.
SELECT 
    *
FROM
    web_events
WHERE
    channel IN ('organic' , 'adwords')
        AND occurred_at = '2016-12-31'
ORDER BY occurred_at DESC;

-- 28.Find list of orders ids where either gloss_qty or poster_qty is greater than 4000. Only include the id field in the resulting table.
SELECT 
    id
FROM
    orders
WHERE
    gloss_qty > 4000 OR poster_qty > 4000;
    
-- 29.Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000.
SELECT 
    *
FROM
    orders
WHERE
    standard_qty = 0
        AND (gloss_qty > 1000 OR poster_qty > 1000);
        
-- 30.Find all the company names that start with a 'C' or 'W', and the primary contact contains 'ana' or 'Ana', but it doesn't contain 'eana'.
SELECT 
    name
FROM
    accounts
WHERE
    (name LIKE 'C%' OR name LIKE 'W%')
        AND (primary_poc LIKE '%ana%'
        OR primary_poc LIKE '%Ana%')
        AND primary_poc NOT LIKE '%eana%'