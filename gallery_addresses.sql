create table gallery.addresses
(
    id           bigint auto_increment
        primary key,
    user_id      bigint                                not null,
    name         varchar(20)                           not null,
    phone_number varchar(20)                           not null,
    zip_code     varchar(20)                           not null,
    province     varchar(50)                           not null,
    city         varchar(50)                           not null,
    address1     varchar(100)                          not null,
    address2     varchar(100)                          null,
    is_apartment tinyint(1)                            not null,
    is_default   tinyint(1)                            not null,
    reg_date     timestamp default current_timestamp() not null,
    mod_date     timestamp default current_timestamp() not null,
    constraint FK1fa36y2oqhao3wgg2rw1pi459
        foreign key (user_id) references gallery.users (id)
);

