CREATE TABLE gallery.addresses
(
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id      BIGINT NOT NULL,
    name         VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    zip_code     VARCHAR(20) NOT NULL,
    province     VARCHAR(50) NOT NULL,
    city         VARCHAR(50) NOT NULL,
    address1     VARCHAR(100) NOT NULL,
    address2     VARCHAR(100),
    is_apartment TINYINT(1) NOT NULL,
    is_default   TINYINT(1) NOT NULL,
    reg_date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_ADDRESSES_USER_ID FOREIGN KEY (user_id) REFERENCES gallery.users (id)
);
