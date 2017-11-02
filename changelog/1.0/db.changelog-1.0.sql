--liquibase formatted sql

--changeset amakogin:create_table
create table test1 (
    id int primary key,
    name varchar(255)
);
--rollback drop table test1;

--changeset amakogin:insertData
insert into test1 (id, name) values (1, 'name 10');
insert into test1 (id, name) values (2, 'name 20');

--changeset amakogin:3 dbms:postgresql
create sequence seq_test;

--changeset amakogin:add_column
alter table test1 add second varchar(50);

--changeset amakogin:updateName
update test1 Set name = 'newValue111';
