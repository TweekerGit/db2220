-- 2 Лабораторна робота
-- Студента групи МІТ-31
-- Фітя Владислава

-- 1 Вибрати всі записи з таблиці "students"
select * from "students";

-- 2 Вибрати одне поле rating з таблиці info
select rating from info;

-- 3 Вибрати два поля rating та "day" з таблиці info та відсортований в зворотному порядку
select rating, "day" from info order by rating desc;

-- 4 Вибрати одне поле rating з таблиці info які NOT NULL
select rating from info where not rating isnull;

-- 5 Вибрати декілька полів title, scholarship_id з таблиці subject_area
select title, scholarship_id from subject_area;

-- 6 Вибрати з таблиці "students" всі записи з ім'ям 'Bogdana'
select * from "students" where "name" = 'Bogdana';

-- 7 Вибрати з таблиці "students" поле "surname" яке відсортовано в зворотньому порядку
select surname From "students" Order by surname desc;

-- 8 Вибрати з таблиці "students" поле "surname" яке має в записі "name" = 'Susannah'
select surname from "students" where "name" = 'Susannah';

-- 9 Вибрати максимальну ціну з таблиці "scholarship"
select max(dollars) from scholarship;

-- 10 Вибрати максимальну ціну з таблиці "scholarship" в проміжку поля id від 25 до 30
select max(dollars) from scholarship where id between 25 and 30;

-- 11 Вибрати мінімальну ціну з таблиці "scholarship" в проміжку поля id від 40 до 80
select min(dollars) from scholarship where id between 40 and 80;

-- 12 Вибрати мінімальну ціну з таблиці "scholarship"
select min(dollars) from scholarship;

-- 13 Вибрати з таблиці "students" всі записи які не з ім'ям 'Faye' та не з прізвищем 'Simakov'
select "name", surname from "students" where not "name" = 'Faye' and not surname = 'Simakov';

-- 14 Вибрати мінімальну ціну з таблиці "scholarship" між id 15,22,54,100
select min(dollars) From scholarship where id in (15,22,54,100);

-- 15 Вибрати максимальну ціну з таблиці "scholarship" між id 1,2,13,27,54,78,90 та полем id > 50
select max(dollars) From scholarship where id in (1,2,13,27,54,78,90) and id > 50;

-- 16 Кількість записів в таблиці "students" з ім'ям
select count("name") from "students";

-- 17 Вибрати всі записи з таблиці "scholarship" ціна яких менші за 5000
select * from scholarship where dollars < 5000;

-- 18 Вибрати всі записи з таблиці "scholarship" ціна яких між 1500 та 3000 з полем id > 20
select * from scholarship where dollars between 1500 and 3000 and id > 20;

-- 19 Кількість записів в таблиці "scholarship" з полем dollars більшим за ціну в 5000
select count(dollars) from scholarship where dollars > 5000;

-- 20 Вибрати всі унікальні записи поля scholarship_id з таблиці subject_area
select Distinct scholarship_id from subject_area;

-- 21 Вибрати мінімальну ціну з таблиці "scholarship" між id 4,21,25,45,99 та полем id < 50
select min(dollars) From scholarship where id in (4,21,25,45,99) and id < 50;

-- 22 Вибрати всі унікальні записи поля scholarship_id з таблиці subject_area якщо поле title не починається з C та відсортована за полем scholarship_id
select Distinct scholarship_id from subject_area where not title like 'C%' order by scholarship_id;

-- 23 Вибрати всі унікальні записи поля scholarship_id з таблиці subject_area та полем id > 50
select Distinct scholarship_id from subject_area where id > 50;

-- 24 Вибрати та подивитися поле rating з таблиці info з записом students_id = 2
select rating from info where students_id = 2;

-- 25 Вибрати всі унікальні записи поля scholarship_id з таблиці subject_area та полем id > 25 та відсортованими за полем scholarship_id
select Distinct scholarship_id from subject_area where id > 25 order by scholarship_id;

-- 26 Вибрати всі записи з таблиці "scholarship" ціна яких між 1500 та 3000 або з полем id > 90
select * from scholarship where dollars between 1500 and 3000 or id > 90;

