CREATE TABLE shop.coupon_category
(
    id          BIGINT AUTO_INCREMENT PRIMARY KEY,
    coupon_id   BIGINT NOT NULL,
    category_id BIGINT NOT NULL,
    CONSTRAINT FK_COUPON_CATEGORY_CATEGORY_ID FOREIGN KEY (category_id) REFERENCES shop.categories (id),
    CONSTRAINT FK_COUPON_CATEGORY_COUPON_ID FOREIGN KEY (coupon_id) REFERENCES shop.coupons (id)
);
