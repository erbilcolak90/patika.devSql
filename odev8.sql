--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (	id SERIAL PRIMARY KEY,	name VARCHAR(50) NOT NULL,email VARCHAR(100) NOT NULL,birthday DATE);

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, email, birthday) values ('ahmet', 'mithatefendi@gmail.com', '1977-05-12');
insert into employee (name, email, birthday) values ('necip', 'fazilkisakurek@gmail.com', null);
insert into employee (name, email, birthday) values ('halide', 'edip@gmail.com', 1977-03-03);
insert into employee (name, email, birthday) values ('yusuf', 'hashacip@hotmail.com', '1988-07-10');
insert into employee (name, email, birthday) values ('sinasi', 'sinasi@hotmail.com', '1990-12-12');
insert into employee (name, email, birthday) values ('orhan', 'seyfiorhon@hotmail.com', '1985-04-05');
insert into employee (name, email, birthday) values ('cahit', 'sitkitaranci@gmail.com', '1992-04-12');
insert into employee (name, email, birthday) values ('recaizade', 'mahmutekrem@gmail.com', '1997-05-22');
insert into employee (name, email, birthday) values ('kemalettin', 'tugcu@gmail.com', '1988-10-08');
insert into employee (name, email, birthday) values ('ömer', 'hayyam@hotmail.com', null);
insert into employee (name, email, birthday) values ('ömer', 'seyfettin@gmail.com', 'null');
insert into employee (name, email, birthday) values ('ince', 'memed@gmail.com', '1966-02-11');
insert into employee (name, email, birthday) values ('refik', 'halitkaray@gmail.com', null);
insert into employee (name, email, birthday) values ('nazım', 'hikmet@gmail.com', '1942-04-12');
insert into employee (name, email, birthday) values ('faruk', 'nafızcamlibel@hotmail.com', null);
insert into employee (name, email, birthday) values ('fuzuli', 'fuzuli@gmail.com', '1955-08-09');
insert into employee (name, email, birthday) values ('orhan veli', 'kanik@gmail.com', '1992-02-11');
insert into employee (name, email, birthday) values ('rifat', 'ilgaz@gmail.com', '1965-05-11');
insert into employee (name, email, birthday) values ('fazıl hüsnü', 'daglarca@gmail.com', '1970-12-01');
insert into employee (name, email, birthday) values ('yasar nabi', 'nayir@hotmail.com', '1975-09-08');
insert into employee (name, email, birthday) values ('cahit', 'kulebi', null);
insert into employee (name, email, birthday) values ('atilla', 'ilhan@gmail.com', '1955-02-07');
insert into employee (name, email, birthday) values ('suat', 'taser@gmail.com', '1961-04-10');
insert into employee (name, email, birthday) values ('turgut', 'uyar@gmail.com', '1958-11-17');
insert into employee (name, email, birthday) values ('cemal', 'süreyya@hotmail.com', '1966-10-10');
insert into employee (name, email, birthday) values ('ahmet', 'hasim@gmail.com', '1981-04-02');
insert into employee (name, email, birthday) values ('ziya', 'osman@hotmail.com', '1992-11-15');
insert into employee (name, email, birthday) values ('cevdet kudret', 'solok@gmail.com', '1956-12-30');
insert into employee (name, email, birthday) values ('sezai', 'karakoc', '1958-11-11');
insert into employee (name, email, birthday) values ('zeki ömer', 'defne@gmail.com', '1982-01-28');
insert into employee (name, email, birthday) values ('necati', 'cumali@gmail.com', '1998-05-04');
insert into employee (name, email, birthday) values ('arif', 'damar@gmail.com', '1962-07-10');
insert into employee (name, email, birthday) values ('halit', 'fahriozansoy@gmail.com', '1988-01-19');
insert into employee (name, email, birthday) values ('melih', 'cevdetanday@gmail.com', '1966-04-13');
insert into employee (name, email, birthday) values ('niyazi', 'akinci@gmail.com', '1987-09-18');
insert into employee (name, email, birthday) values ('munis', 'faikozansoy@hotmail.com', '1961-01-11');
insert into employee (name, email, birthday) values ('ahmet kutsi', 'tecer@hotmail.com', '1975-12-01');
insert into employee (name, email, birthday) values ('ahmet', 'muhipdiranas@gmail.com', '1956-03-22');
insert into employee (name, email, birthday) values ('kemalettin', 'kamu@hotmail.com', '1954-12-01');
insert into employee (name, email, birthday) values ('ahmet', 'arif@gmail.com', '1994-12-04');
insert into employee (name, email, birthday) values ('özdemir', 'asaf@hotmail.com', '1975-10-10');


--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee SET name = 'sinasi',	email = 'sinasiveguzellemeleri@gmail.com',	birthday = '1987-12-25' WHERE id = 14;

UPDATE employee SET name = 'melih cevdet, email = 'melihcevdet@gmail.com',birthday = '1984-02-11' WHERE name = 'melih';

UPDATE employee SET name = 'niyazili',	email = 'niyazilli@gmail.com',	birthday = '1987-09-18' WHERE name = '%zi';

UPDATE employee SET name = 'deneme',	email = '@gmail.com',	birthday = '1995-02-03' WHERE email LIKE 'a%';

UPDATE employee SET name = 'xxxx', 	email = 'xxxx@gmail.com',	birthday = '1990-12-28' WHERE birthday < '1960-01-01';

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee WHERE id=5;

DELETE FROM employee WHERE name LIKE 'hal%';

DELETE FROM employee WHERE email LIKE '%e%mal%';

DELETE FROM employee WHERE birthday >= '2000-01-01';

DELETE FROM employee WHERE id > 45;
