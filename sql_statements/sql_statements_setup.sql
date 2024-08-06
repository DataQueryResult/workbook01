--------------------------------------------------------------------------------
-- Visual and Practial SQL, Kristian Torp, torp42@gmail.com
-- For setup of tables for SQL Statements
--------------------------------------------------------------------------------
-- Configuration
create schema if not exists exam006;
set schema 'exam006';

-- Disuse
drop table if exists knows;
drop table if exists sport;
drop table if exists trainer;
drop table if exists club;

-- Use
create table club(
    cid    int          primary key,
    cname  varchar(99)  not null);

create table trainer(
    tid    int           primary key,
    tname  varchar(99)   not null,
    dob    date          not null,
    cid    int           references club);

create table sport(
    sid     int           primary key,
    sname   varchar(99)   not null);

create table knows(
    tid        int references trainer,
    sid        int references sport,
    from_date  date not null,
    to_date    date not null,
    primary key (tid, sid, from_date));

-- Teardown
delete from knows;
delete from sport;
delete from trainer;
delete from club;

-- Setup
-- club
insert into club values(1, 'AaB');
insert into club values(2, 'FCM');
insert into club values(3, 'HIF');
insert into club values(4, 'FCK');

-- trainer
insert into trainer values(11, 'Ann', '1981-01-01', 1);
insert into trainer values(22, 'Bent', '1982-02-02', 1);
insert into trainer values(33, 'Curt', '1983-03-03', 1);
insert into trainer values(44, 'Dan', '1984-04-04', 2);
insert into trainer values(55, 'Else', '1985-05-05', 3);
insert into trainer values(66, 'Finn', '1986-06-06', NULL);
insert into trainer values(77, 'Gert', '1987-07-07', NULL);
insert into trainer values(88, 'Hans', '1988-08-08', NULL);
insert into trainer values(99, 'Ivan', '1989-09-09', NULL);

-- sport
insert into sport values(111, 'Aerobic');
insert into sport values(222, 'Basketball');
insert into sport values(333, 'Camel Race');
insert into sport values(444, 'Dancing');
insert into sport values(555, 'Football');
insert into sport values(666, 'Gymnastics');

-- knows
insert into knows values(11, 111, '2023-02-01', '2023-06-01');
insert into knows values(11, 222, '2023-02-01', '2023-06-01');
insert into knows values(11, 333, '2023-02-01', '2023-06-01');
insert into knows values(11, 444, '2023-02-01', '2023-06-01');
insert into knows values(11, 555, '2023-02-01', '2023-06-01');
insert into knows values(22, 111, '2023-02-01', '2023-06-01');
insert into knows values(22, 222, '2023-02-01', '2023-06-01');
insert into knows values(22, 333, '2023-02-01', '2023-06-01');
insert into knows values(33, 111, '2023-02-01', '2023-06-01');
insert into knows values(33, 222, '2023-02-01', '2023-06-01');
insert into knows values(44, 111, '2023-02-01', '2023-06-01');
insert into knows values(55, 555, '2023-02-01', '2023-06-01');
insert into knows values(66, 555, '2023-02-01', '2023-06-01');
insert into knows values(77, 555, '2023-02-01', '2023-06-01');

--------------------------------------------------------------------------------
-- Helper
--------------------------------------------------------------------------------
select * from club;
select * from trainer;
select * from sport;
select * from knows;
