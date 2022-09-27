-- ÖDEV 11
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- 1) Actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
-- 2) Actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
-- 3) Actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
-- 4) İlk 3 sorguyu tekrar eden veriler için de yapalım.


-- cevap 1-)  
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer;

-- cevap 2-)
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer;

-- cevap 3-)
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer;

-- cevap 4-)
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer;

SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer;
