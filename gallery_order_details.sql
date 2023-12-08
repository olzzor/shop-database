create table gallery.order_details
(
    id              bigint auto_increment
        primary key,
    order_id        bigint                                not null,
    product_id      bigint                                not null,
    product_size_id bigint                                not null,
    shipment_id     bigint                                not null,
    coupon_id       bigint                                null,
    quantity        int                                   not null,
    unit_price      int                                   not null,
    discount_per    int                                   not null,
    final_price     int                                   not null,
    reg_date        timestamp default current_timestamp() not null,
    mod_date        timestamp default current_timestamp() not null,
    constraint FK4q98utpd73imf4yhttm3w0eax
        foreign key (product_id) references gallery.products (id),
    constraint FKes6hxuno63dgo9gtes55x2j2v
        foreign key (product_size_id) references gallery.product_sizes (id),
    constraint FKh2ss50pxjdcjqlc0qrj1qtnwt
        foreign key (coupon_id) references gallery.coupons (id),
    constraint FKjyu2qbqt8gnvno9oe9j2s2ldk
        foreign key (order_id) references gallery.orders (id),
    constraint FKo7llktimeennx1k67rgc5r1y6
        foreign key (shipment_id) references gallery.shipments (id)
);

