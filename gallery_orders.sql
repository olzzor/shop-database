create table gallery.orders
(
    id             bigint auto_increment
        primary key,
    user_id        bigint                                                                                                                      not null,
    order_number   varchar(50)                                                                                                                 not null,
    buyer_email    varchar(50)                                                                                                                 not null,
    payment_method varchar(10)                                                                                                                 not null,
    payment_amount int                                                                                                                         not null,
    card_number    varchar(16)                                                                                                                 null,
    status         enum ('CANCEL_COMPLETED', 'CANCEL_REQUESTED', 'ORDER_CONFIRMED', 'ORDER_FINALIZED', 'ORDER_RECEIVED', 'SHIPMENT_PREPARING') not null,
    reg_date       timestamp default current_timestamp()                                                                                       not null,
    mod_date       timestamp default current_timestamp()                                                                                       not null,
    constraint FK32ql8ubntj5uh44ph9659tiih
        foreign key (user_id) references gallery.users (id)
);

