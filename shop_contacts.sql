CREATE TABLE shop.contacts
(
    id             BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id        BIGINT,
    inquirer_name  VARCHAR(50) NOT NULL,
    inquirer_email VARCHAR(50) NOT NULL,
    order_number   VARCHAR(50),
    type           ENUM ('EXCHANGE_RETURN_REFUND', 'ORDER_PAYMENT', 'OTHER', 'PARTNERSHIP', 'PRICE_PROMOTION', 'PRIVACY', 'PRODUCT_INFO', 'SHIPPING') NOT NULL,
    title          VARCHAR(100) NOT NULL,
    content        VARCHAR(5000) NOT NULL,
    status         ENUM ('ANSWERED', 'CLOSED', 'UNANSWERED') NOT NULL,
    ref            BIGINT NOT NULL,
    step           INT NOT NULL,
    reg_date       TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date       TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_CONTACTS_USER_ID FOREIGN KEY (user_id) REFERENCES shop.users (id)
);
