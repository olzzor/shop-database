create table gallery.reviews
(
    id            bigint auto_increment
        primary key,
    user_id       bigint                                 not null,
    order_id      bigint                                 not null,
    rating        tinyint                                not null,
    title         varchar(100)                           not null,
    content       varchar(1000)                          not null,
    activate_flag tinyint(1) default 0                   not null,
    reg_date      timestamp  default current_timestamp() not null,
    mod_date      timestamp  default current_timestamp() not null,
    constraint UK_sbkc1fll14ly5y6yxxk2jwlef
        unique (order_id),
    constraint FKcgy7qjc1r99dp117y9en6lxye
        foreign key (user_id) references gallery.users (id),
    constraint FKqwgq1lxgahsxdspnwqfac6sv6
        foreign key (order_id) references gallery.orders (id)
);

