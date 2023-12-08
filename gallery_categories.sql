create table gallery.categories
(
    id       bigint auto_increment
        primary key,
    code     varchar(50)                           not null,
    name     varchar(50)                           not null,
    reg_date timestamp default current_timestamp() not null,
    mod_date timestamp default current_timestamp() not null
);

insert into gallery.categories (code, name) values ('tops', 'TOPS');
insert into gallery.categories (code, name) values ('shirts', 'SHIRTS');
insert into gallery.categories (code, name) values ('sweats', 'SWEATS');
insert into gallery.categories (code, name) values ('knits', 'KNITS');
insert into gallery.categories (code, name) values ('pants', 'PANTS');
insert into gallery.categories (code, name) values ('jeans', 'JEANS');
insert into gallery.categories (code, name) values ('skirts', 'SKIRTS');
insert into gallery.categories (code, name) values ('outer', 'OUTER');
insert into gallery.categories (code, name) values ('headwear', 'HEADWEAR');
insert into gallery.categories (code, name) values ('footwear', 'FOOTWEAR');
insert into gallery.categories (code, name) values ('accessories', 'ACCESSORIES');