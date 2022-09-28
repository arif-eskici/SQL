-- GENEL TEKRAR SENARYOLARI
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- 1) Film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
-- 2) Film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
-- 3) Customer tablosunda en çok alışveriş yapan müşterinin adı nedir?
-- 4) Category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
-- 5) Film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?


-- cevap 1-)
SELECT title, length, replacement_cost FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost ASC
LIMIT 4;

-- cevap 2-) 
SELECT rating, COUNT(*) FROM film
GROUP BY rating
ORDER BY rating DESC
LIMIT 1;

-- cevap 3-)
-- en fazla sayıda alışveriş yapanı bulur. => Marlon (66 kez alışveriş yapmış. (194.61 harcamış.))
SELECT customer.first_name, COUNT(*) FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY customer.first_name
ORDER BY COUNT(*) DESC
LIMIT 1;

-- en fazla para harcayanı bulur. => Eleanor (alışverişte 211.55 harcamış (45 alışveriş yapmış))
SELECT customer.first_name, customer.last_name, SUM (amount) FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 1;


-- cevap 4-)
SELECT name, COUNT(*) FROM category
JOIN film_category ON film_category.category_id = category.category_id
GROUP BY category.category_id
ORDER BY COUNT(*) DESC;

-- cevap 5-)
SELECT COUNT (title) FROM film
WHERE title ILIKE '%e%e%e%e%';
