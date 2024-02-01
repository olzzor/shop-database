CREATE TABLE gallery.review_images
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    review_id     BIGINT NOT NULL,
    file_path     VARCHAR(100) NOT NULL,
    file_name     VARCHAR(100) NOT NULL,
    display_order INT NOT NULL,
    reg_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    CONSTRAINT FK_REVIEW_IMAGES_REVIEW_ID FOREIGN KEY (review_id) REFERENCES gallery.reviews (id)
);
