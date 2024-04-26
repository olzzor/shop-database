CREATE TABLE shop.products
(
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    category_id  BIGINT NOT NULL,
    code         VARCHAR(50) NOT NULL,
    name         VARCHAR(100) NOT NULL,
    detail       VARCHAR(2000) NULL,
    price        INT NOT NULL,
    discount_per INT NOT NULL,
    status       ENUM ('ON_SALE', 'OUT_OF_STOCK', 'TEMP_OUT_OF_STOCK') NOT NULL,
    reg_date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT UK_PRODUCTS_CODE UNIQUE (code),
    CONSTRAINT FK_PRODUCTS_CATEGORY_ID FOREIGN KEY (category_id) REFERENCES shop.categories (id)
);
