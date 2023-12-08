create table gallery.cart_product
(
    id              bigint auto_increment
        primary key,
    cart_id         bigint not null,
    product_id      bigint not null,
    product_size_id bigint not null,
    quantity        int    not null,
    coupon_id       bigint null,
    constraint FK8bhydybldutgf7a82oxkctlgs
        foreign key (cart_id) references gallery.carts (id),
    constraint FKftoxy7kpt3y030m3yjhs1t62f
        foreign key (coupon_id) references gallery.coupons (id),
    constraint FKj4tv1xhgro6man14373qt7cu6
        foreign key (product_size_id) references gallery.product_sizes (id),
    constraint FKreo7xwp4sy8mglrlf0b6hkr3e
        foreign key (product_id) references gallery.products (id)
);

