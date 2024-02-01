CREATE TABLE gallery.orders
(
    id             BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id        BIGINT NOT NULL,
    order_number   VARCHAR(50) NOT NULL,
    buyer_email    VARCHAR(50) NOT NULL,
    payment_method VARCHAR(10) NOT NULL,
    payment_amount INT NOT NULL,
    card_number    VARCHAR(16) NULL,
    status         ENUM ('CANCEL_COMPLETED', 'CANCEL_REQUESTED', 'ORDER_CONFIRMED', 'ORDER_FINALIZED', 'ORDER_RECEIVED', 'SHIPMENT_PREPARING') NOT NULL,
    reg_date       TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date       TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_ORDERS_USER_ID FOREIGN KEY (user_id) REFERENCES gallery.users (id)
);