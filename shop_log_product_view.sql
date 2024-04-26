CREATE TABLE shop.log_product_view
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_id BIGINT                                not null,
    user_id    BIGINT                                null,
    viewed_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);
