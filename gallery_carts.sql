create table gallery.carts
(
    id            bigint auto_increment
        primary key,
    user_id       bigint                                not null,
    activate_flag tinyint(1)                            not null,
    reg_date      timestamp default current_timestamp() not null,
    mod_date      timestamp default current_timestamp() not null,
    constraint UK_64t7ox312pqal3p7fg9o503c2
        unique (user_id),
    constraint FKb5o626f86h46m4s7ms6ginnop
        foreign key (user_id) references gallery.users (id)
);

