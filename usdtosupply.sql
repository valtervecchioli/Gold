CREATE DATABASE gold;
USE gold;

SELECT * FROM supply;

SELECT * FROM prize;

SELECT p.currency, s.year, s.tot_supply, p.value
FROM supply s
INNER JOIN (
	SELECT *
	FROM prize
	WHERE currency = 'USD') p
ON s.year = p.year
;
