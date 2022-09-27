-- ÖDEV 8

-- 1) Test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
-- 2) Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
-- 3) Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
-- 4) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.


-- cevap 1-)  <belirtilen 4 sütunlu tablo oluşturuldu.>
CREATE TABLE employee (
	id INTEGER,
	name VARCHAR (50),
	birthday DATE,
	email VARCHAR (100)	
);

-- cevap 2-)  <mockaroo sitesinden 50 adet veri oluşturulup tablomuza eklendi.>
insert into employee (id, name , birthday, email) values (1, 'Elga', '1958-02-26 02:11:12', 'ebarrett0@booking.com');
insert into employee (id, name , birthday, email) values (2, 'Sella', '1965-10-23 13:31:09', 'sgoadsby1@ask.com');
insert into employee (id, name , birthday, email) values (3, 'Doretta', '2013-04-13 15:19:04', 'dclout2@epa.gov');
insert into employee (id, name , birthday, email) values (4, 'Ignazio', '1946-11-22 01:27:16', 'imirralls3@bbb.org');
insert into employee (id, name , birthday, email) values (5, 'Pandora', '1969-06-19 11:20:49', 'pglassborow4@ft.com');
insert into employee (id, name , birthday, email) values (6, 'Karoline', '1966-09-21 19:55:03', 'klinnit5@craigslist.org');
insert into employee (id, name , birthday, email) values (7, 'Mallissa', '1968-05-10 01:49:05', 'mmacquaker6@instagram.com');
insert into employee (id, name , birthday, email) values (8, 'Stormy', '1969-06-30 13:42:04', 'svlahos7@economist.com');
insert into employee (id, name , birthday, email) values (9, 'Sigismondo', '1943-12-27 23:52:18', 'ssorrill8@example.com');
insert into employee (id, name , birthday, email) values (10, 'Winni', '1992-06-02 07:29:37', 'wloveard9@microsoft.com');
insert into employee (id, name , birthday, email) values (11, 'Jenna', '1935-11-26 02:26:36', 'jfarrensa@mlb.com');
insert into employee (id, name , birthday, email) values (12, 'Buddie', '1964-12-13 22:26:47', 'bguidinib@flavors.me');
insert into employee (id, name , birthday, email) values (13, 'Paten', '1927-09-20 20:11:23', 'pmcfaydenc@exblog.jp');
insert into employee (id, name , birthday, email) values (14, 'Kellina', '1964-05-12 02:02:09', 'kmacilhargyd@walmart.com');
insert into employee (id, name , birthday, email) values (15, 'Carline', '1987-03-14 22:22:01', 'cwillartone@sphinn.com');
insert into employee (id, name , birthday, email) values (16, 'Natassia', '1992-03-05 17:39:23', 'nantonikovf@wsj.com');
insert into employee (id, name , birthday, email) values (17, 'Ivory', '1983-12-08 04:13:11', 'iespinasg@youtu.be');
insert into employee (id, name , birthday, email) values (18, 'Jordana', '2011-06-28 04:16:25', 'jkillshawh@wsj.com');
insert into employee (id, name , birthday, email) values (19, 'Andre', '1970-11-09 01:27:22', 'adussyi@thetimes.co.uk');
insert into employee (id, name , birthday, email) values (20, 'Hannah', '1988-03-15 23:35:09', 'hanfussoj@yale.edu');
insert into employee (id, name , birthday, email) values (21, 'Cherye', '1947-05-01 05:31:42', 'cphiferk@bing.com');
insert into employee (id, name , birthday, email) values (22, 'Conrade', '1961-09-24 10:13:55', 'cshwalbel@dot.gov');
insert into employee (id, name , birthday, email) values (23, 'Hobart', '1975-11-13 05:42:07', 'hjedrzejewiczm@bluehost.com');
insert into employee (id, name , birthday, email) values (24, 'Edna', '1965-02-28 18:19:57', 'erosettin@tuttocitta.it');
insert into employee (id, name , birthday, email) values (25, 'Petunia', '1987-05-09 09:35:49', 'pmartenseno@gnu.org');
insert into employee (id, name , birthday, email) values (26, 'Marcella', '2001-05-15 04:04:32', 'mcrenagep@theglobeandmail.com');
insert into employee (id, name , birthday, email) values (27, 'Ricoriki', '1943-02-08 15:48:16', 'rcrossthwaiteq@plala.or.jp');
insert into employee (id, name , birthday, email) values (28, 'Cordie', '1982-01-16 17:05:47', 'chagleyr@topsy.com');
insert into employee (id, name , birthday, email) values (29, 'Neil', '1948-10-28 07:50:43', 'nshurmores@mediafire.com');
insert into employee (id, name , birthday, email) values (30, 'Glenn', '1961-08-06 18:26:22', 'gjewsburyt@slate.com');
insert into employee (id, name , birthday, email) values (31, 'Bronson', '2006-01-21 22:48:45', 'bwilloughwayu@cdbaby.com');
insert into employee (id, name , birthday, email) values (32, 'Tulley', '1985-07-24 11:37:30', 'twillisonv@nytimes.com');
insert into employee (id, name , birthday, email) values (33, 'Suzie', '1925-03-06 20:08:29', 'sbrookwellw@com.com');
insert into employee (id, name , birthday, email) values (34, 'Gabrielle', '1980-12-23 03:14:15', 'gdonnelx@disqus.com');
insert into employee (id, name , birthday, email) values (35, 'Gaven', '1950-03-19 21:21:45', 'gbaldiniy@amazon.com');
insert into employee (id, name , birthday, email) values (36, 'Waylin', '1995-02-11 17:13:37', 'wokieltz@spiegel.de');
insert into employee (id, name , birthday, email) values (37, 'Belinda', '1980-05-25 17:14:43', 'bspilsburie10@goo.gl');
insert into employee (id, name , birthday, email) values (38, 'Nessie', '1964-06-05 18:23:17', 'nblakeston11@sun.com');
insert into employee (id, name , birthday, email) values (39, 'Clim', '1953-05-04 11:59:37', 'crothwell12@state.gov');
insert into employee (id, name , birthday, email) values (40, 'Candace', '1946-01-03 19:20:25', 'chartopp13@sbwire.com');
insert into employee (id, name , birthday, email) values (41, 'Ailis', '1987-07-14 17:15:51', 'abeardsdale14@wufoo.com');
insert into employee (id, name , birthday, email) values (42, 'Karina', '1978-12-10 13:05:41', 'klavigne15@dailymail.co.uk');
insert into employee (id, name , birthday, email) values (43, 'Tiertza', '1935-08-09 02:14:41', 'tgitthouse16@arizona.edu');
insert into employee (id, name , birthday, email) values (44, 'Rock', '2000-09-05 10:53:41', 'rhannabus17@un.org');
insert into employee (id, name , birthday, email) values (45, 'Tamara', '1939-12-13 20:36:39', 'thebborn18@auda.org.au');
insert into employee (id, name , birthday, email) values (46, 'Lolly', '1902-12-08 08:56:40', 'leldritt19@google.com.hk');
insert into employee (id, name , birthday, email) values (47, 'Shandy', '1941-04-24 03:08:07', 'spohl1a@4shared.com');
insert into employee (id, name , birthday, email) values (48, 'Bill', '2019-08-18 21:03:22', 'bmuge1b@ycombinator.com');
insert into employee (id, name , birthday, email) values (49, 'Ethan', '2009-12-03 00:33:25', 'etraise1c@istockphoto.com');
insert into employee (id, name , birthday, email) values (50, 'Becki', '1985-06-08 20:17:08', 'brene1d@vinaora.com');


