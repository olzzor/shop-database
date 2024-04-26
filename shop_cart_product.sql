CREATE TABLE shop.cart_product
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    cart_id         BIGINT NOT NULL,
    product_id      BIGINT NOT NULL,
    product_size_id BIGINT NOT NULL,
    quantity        INT NOT NULL,
    coupon_id       BIGINT,
    CONSTRAINT FK_CART_PRODUCT_CART_ID FOREIGN KEY (cart_id) REFERENCES shop.carts (id),
    CONSTRAINT FK_CART_PRODUCT_COUPON_ID FOREIGN KEY (coupon_id) REFERENCES shop.coupons (id),
    CONSTRAINT FK_CART_PRODUCT_PRODUCT_SIZE_ID FOREIGN KEY (product_size_id) REFERENCES shop.product_sizes (id),
    CONSTRAINT FK_CART_PRODUCT_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES shop.products (id)
);
