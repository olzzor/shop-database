create table gallery.coupons
(
    id               bigint auto_increment
        primary key,
    type             enum ('AMOUNT_DISCOUNT', 'FREE_SHIPPING', 'PERCENTAGE_DISCOUNT', 'SEASONAL_EVENT_COUPON', 'SIGN_UP_DISCOUNT', 'USER_DISCOUNT') not null,
    code             varchar(50)                                                                                                                    not null,
    name             varchar(50)                                                                                                                    not null,
    detail           varchar(2000)                                                                                                                  null,
    min_amount       int                                                                                                                            not null,
    discount_type    enum ('AMOUNT_DISCOUNT', 'PERCENTAGE_DISCOUNT')                                                                                not null,
    discount_value   int                                                                                                                            not null,
    start_valid_date datetime(6)                                                                                                                    not null,
    end_valid_date   datetime(6)                                                                                                                    not null,
    status           enum ('ACTIVE', 'DEACTIVATED', 'EXPIRED', 'NEW', 'USED')                                                                       not null,
    reg_date         timestamp default current_timestamp()                                                                                          not null,
    mod_date         timestamp default current_timestamp()                                                                                          not null
);

