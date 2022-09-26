-- ÖDEV 7
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- 1) Film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
-- 2) Film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
-- 3) Customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayıları nelerdir? 
-- 4) City tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.


-- cevap 1-)  <filmler rating ögesine göre gruplandırıldı.>
SELECT rating FROM film
GROUP BY rating;

-- cevap 2-)  <verilen kriterlere göre 8 tane film listelendi.>
SELECT replacement_cost, COUNT (*) FROM film
GROUP BY replacement_cost
HAVING COUNT (*) > 50;

-- cevap 3-)  <Bir nolu id den 326, iki nolu id den 273 tane müşteri olduğu listelendi.>
SELECT store_id, COUNT (customer_id) FROM customer
GROUP BY store_id;

-- cevap 4-)  <içinde en fazla şehir bulunduran id = 44 ve şehir sayısı da 60 olarak listelendi.>
SELECT country_id, COUNT (*) FROM city
GROUP BY country_id
ORDER BY COUNT (city) DESC
LIMIT 1;

