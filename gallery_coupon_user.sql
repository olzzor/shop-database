CREATE TABLE gallery.coupon_user
(
    id        BIGINT AUTO_INCREMENT PRIMARY KEY,
    coupon_id BIGINT NOT NULL,
    user_id   BIGINT NOT NULL,
    CONSTRAINT FK_COUPON_USER_COUPON_ID FOREIGN KEY (coupon_id) REFERENCES gallery.coupons (id),
    CONSTRAINT FK_COUPON_USER_USER_ID FOREIGN KEY (user_id) REFERENCES gallery.users (id)
);
