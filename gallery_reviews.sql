CREATE TABLE gallery.reviews
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id       BIGINT NOT NULL,
    order_id      BIGINT NOT NULL,
    rating        TINYINT NOT NULL,
    title         VARCHAR(100) NOT NULL,
    content       VARCHAR(1000) NOT NULL,
    activate_flag TINYINT(1) DEFAULT 0 NOT NULL,
    reg_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT UK_REVIEWS_ORDER_ID UNIQUE (order_id),
    CONSTRAINT FK_REVIEWS_USER_ID FOREIGN KEY (user_id) REFERENCES gallery.users (id),
    CONSTRAINT FK_REVIEWS_ORDER_ID FOREIGN KEY (order_id) REFERENCES gallery.orders (id)
);
