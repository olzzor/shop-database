CREATE TABLE gallery.stats_sales_category
(
    id                   BIGINT AUTO_INCREMENT PRIMARY KEY,
    reference_date       DATE NOT NULL,
    category_id          BIGINT NOT NULL,
    sold_order_count     INT NOT NULL,
    canceled_order_count INT NOT NULL,
    sold_amount          INT NOT NULL,
    refund_amount        INT NOT NULL,
    CONSTRAINT FK_CATEGORY_ID FOREIGN KEY (category_id) REFERENCES gallery.categories (id)
);
