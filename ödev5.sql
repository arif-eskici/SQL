-- ÖDEV 5
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- 1) Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
-- 2) Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
-- 3) Customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.


-- cevap 1-)  <verilen kriterlere göre 5 film listelendi.>
SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- cevap 2-)  <verilen kriterlere göre ikinci 5 film listelendi.>
SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

-- cevap 3-)  <verilen kriterlere göre ilk 4 mğşteri listelendi.>
SELECT * FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;