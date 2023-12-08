create table gallery.refresh_token
(
    id       bigint auto_increment
        primary key,
    user_id  bigint                                not null,
    token    varchar(255)                          not null,
    exp_date timestamp                             not null,
    reg_date timestamp default current_timestamp() not null,
    mod_date timestamp default current_timestamp() not null,
    constraint FKjtx87i0jvq2svedphegvdwcuy
        foreign key (user_id) references gallery.users (id)
);

