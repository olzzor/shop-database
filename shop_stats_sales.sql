CREATE TABLE shop.stats_sales
(
    id                   BIGINT AUTO_INCREMENT PRIMARY KEY,
    reference_date       DATE NOT NULL,
    sold_order_count     INT NOT NULL,
    canceled_order_count INT NOT NULL,
    sold_amount          INT NOT NULL,
    refund_amount        INT NOT NULL,
    CONSTRAINT UK_REF_DATE_STATS_SALES UNIQUE (reference_date)
);
