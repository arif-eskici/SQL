-- ÖDEV 12
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- 1) Film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
-- 2) Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
-- 3) Film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
-- 4) Payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


-- cevap 1-)  <ortalama film süresinden uzun 489 tane film var.>
SELECT COUNT (*) FROM film
WHERE length > ANY 
(SELECT AVG (length) FROM film);

-- cevap 2-)  <en yüksek kiralamaya sahip 336 tane film var.>
SELECT COUNT (*) FROM film
WHERE rental_rate =
(SELECT MAX (rental_rate) FROM film);

-- cevap 3-)  <hem en düşük kiralanma hem hem en düşük değişim ücretine sahip 15 film listelendi.>
SELECT * FROM film
WHERE rental_rate =
(SELECT MIN (rental_rate) FROM film)
AND replacement_cost = 
(SELECT MIN (replacement_cost) FROM film);

-- cevap 4-)  <599 müşteri en fazla alışveriş sayısına göre sıralandı.>
SELECT customer.customer_id, customer.first_name, COUNT (*) FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT (*) DESC;
