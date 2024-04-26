CREATE TABLE shop.shipments
(
    id               BIGINT AUTO_INCREMENT PRIMARY KEY,
    recipient_name   VARCHAR(20) NOT NULL,
    recipient_phone  VARCHAR(20) NOT NULL,
    shipping_address VARCHAR(500) NOT NULL,
    courier_company  ENUM ('CJ_LOGISTICS', 'CU', 'GS_POSTBOX', 'HANJIN', 'KOREA_POST', 'KYUNG_DONG', 'LOGEN', 'LOTTE', 'OTHER') NULL,
    tracking_number  VARCHAR(50) NULL,
    status           ENUM ('PREPARING', 'PROCESSING', 'SHIPPED', 'DELIVERING', 'DELIVERED') NOT NULL,
    reg_date         TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date         TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);
