CREATE TABLE shop.coupons
(
    id               BIGINT AUTO_INCREMENT PRIMARY KEY,
    type             ENUM ('AMOUNT_DISCOUNT', 'FREE_SHIPPING', 'PERCENTAGE_DISCOUNT', 'SEASONAL_EVENT_COUPON', 'SIGN_UP_DISCOUNT', 'USER_DISCOUNT') NOT NULL,
    code             VARCHAR(50) NOT NULL,
    name             VARCHAR(50) NOT NULL,
    detail           VARCHAR(2000),
    min_amount       INT NOT NULL,
    discount_type    ENUM ('AMOUNT_DISCOUNT', 'PERCENTAGE_DISCOUNT') NOT NULL,
    discount_value   INT NOT NULL,
    start_valid_date DATETIME(6) NOT NULL,
    end_valid_date   DATETIME(6) NOT NULL,
    status           ENUM ('ACTIVE', 'DEACTIVATED', 'EXPIRED', 'NEW', 'USED') NOT NULL,
    reg_date         TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date         TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);
