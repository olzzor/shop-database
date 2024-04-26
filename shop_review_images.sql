CREATE TABLE shop.review_images
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    review_id     BIGINT NOT NULL,
    file_url      VARCHAR(512) NOT NULL,
    file_key      VARCHAR(512) NOT NULL,
    display_order INT NOT NULL,
    reg_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_REVIEW_IMAGES_REVIEW_ID FOREIGN KEY (review_id) REFERENCES shop.reviews (id)
);
