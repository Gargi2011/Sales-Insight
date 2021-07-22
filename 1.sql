#Finding Total Records in customers,date,markets,products,transactions tables.

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM date;
SELECT COUNT(*) FROM markets;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM transactions;


#Count of Distinct markets_name from table markets

SELECT COUNT(DISTINCT(markets_name)) FROM markets;

#Now we want total transactions from different market name which existed in the market table. 
SELECT * FROM markets;

SELECT COUNT(*) FROM transactions WHERE market_code='Mark001';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark002';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark003';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark004';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark005';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark006';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark007';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark008';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark009';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark0010';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark0011';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark0012';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark0013';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark0014';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark0015';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark0097';
SELECT COUNT(*) FROM transactions WHERE market_code='Mark999';

# Now we want to know how many transaction happens in USD and INR.
SELECT COUNT(*) FROM transactions WHERE currency='USD';
SELECT COUNT(*) FROM transactions WHERE currency='INR';

#find distinct years.

SELECT DISTINCT(year) FROM date;

#Now find how many transactions happened in the given distinct years.

SELECT  transactions.*,date.* FROM 	transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017';
SELECT  transactions.*,date.* FROM 	transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018';
SELECT  transactions.*,date.* FROM 	transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019';
SELECT  transactions.*,date.* FROM 	transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020';

#Find total revenue earn in each year.

SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020';

#Business we did in Chennai in 2017,2018,2019 and 2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark001';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark001';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark001';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark001';

#Business we did in Mumbai in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark002';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark002';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark002';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark002';

#Business we did in Ahmedabad in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark003';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark003';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark003';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark003';

#Business we did in Delhi NCR in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark004';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark004';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark004';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark004';

#Business we did in Kanpur in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark005';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark005';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark005';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark005';

#Business we did in Bengaluru in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark006';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark006';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark006';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark006';

#Business we did in Bhopal in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark007';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark007';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark007';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark007';

#Business we did in Lucknow in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark008';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark008';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark008';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark008';

#Business they did in Patna in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark009';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark009';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark009';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark009';

#Business they did in Kochi in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark010';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark010';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark010';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark010'; 

#Business they did in Nagpur in 2017,2018,2019,2020
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark011';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark011';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark011';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark011';

#Business they did in Surat in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark012';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark012';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark012';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark012';

#Business they did in Bhopal in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark013';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark013';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark013';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark013';

#Business they did in Hyderabad in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark014';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark014';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark014';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark014';

#Business they did in bhubaneshwar in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark015';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark015';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark015';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark015';

#Business we did in Newyork in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark97';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark97';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark97';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark97';

#Business we did in Paris in 2017,2018,2019,2020.
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2017' AND market_code='Mark999';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2018' AND market_code='Mark999';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2019' AND market_code='Mark999';
SELECT  SUM(sales_amount) FROM transactions  INNER JOIN date ON transactions.order_date=date.date WHERE year='2020' AND market_code='Mark999';



#Products sold in chennai
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark001';

#Products sold in Mumbai
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark002';

#Products sold in Ahmedabad
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark003';

#Products sold in Delhi NCR
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark004';

#Products sold in Kanpur
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark005';

#Products sold in Bengaluru
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark006';

#Products sold in Bhopal
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark007';

#Products sold in Lucknow
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark008';

#Products sold in Patna
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark009';

#Products sold in Kochi
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark010';

#Products sold in Nagpur
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark011';

#Products sold in Surat
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark012';

#Products sold in Bhopal
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark013';

#Products sold in Hyderabad
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark014';

#Products sold in Bhubaneshwar
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark015';

#Products sold in New york
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark097';

#Products sold in Paris
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark999';

#Products sold in Bhubeneshwar
SELECT DISTINCT(product_code)
FROM transactions
WHERE market_code='Mark014';