-- 27 Вибрати та подивитися поле rating з таблиці info з проміжку поля students_id між 20 та 45 та полем rating в форматі 5._
select rating from info where students_id between 20 and 45 and rating::varchar like '5._';

-- 28 Кількість записів в таблиці info з унікальним полем group_id та полем rating > 5
select count(distinct group_id) from info where rating > 5;

-- 29 Вибрати мінімальне значення поля rating з таблиці info в проміжку з '2021-01-01' and '2021-02-01'
select min(rating) from info where "day" between '2021-01-01' and '2021-02-01';

-- 30 Вибрати всі записи з таблиці info з полем students_id > 30 та полем rating < 5.0
select * from info where students_id > 30 and rating < 5.0;

-- 31 Кількість записів в таблиці info з унікальним полем group_id між 43 та 94
select count(distinct group_id) from info where group_id between 43 and 94;

-- 32 Вибрати всі записи з таблиці "scholarship" ціна яких між 4333 та 4500 або з полем id > 85
select * from scholarship where dollars between 4333 and 4500 or id > 85;

-- 33 Вибрати всі записи з таблиці group з полем "name" = 'Champions' або з полем subject_area_id = 3
select * from "group" where "name" = 'Champions' or subject_area_id = 3;

-- 34 Кількість записів в таблиці info з полем group_id з полем rating між 3 та 7
select count(group_id) from info where rating between 3 and 7;

-- 35 Кількість записів в таблиці info з полем rating та полем group_id = 10
select count(rating) from info where group_id = 10;

-- 36 Середня ціна з таблиці scholarship
select avg(dollars) from scholarship;

-- 37 Максимальне поле запису в таблиці info з полем rating та полем group_id = 17
select max(rating) from info where group_id = 17;

-- 38 Максимальне поле запису в таблиці info з полем rating та полем group_id = 17
select min(rating) from info where group_id = 17;

-- 39 Мінімальний рейтинг поля rating з таблиці info в проміжку між '2021-02-01' and '2021-02-12'
select min(rating) from info where "day" between '2021-02-01' and '2021-02-12'; 

-- 40 Максимальний рейтинг поля rating з таблиці info в проміжку між '2021-01-01' and '2021-01-12'
select max(rating) from info where "day" between '2021-01-01' and '2021-01-12'; 

-- 41 Вибрати всі записи NOT NULL з таблиці subject_area
select * from subject_area where NOT title ISNULL;

-- 42 Вибрати всі записи з таблиці info які не входять в діапазон поля "day" '2021-06-01' and '2021-09-01' та відсортованим за цим полем
select * from info where not "day" between '2021-06-01' and '2021-09-01' order by "day";

-- 43 Середня ціна з таблиці scholarship якщо ціна більша за 2500 та менша за 6000 або id > 55
select avg(dollars) from scholarship where dollars > 2500 and (dollars < 6000 or id > 55);

-- 44 Вибрати всі записи з таблиці info в проміжку від 2020-03-10 до 2022-01-01
select * from info where "day" > '2020-03-10' AND "day" < '2022-01-01';

-- 45 Середнє значення з поля rating з таблиці info між днем '2021-02-04' та '2021-05-03'
select avg(rating) from info where "day" between '2021-02-04' and '2021-05-03';

-- 46 Вивести середню оцінку з таблиці info в проміжку з 2020-05-12 до 2020-07-12
select avg(rating) from info where "day" > '2020-05-12' and "day" < '2020-07-12';

-- 47 Вивести середню оцінку з таблиці info поля group_id = 15
select avg(rating) from info where group_id = 15;

-- 48 Вивести середню оцінку з таблиці info в проміжку поля group_id з 2 до 7
select avg(rating) from info where group_id between 2 and 7;

-- 49 Вибрати всі записи з таблиці "students" поля які "name" починаються на W або поле surname на K
select * from "students" where "name" Like 'W%' or surname like 'K%';

-- 50 Вибрати rating, "day", students_id з таблиці info якщо поле rating не починається з 7 та відсортовано за полем rating
select rating, "day", students_id from info where not rating::varchar like '7%' order by rating;

-- 51 Максимальне поле запису в таблиці info з полем rating та полем group_id = 24
select min(rating) from info where group_id = 24;

