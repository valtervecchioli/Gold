USE gold;
CREATE TABLE countries (name VARCHAR(50),
country_code_twol VARCHAR(10),
country_code_threel VARCHAR(10),
country_id INT PRIMARY KEY,
region VARCHAR(50),
sub_region VARCHAR(50));

SELECT * FROM countries;

DROP TABLE countries;

SELECT * FROM countries;

CREATE TABLE currency (unit VARCHAR(50),
country VARCHAR(50),
currency_code VARCHAR(10),
year INT,
value_usd INT
currency_id INT PRIMARY KEY);

DROP TABLE currency;

CREATE TABLE currency (unit VARCHAR(50),
country VARCHAR(50),
currency_code VARCHAR(10),
year INT,
value_usd INT,
currency_id INT KEY AUTO_INCREMENT PRIMARY KEY);



SELECT * FROM currency;

CREATE TABLE mining (mining_id INT KEY AUTO_INCREMENT PRIMARY KEY,
country VARCHAR(50),
tons FLOAT,
year INT);

SELECT * FROM mining;

SELECT * FROM mining;

CREATE TABLE demand (demand_id INT KEY AUTO_INCREMENT PRIMARY KEY,
year INT,
jewellery_fabrication FLOAT,
jewellery_consumption FLOAT,
jewellery_inventory FLOAT,
technology FLOAT,
electronics FLOAT,
other_industrials FLOAT,
dentistry FLOAT,
investment FLOAT,
bars FLOAT,
coins FLOAT,
medals FLOAT,
etf FLOAT,
central_banks FLOAT,
gold_demand FLOAT,
otc FLOAT,
total_demand FLOAT,
gold_price FLOAT);

SELECT * FROM demand;

CREATE TABLE supply (supply_id INT KEY AUTO_INCREMENT PRIMARY KEY,
year INT,
mine_prod FLOAT,
net_producer_hedging FLOAT,
recycled_gold FLOAT,
tot_supply FLOAT);

DROP TABLE `gold_demand (1)`;

CREATE TABLE year (year INT PRIMARY KEY);

SELECT * FROM year;

CREATE TABLE prize (prize_id INT KEY AUTO_INCREMENT PRIMARY KEY,
year INT,
currency VARCHAR(50),
value FLOAT);

SELECT * FROM prize;

DROP TABLE currency;

CREATE TABLE currency (unit VARCHAR(50),
country VARCHAR(50),
currency_code VARCHAR(10) PRIMARY KEY,
year INT,
value_usd INT);

SELECT * FROM currency;

CREATE TABLE countries (name VARCHAR(50) PRIMARY KEY,
country_code_twol VARCHAR(10),
country_code_threel VARCHAR(10),
country_id INT,
region VARCHAR(50),
sub_region VARCHAR(50));

SET FOREIGN_KEY_CHECKS=0;

SELECT * FROM years;

ALTER TABLE mining
ADD CONSTRAINT fk_country
FOREIGN KEY (country)
REFERENCES countries(name);

DROP TABLE year;
CREATE TABLE years (year INT PRIMARY KEY);
SELECT * FROM years;

ALTER TABLE currency
ADD CONSTRAINT fk_year2
FOREIGN KEY (year)
REFERENCES years(year);

ALTER TABLE mining
ADD CONSTRAINT fk_year4
FOREIGN KEY (year)
REFERENCES years(year);

ALTER TABLE supply
ADD CONSTRAINT fk_year5
FOREIGN KEY (year)
REFERENCES years(year);

ALTER TABLE prize
ADD CONSTRAINT fk_year6
FOREIGN KEY (year)
REFERENCES years(year);

ALTER TABLE demand
ADD CONSTRAINT fk_year7
FOREIGN KEY (year)
REFERENCES years(year);

ALTER TABLE currency
ADD CONSTRAINT fk_country1
FOREIGN KEY (country)
REFERENCES countries(name);