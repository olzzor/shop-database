create table gallery.products
(
    id           bigint auto_increment
        primary key,
    category_id  bigint                                                not null,
    code         varchar(50)                                           not null,
    name         varchar(100)                                          not null,
    detail       varchar(2000)                                         null,
    price        int                                                   not null,
    discount_per int                                                   not null,
    status       enum ('ON_SALE', 'OUT_OF_STOCK', 'TEMP_OUT_OF_STOCK') not null,
    reg_date     timestamp default current_timestamp()                 not null,
    mod_date     timestamp default current_timestamp()                 not null,
    constraint UK_57ivhy5aj3qfmdvl6vxdfjs4p
        unique (code),
    constraint FKog2rp4qthbtt2lfyhfo32lsw9
        foreign key (category_id) references gallery.categories (id)
);

