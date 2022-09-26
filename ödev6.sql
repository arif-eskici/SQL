-- ÖDEV 6
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- 1) Film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
-- 2) Film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
-- 3) Film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
-- 4) Film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?


-- cevap 1-)  <ilgili sütunun ortalaması 2.980 olarak hesaplandı.>
SELECT AVG rental_rate FROM film;

-- cevap 2-)  <'C' ile başlayan 92 adet film olduğu görüntülendi.>
SELECT COUNT (*) FROM film
WHERE title LIKE 'C%';

-- cevap 3-)  <verilen değere sahip en uzun film uzunluğu 184 >
SELECT MAX (length) FROM film
WHERE rental_rate = 0.99;

-- cevap 4-)  <verilen kriterlere göre 21 film listelendi.>
SELECT DISTINCT replacement_cost FROM film
WHERE length > 150;