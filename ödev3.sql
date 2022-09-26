-- ÖDEV 3
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- 1) Country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
-- 2) Country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
-- 3) Film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
-- 4) Film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.


-- cevap 1-)  <ilk ve son harfi 'a' olan 8 tane ülke listelendi.>
SELECT * FROM country
WHERE country LIKE 'A%a';

-- cevap 2-)  <6 karakterli ve son harfi 'n' olan 3 tane ülke listelendi.>
SELECT * FROM country
WHERE country LIKE '_____n';

-- cevap 3-)  <isminde en az dört tane 't' olan 9 adet film listelendi.>
SELECT title FROM film
WHERE title ILIKE '%t%t%t%t%';

-- cevap 4-)  <belirtilen kriterlerde 20 adet film listelendi.>
SELECT * FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;