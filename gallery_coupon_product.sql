create table gallery.coupon_product
(
    id         bigint auto_increment
        primary key,
    coupon_id  bigint not null,
    product_id bigint not null,
    constraint FK31w7tbggm784bwf6a7p13ywya
        foreign key (coupon_id) references gallery.coupons (id),
    constraint FK67421iflftu4xixt0bllakkvc
        foreign key (product_id) references gallery.products (id)
);