-- 52 Вибрати rating, "day", students_id з таблиці info якщо поле rating не між 7 та 10 та відсортовано за полем rating
select rating, "day", students_id from info where not rating between 7 and 10 order by rating;

-- 53 Вибрати rating, "day", students_id з таблиці info якщо поле rating не 1,4,7,9 та відсортовано за полем rating
select rating, "day", students_id from info where not rating in (1,4,7,9) order by rating;

-- 54 Вибрати та подивитися поле rating з таблиці info з записом date = '2021-02-13'
select rating from info where "day" = '2021-02-13';

-- 55 Вибрати та подивитися поле rating з таблиці info з записом date '2021-02-13','2021-02-16','2021-05-21'
select rating from info where "day" in ('2021-02-13','2021-02-16','2021-05-21');

-- 56 Вибрати всі записи поля "name" NOT NULL з таблиці "students"
select * from "students" where NOT "name" ISNULL;

-- 57 Вибрати всі записи з таблиці subject_area з полем title яке починаються на C та полем budjet_id більше за 20
select * from subject_area where title like 'C%' And scholarship_id > 20;

-- 58 Вибрати записи scholarship_id, title з таблиці subject_area з полем title яке містить в собі fa або полем budjet_id меншим за 50 та відсортованим за полем scholarship_id
select scholarship_id, title from subject_area where scholarship_id < 50 or title like '%fa%' order by scholarship_id;

-- 59 Вибрати поле surname з таблиці "students" яке починається на C або c та всередині слова є s
select surname from "students" where surname like '%s%' and surname ilike 'c%';

-- 60 Вибрати з таблиці "students" поле "surname" в якій запис "name" починається на S
select surname, "name" from "students" where "name" like 'S%';

-- 61 Вибрати поле "name", surname з таблиці "students" яке починається на T та складається з 5 символів
select "name", surname from "students" where "name" like 'T%' and "name" like '_____';

-- 62 Вибрати поле "name" з таблиці "students" якщо поле surname починається з W та може містити в собі n чи поле "name" починається з M
select "name" from "students" where surname like 'W%' and (surname like '%n%' or "name" like 'M%');

-- 63 Вибрати поле "name" з таблиці "students" якщо поле surname починається з T та може містити в собі u чи поле "name" містить в собі n
select "name" from "students" where surname like 'T%' and (surname like '%u%' or "name" like '%n%');

-- 64 Вибрати поле "name" з таблиці "students" якщо поле surname починається з T та може містити в собі u чи поле "name" містить в собі n та відсортованим в зворотньому порядку
select "name" from "students" where surname like 'T%' and (surname like '%u%' or "name" like '%n%') order by "name" desc;

-- 65 Вибрати поля rating, "day" з таблиці info в проміжку з дат '2020-02-01' and '2021-01-01'
select rating, "day" from info where "day" between '2020-02-01' and '2021-01-01';

-- 66 Вибрати поля rating, "day" з таблиці info в проміжку з дат '2020-02-01' and '2021-01-01' та поле rating > 5
select rating, "day" from info where "day" between '2020-02-01' and '2021-01-01' and rating > 5;

-- 67 Вибрати поля rating, "day", students_id з таблиці info якщо поле students_id > 20 та поле rating < 4
select rating, "day", students_id from info where students_id > 20 and rating < 4;

-- 68 Вибрати мінімальну дату з таблиці info
select min("day") from info;

-- 69 Вибрати записи "day","rating","students_id" з таблиці info з group_id = 54
select "day","rating","students_id" from info where group_id = 54;

-- 70 Вибрати записи "day","rating","students_id" з таблиці info з group_id з 23,56,60,63
select "day","rating","students_id" from info where group_id in (23,56,60,63);

-- 71 Вибрати записи "day","rating","students_id" з таблиці info з group_з 1,2,32,43,100 та відсортованими за полем "students_id"
select "students_id","day","rating" from info where group_id in (1,2,32,43,100) order by "students_id";

-- 72 Вибрати всі записи з таблиці scholarship де поле dollars між 1333 та 5000
select * from scholarship where dollars BETWEEN 1333 and 5000;

