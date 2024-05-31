CREATE TABLE shop.wishlists
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id         BIGINT NOT NULL,
    product_id      BIGINT NOT NULL,
    product_size_id BIGINT NOT NULL,
    reg_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_WISHLISTS_USER_ID FOREIGN KEY (user_id) REFERENCES shop.users (id),
    CONSTRAINT FK_WISHLISTS_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES shop.products (id),
    CONSTRAINT FK_WISHLISTS_PRODUCT_SIZE_ID FOREIGN KEY (product_size_id) REFERENCES shop.product_sizes (id)
);
