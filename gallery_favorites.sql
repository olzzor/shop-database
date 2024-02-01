CREATE TABLE gallery.favorites
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id         BIGINT NOT NULL,
    product_id      BIGINT NOT NULL,
    product_size_id BIGINT NOT NULL,
    reg_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_FAVORITES_PRODUCT_SIZE_ID FOREIGN KEY (product_size_id) REFERENCES gallery.product_sizes (id),
    CONSTRAINT FK_FAVORITES_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES gallery.products (id),
    CONSTRAINT FK_FAVORITES_USER_ID FOREIGN KEY (user_id) REFERENCES gallery.users (id)
);