-- 73 Вибрати всі записи з таблиці group які задовольняють масив для поля subject_area_id
select * from "group" where subject_area_id in (3,32,42,76);

-- 74 Вибрати всі записи з таблиці info які задовольняють умову 7._
select * from info where rating::varchar like '7._';

-- 75 Вибрати rating, "day", students_id та сортувати всі записи з таблиці info в зворотньому порядку за полем rating '3._'
select rating, "day", students_id from info where rating::varchar like '3._' ORDER by rating DESC;

-- 76 Вибрати поля "rating", "day" з таблиці info які задовольняють умову 2020-0_-0_
select "rating", "day" from info where "day"::varchar like '2020-0_-0_';

-- 77 Вибрати всі записи з таблиці scholarship поле dollars яке закінчується двійкою
select * from scholarship where dollars::varchar like '%2';

-- 78 Вибрати всі значення записи з таблиці "students" де поле surname починається з L
select * from "students" where surname like 'L%';

-- 79 Вибрати всі значення записи з таблиці "students" де поле name починається з y або Y
select * from "students" where "name" ILIKe 'y%';

-- 80 Вибрати всі записи з таблиці subject_area поле title яке закінчується l (cast _ as text)
select * from subject_area where cast(title as text) like '%l';

-- 81 Вибрати всі записи з таблиці scholarship поле dollars яке закінчується 25
select * from scholarship where dollars::varchar like '%25';

-- 82 Вибрати всі поля з таблиці scholarship які задовольняють умову поля dollars 23___
select * from scholarship where dollars::varchar like '23___';

-- 83 Вибрати та сортувати всі записи з таблиці group в зворотньому порядку
select * from "group" where "name" like 'C%' ORDER by "name" DESC;

-- 84 Вибрати та сортувати записи "name", surname з таблиці "students" в прямому порядку
select "name", surname from "students" where "name" like 'R%' order by "name", surname;

-- 85 Вибрати записи "name", rating з таблиць "students", info (декартовий добуток)-так погано робити!
select "name", rating from "students", info;

-- 86 Вибрати з таблиці "students" поля name та surname і з таблиці info поле group_id та подивились поля за правилом "students".id = info.students_id
select us.name, us.surname, r.group_id
from "students" as us, info r
where us.id = r.students_id;

-- 87 Вибрати з таблиці "students" поля name та surname і з таблиці info поле group_id та подивитись поля за правилом "students".id = info.students_id та полем info.group_id = 1 тобто подивитись на людей які в першій групі
select us.name, us.surname, r.group_id
from "students" as us
JOIN info r
ON us.id = r.students_id
where r.group_id = 1;

-- 88 Вибрати з таблиці "students" поля name та surname і з таблиці info поле group_id та подивитись поля за правилом "students".id = info.students_id та полем info.group_id в 2,6,23,65,78
select r.group_id, us.name, us.surname
from "students" as us
JOIN info r
ON us.id = r.students_id
where r.group_id in (1,6,23,65,78)
order by group_id;

-- 89 Вибрати записи з полями g.name, r.rating, r.students_id, r.day, sa.title, sa.scholarship_id з таблиць info, "group", subject_area які зв'язані полями info.group_id = group.id та subject_area.id = group.subject_area_id
select g.name, r.rating, r.students_id, r.day, sa.title, sa.scholarship_id
from info as r
JOIN "group" As g
ON r.group_id = g.id
Join subject_area as sa
On sa.id = g.subject_area_id;

-- 90 Вибрати з таблиці "students" поля name та surname і з таблиці info поле group_id та подивитись поля за правилом "students".id = info.students_id та полем info.group_id = 4 тобто подивитись на людей які в першій групі
select us.name, us.surname, r.group_id
from "students" as us
JOIN info r
ON us.id = r.students_id
where r.group_id = 4;

-- 91 Вибрати записи з полями g.name, r.rating, r.students_id, r.day, sa.title, sa.scholarship_id з таблиць info, "group", subject_area які зв'язані полями info.group_id = group.id та subject_area.id = group.subject_area_id де поле sa.scholarship_id може бути (2,3,23,33) і відсортовано за полем r.students_id
select r.students_id, sa.scholarship_id, g.name, r.rating, r.day, sa.title
from info as r
JOIN "group" As g
ON r.group_id = g.id
Join subject_area as sa
On sa.id = g.subject_area_id
where sa.scholarship_id in (2,3,23,33) order by r.students_id;

