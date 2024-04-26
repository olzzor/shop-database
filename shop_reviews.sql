CREATE TABLE shop.reviews
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id         BIGINT NOT NULL,
    order_detail_id BIGINT NOT NULL,
    rating          TINYINT NOT NULL,
    title           VARCHAR(100) NOT NULL,
    content         VARCHAR(1000) NOT NULL,
    is_activate     TINYINT(1) DEFAULT 0 NOT NULL,
    reg_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT UK_REVIEWS_ORDER_DETAIL_ID UNIQUE (order_detail_id),
    CONSTRAINT FK_REVIEWS_USER_ID FOREIGN KEY (user_id) REFERENCES shop.users (id),
    CONSTRAINT FK_REVIEWS_ORDER_DETAIL_ID FOREIGN KEY (order_detail_id) REFERENCES shop.order_details (id)
);
