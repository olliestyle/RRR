create table swimmers (
                          id serial primary key ,
                          name text,
                          time int
);

insert into swimmers (name, time) values
('rzxcv', 10), ('zxjcv', 10), ('zxchv', 10), ('zxgcv', 10), ('zxcvf', 10), ('zxcxv', 10), ('zxcav', 10),
('aaa', 20) , ('bbb', 30) , ('ccc', 40) , ('ddd', 35) , ('eee', 20) , ('fff', 20) , ('ggg', 20),
('hhh', 15) ,('iii', 25) , ('jjj', 30);

select time from (
                     select time from (
                                          select * from swimmers order by time) as t
                     limit ((select count(*) from swimmers) * 0.9)
                 ) as tt order by time desc limit 1;

select unnest(
               string_to_array('scott#@#leo#@#owen#@#mark', '#@#')
           ) as parts;

create table prices(
                       id serial primary key ,
                       name varchar(256),
                       created timestamp,
                       price int
);

insert into prices (name, created, price) VALUES
('Молоко', '2015-06-22 19:10:25-07', 17),
('Творог', '2015-06-22 19:10:25-07', 27),
('Хлеб', '2015-06-22 19:10:25-07', 4),
('Хлеб', '2016-06-22 19:10:25-07', 40),
('Молоко', '2016-06-22 19:10:25-07', 41),
('Творог', '2016-06-22 19:10:25-07', 42),
('Хлеб', '2018-06-22 19:10:25-07', 43),
('Творог', '2018-06-22 19:10:25-07', 44),
('Молоко', '2018-06-22 19:10:25-07', 45),
('Яблоко', '2022-06-22 19:10:25-07', 46),
('Хлеб', '2022-06-22 19:10:25-07', 47),
('Молоко', '2022-06-22 19:10:25-07', 48),
('Творог', '2022-06-22 19:10:25-07', 49);

select distinct on (name) name, price from prices order by name, created desc;