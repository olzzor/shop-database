CREATE TABLE shop.product_images
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_id    BIGINT NOT NULL,
    file_url      VARCHAR(512) NOT NULL,
    file_key      VARCHAR(512) NOT NULL,
    display_order INT(10) NOT NULL,
    reg_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_PRODUCT_IMAGES_PRODUCT_ID FOREIGN KEY (product_id) REFERENCES shop.products (id)
);
