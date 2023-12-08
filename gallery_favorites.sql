create table gallery.favorites
(
    id              bigint auto_increment
        primary key,
    user_id         bigint                                not null,
    product_id      bigint                                not null,
    product_size_id bigint                                not null,
    reg_date        timestamp default current_timestamp() not null,
    mod_date        timestamp default current_timestamp() not null,
    constraint FK5bup8117ep34hxmch44irxf4h
        foreign key (product_size_id) references gallery.product_sizes (id),
    constraint FK6sgu5npe8ug4o42bf9j71x20c
        foreign key (product_id) references gallery.products (id),
    constraint FKk7du8b8ewipawnnpg76d55fus
        foreign key (user_id) references gallery.users (id)
);

