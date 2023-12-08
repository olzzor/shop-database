create table gallery.recently_viewed_products
(
    id         bigint auto_increment
        primary key,
    user_id    bigint                                not null,
    product_id bigint                                not null,
    viewed_at  timestamp default current_timestamp() not null,
    reg_date   timestamp default current_timestamp() not null,
    mod_date   timestamp default current_timestamp() not null,
    constraint FK44cdeti9ans7phb8897xl55h6
        foreign key (user_id) references gallery.users (id),
    constraint FKgxf53i2ytkkdpwf7pwsmuf2qy
        foreign key (product_id) references gallery.products (id)
);

