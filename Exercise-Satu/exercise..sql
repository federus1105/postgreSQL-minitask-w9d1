select release_date from movies
where release_date '2020-01-01 00:00' AND '2020-12-31 23:59:59'

select name from actors
where name like 's%';

select title, release_date, rating from movies
where rating between 4 and 7
where release_date '2004-01-01 00:00' AND '2010-12-31 23:59:59';