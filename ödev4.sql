-- ÖDEV 4
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- 1) Film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
-- 2) Film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
-- 3) Film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
-- 4) Country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
-- 5) City tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?


-- cevap 1-)  <farklı 21 tane değer listelendi.>
SELECT DISTINCT replacement_cost FROM film;

-- cevap 2-)  <farklı 21 değer olduğu sayısı görüntülendi.>
SELECT COUNT (DISTINCT replacement_cost) FROM film;

-- cevap 3-)  <ismi 'T' ile başlayan ve rating değeri verilen film sayısı 9 olarak görüldü.>
SELECT COUNT (title) FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- cevap 4-)  <Beş karakterli ülke sayısının 13 olduğu görüntülendi.>
SELECT COUNT (country) FROM country
WHERE country LIKE '_____';

-- cevap 5-)  <'R' ile biten şehir sayısı 33 olarak görüntülendi.>
SELECT COUNT (*) FROM city
WHERE city ILIKE '%R';

