create table gallery.stats_sales_category
(
    id                   bigint auto_increment
        primary key,
    reference_date       date   not null,
    category_id          bigint not null,
    sold_order_count     int    not null,
    canceled_order_count int    not null,
    sold_amount          int    not null,
    refund_amount        int    not null,
    constraint UK_tc8cck3o2tuqb987hw2g4p4rh
        unique (reference_date),
    constraint FKeqato0cjqbv2qae623u0yf19g
        foreign key (category_id) references gallery.categories (id)
);