-- 92 Вибрати записи з полями g.name, r.rating, r.students_id, r.day, sa.title, sa.scholarship_id з таблиць info, "group", subject_area які зв'язані полями info.group_id = group.id та subject_area.id = group.subject_area_id за правилом r.rating > 5 та r.rating < 7 або r.rating починається на 2.
select g.name, r.rating, r.students_id, r.day, sa.title, sa.scholarship_id
from info as r
JOIN "group" As g
ON r.group_id = g.id
Join subject_area as sa
On sa.id = g.subject_area_id
where (r.rating > 5 and r.rating < 7) or r.rating::varchar like '2._';

-- 93 Вибрати записи з полями g.name, r.rating, r.students_id, r.day, sa.title, sa.scholarship_id з таблиць info, "group", subject_area які зв'язані полями info.group_id = group.id та subject_area.id = group.subject_area_id за правилом r.rating > 2 та r.rating < 3 або r.rating починається на 5. а також відсортовані за полем "day"
select r.day, r.students_id, sa.scholarship_id, g.name, r.rating, sa.title 
from info as r
JOIN "group" As g
ON r.group_id = g.id
Join subject_area as sa
On sa.id = g.subject_area_id
where (r.rating > 2 and r.rating < 3) or r.rating::varchar like '5._' order by r.day;

-- 94 Вибрати записи з полями r.rating, r.students_id, r.day з таблиць info, "students" які зв'язані полями info.students_id = "students".id
select r.rating, r.students_id, r.day
from info as r
JOIN "students" As u
ON r.students_id = u.id;

-- 95 Вибрати записи з полями r.rating, r.students_id, u.name, u.surname, r.day з таблиць info, "students" які зв'язані полями info.students_id = "students".id відсортовані за полем r.rating та полем u."name" яке починається з літери M
select r.rating, r.students_id, u.name, u.surname, r.day
from info as r
JOIN "students" As u
ON r.students_id = u.id
where u."name" like 'M%' order by r.rating;

-- 96 Вибрати записи з полями r.rating, r.students_id, r.day з таблиць info, "students" які зв'язані полями info.students_id = "students".id за правилом r.rating > 8 відсортованим полем r.rating
select r.rating, r.students_id, r.day
from info as r
JOIN "students" As u
ON r.students_id = u.id
where r.rating > 8 order by r.rating;

-- 97 Вибрати записи з полями g.name, r.rating, r.students_id, r.day, sa.title, sa.scholarship_id з таблиць info, "group", subject_area які зв'язані полями info.group_id = group.id та subject_area.id = group.subject_area_id за правилом r.rating > 5 та r.rating < 6 або r.rating починається на 1. а також відсортовані за полем "day"
select r.day, r.students_id, sa.scholarship_id, g.name, r.rating, sa.title 
from info as r
JOIN "group" As g
ON r.group_id = g.id
Join subject_area as sa
On sa.id = g.subject_area_id
where (r.rating > 5 and r.rating < 6) or r.rating::varchar like '1._' order by r.day;

-- 98 Вибрати унікальні записи scholarship_id з полями scholarship_id, title з таблиці subject_area з полем title = 'Computer Science'
select distinct scholarship_id, title from subject_area where title = 'Computer Science';

-- 99 Вибрати записи b.dollars sa.title з максимальним полем b.dollars з таблиць scholarship, subject_area які зв'язані полями scholarship.id = subject_area.scholarship_id
select max(b.dollars), sa.title
from "scholarship" as b
JOIN subject_area sa
ON b.id = sa.scholarship_id
group by sa.title;

-- 100 Вибрати записи з полями sa.title, g.name, b.dollars з таблиць scholarship, "group", subject_area які зв'язані полями b.id = sa.scholarship_id та sa.id = g.subject_area_id за правилом dollars > 4999 відсортовані за ціною
select sa.title, g.name, b.dollars
from "group" as g
join subject_area sa
on sa.id = g.subject_area_id
join scholarship b
on b.id = sa.scholarship_id
where dollars > 4999 order by dollars;