-- cevap 3-)  <5 adet sütun güncelleme yapıldı.>
  -- 1.güncelleme:
UPDATE employee
SET name = 'PATİKA'
WHERE id = 10
RETURNING *;

  -- 2.güncelleme:
UPDATE employee
SET birthday = '1923-10-29'
WHERE id = 5
RETURNING *;

  -- 3.güncelleme:
UPDATE employee
SET email = 'patika@dev.com'
WHERE id > 25
RETURNING *;

  -- 4.güncelleme:
UPDATE employee
SET name = 'ARİF'
WHERE name = 'PATİKA'
RETURNING *;

  -- 5.güncelleme:
UPDATE employee
SET name = 'HACI BABA'
WHERE email LIKE 'k%'
RETURNING *;

 -- en son yapılan güncellemeleri görmek için:
SELECT * FROM emmployee;


-- cevap 4-)  <5 adet satır silme işlemi yapıldı.>
  -- 1.silme:
DELETE FROM employee
WHERE name = 'ARİF'
RETURNING *;

  -- 2.silme:
DELETE FROM employee
WHERE email LIKE 'i%'
RETURNING *;

  -- 3.silme:
DELETE FROM employee
WHERE id IN (7, 9, 11)
RETURNING *;

  -- 4.silme:
DELETE FROM employee
WHERE id BETWEEN 12 AND 17
RETURNING *;

  -- 5.silme:
DELETE FROM employee
Where email ILIKE 'patika%'
RETURNING *;

 -- yapılan silme işlemlerinden sonra tabloyu görmek için:
SELECT * FROM emmployee;


