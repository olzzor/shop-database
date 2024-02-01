CREATE TABLE gallery.coupon_product
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    coupon_id  BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    CONSTRAINT FK_COUPON_PRODUCT_COUPON_ID FOREIGN KEY (coupon_id) REFERENCES gallery.coupons (id),
    CONSTRAINT FK_COUPON_PRODUCT_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES gallery.products (id)
);
