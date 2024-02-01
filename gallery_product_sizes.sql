CREATE TABLE gallery.product_sizes
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_id BIGINT NOT NULL,
    size       VARCHAR(50) NOT NULL,
    quantity   INT NOT NULL,
    reg_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_PRODUCT_SIZES_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES gallery.products (id)
);
