create table gallery.product_images
(
    id            bigint auto_increment
        primary key,
    product_id    bigint                                not null,
    file_name     varchar(100)                          not null,
    file_path     varchar(100)                          not null,
    display_order int(10)                               not null,
    reg_date      timestamp default current_timestamp() not null,
    mod_date      timestamp default current_timestamp() not null,
    constraint FKqnq71xsohugpqwf3c9gxmsuy
        foreign key (product_id) references gallery.products (id)
);

