create table gallery.coupon_category
(
    id          bigint auto_increment
        primary key,
    coupon_id   bigint not null,
    category_id bigint not null,
    constraint FK2oea2pgm4q5i5myy8okkildk8
        foreign key (category_id) references gallery.categories (id),
    constraint FKpb4wrr6m3xqmxq0833q6koqbk
        foreign key (coupon_id) references gallery.coupons (id)
);

