create table gallery.contacts
(
    id             bigint auto_increment
        primary key,
    user_id        bigint                                                                                                                             null,
    inquirer_name  varchar(50)                                                                                                                        not null,
    inquirer_email varchar(50)                                                                                                                        not null,
    order_number   varchar(50)                                                                                                                        null,
    type           enum ('EXCHANGE_RETURN_REFUND', 'ORDER_PAYMENT', 'OTHER', 'PARTNERSHIP', 'PRICE_PROMOTION', 'PRIVACY', 'PRODUCT_INFO', 'SHIPPING') not null,
    title          varchar(100)                                                                                                                       not null,
    content        varchar(5000)                                                                                                                      not null,
    status         enum ('ANSWERED', 'CLOSED', 'UNANSWERED')                                                                                          not null,
    ref            bigint                                                                                                                             not null,
    step           int                                                                                                                                not null,
    reg_date       timestamp default current_timestamp()                                                                                              not null,
    mod_date       timestamp default current_timestamp()                                                                                              not null,
    constraint FKna8bddygr3l3kq1imghgcskt8
        foreign key (user_id) references gallery.users (id)
);

