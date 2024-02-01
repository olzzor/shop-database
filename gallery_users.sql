CREATE TABLE gallery.users
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    email         VARCHAR(50) NOT NULL,
    password      VARCHAR(100) NULL,
    name          VARCHAR(20) NULL,
    phone_number  VARCHAR(20) NULL,
    auth_provider ENUM('LOCAL', 'KAKAO', 'NAVER', 'GOOGLE', 'FACEBOOK') NULL,
    social_id     VARCHAR(100) NULL,
    admin_flag    TINYINT(1) DEFAULT 0 NOT NULL,
    activate_flag TINYINT(1) DEFAULT 1 NOT NULL,
    reg_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);
