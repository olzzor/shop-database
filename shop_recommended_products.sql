CREATE TABLE shop.recommended_products
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id       BIGINT NOT NULL,
    product_id    BIGINT NOT NULL,
    display_order INT NOT NULL,
    reg_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_RECOMMENDED_PRODUCTS_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES shop.products (id)
);