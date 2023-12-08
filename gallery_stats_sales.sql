create table gallery.stats_sales
(
    id                   bigint auto_increment
        primary key,
    reference_date       date not null,
    sold_order_count     int  not null,
    canceled_order_count int  not null,
    sold_amount          int  not null,
    refund_amount        int  not null,
    constraint UK_bj20563kdikb0vd763dj0n8aq
        unique (reference_date)
);

