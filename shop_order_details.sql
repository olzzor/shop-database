CREATE TABLE shop.order_details
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id        BIGINT NOT NULL,
    product_id      BIGINT NOT NULL,
    product_size_id BIGINT NOT NULL,
    shipment_id     BIGINT NOT NULL,
    coupon_id       BIGINT NULL,
    quantity        INT NOT NULL,
    unit_price      INT NOT NULL,
    discount_per    INT NOT NULL,
    final_price     INT NOT NULL,
    reg_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_ORDER_DETAILS_ORDER_ID FOREIGN KEY (order_id) REFERENCES shop.orders (id),
    CONSTRAINT FK_ORDER_DETAILS_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES shop.products (id),
    CONSTRAINT FK_ORDER_DETAILS_PRODUCT_SIZE_ID FOREIGN KEY (product_size_id) REFERENCES shop.product_sizes (id),
    CONSTRAINT FK_ORDER_DETAILS_SHIPMENT_ID FOREIGN KEY (shipment_id) REFERENCES shop.shipments (id),
    CONSTRAINT FK_ORDER_DETAILS_COUPON_ID FOREIGN KEY (coupon_id) REFERENCES shop.coupons (id)
);
