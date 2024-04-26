CREATE TABLE shop.recently_viewed_products
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id    BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    viewed_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    reg_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_RECENTLY_VIEWED_PRODUCTS_USER_ID FOREIGN KEY (user_id) REFERENCES shop.users (id),
    CONSTRAINT FK_RECENTLY_VIEWED_PRODUCTS_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES shop.products (id)
);