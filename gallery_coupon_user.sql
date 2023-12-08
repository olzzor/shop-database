create table gallery.coupon_user
(
    id        bigint auto_increment
        primary key,
    coupon_id bigint not null,
    user_id   bigint not null,
    constraint FKdgdsf3avna99rvm38kereg1bw
        foreign key (coupon_id) references gallery.coupons (id),
    constraint FKgs11am43pyyam7h4ruypa2hhu
        foreign key (user_id) references gallery.users (id)
);

