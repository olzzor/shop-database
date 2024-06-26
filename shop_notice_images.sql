CREATE TABLE shop.notice_images
(
    id        BIGINT AUTO_INCREMENT PRIMARY KEY,
    notice_id BIGINT NOT NULL,
    type      ENUM ('MAIN', 'MODAL', 'SLIDER') NOT NULL,
    file_url  VARCHAR(512) NOT NULL,
    file_key  VARCHAR(512) NOT NULL,
    reg_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_NOTICE_IMAGES_NOTICE_ID FOREIGN KEY (notice_id) REFERENCES shop.notices (id)
);
