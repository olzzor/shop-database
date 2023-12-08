create table gallery.product_sizes
(
    id         bigint auto_increment
        primary key,
    product_id bigint                                not null,
    size       varchar(50)                           not null,
    quantity   int                                   not null,
    reg_date   timestamp default current_timestamp() not null,
    mod_date   timestamp default current_timestamp() not null,
    constraint FK4isa0j51hpdn7cx04m831jic4
        foreign key (product_id) references gallery.products (id)
);

