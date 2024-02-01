CREATE TABLE gallery.categories
(
    id       BIGINT AUTO_INCREMENT PRIMARY KEY,
    code     VARCHAR(50) NOT NULL,
    name     VARCHAR(50) NOT NULL,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);

INSERT INTO gallery.categories (code, name) VALUES ('tops', 'TOPS');
INSERT INTO gallery.categories (code, name) VALUES ('shirts', 'SHIRTS');
INSERT INTO gallery.categories (code, name) VALUES ('sweats', 'SWEATS');
INSERT INTO gallery.categories (code, name) VALUES ('knits', 'KNITS');
INSERT INTO gallery.categories (code, name) VALUES ('pants', 'PANTS');
INSERT INTO gallery.categories (code, name) VALUES ('jeans', 'JEANS');
INSERT INTO gallery.categories (code, name) VALUES ('skirts', 'SKIRTS');
INSERT INTO gallery.categories (code, name) VALUES ('outer', 'OUTER');
INSERT INTO gallery.categories (code, name) VALUES ('headwear', 'HEADWEAR');
INSERT INTO gallery.categories (code, name) VALUES ('footwear', 'FOOTWEAR');
INSERT INTO gallery.categories (code, name) VALUES ('accessories', 'ACCESSORIES');
