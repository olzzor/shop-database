create table gallery.shipments
(
    id               bigint auto_increment
        primary key,
    recipient_name   varchar(20)                                                                                                not null,
    recipient_phone  varchar(20)                                                                                                not null,
    shipping_address varchar(500)                                                                                               not null,
    courier_company  enum ('CJ_LOGISTICS', 'CU', 'GS_POSTBOX', 'HANJIN', 'KOREA_POST', 'KYUNG_DONG', 'LOGEN', 'LOTTE', 'OTHER') null,
    tracking_number  varchar(50)                                                                                                null,
    status           enum ('ACCEPTED', 'CANCELED', 'DELIVERED', 'PREPARING', 'SHIPPING')                                        not null,
    reg_date         timestamp default current_timestamp()                                                                      not null,
    mod_date         timestamp default current_timestamp()                                                                      not null
);

