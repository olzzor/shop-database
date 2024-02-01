CREATE TABLE gallery.notices
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    type            ENUM ('ALERT', 'COMMUNITY', 'INFORMATION', 'MAINTENANCE', 'PROMOTION') NOT NULL,
    title           VARCHAR(100) NOT NULL,
    content         VARCHAR(10000) NOT NULL,
    status          ENUM ('ACTIVE', 'DELETED', 'EXPIRED', 'INACTIVE') NOT NULL,
    is_slider_image TINYINT(1) DEFAULT 0 NOT NULL,
    is_modal_image  TINYINT(1) DEFAULT 0 NOT NULL,
    reg_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);
