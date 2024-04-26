CREATE TABLE shop.categories
(
    id       BIGINT AUTO_INCREMENT PRIMARY KEY,
    code     VARCHAR(50) NOT NULL,
    code_ref VARCHAR(50),
    name     VARCHAR(50) NOT NULL,
    slug     VARCHAR(50) NOT NULL,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    mod_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);

INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (100, 100, 'OUTER', 'outer');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (200, NULL, 'TOP', 'top');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (201, 200, 'KNITWEAR', 'knitwear');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (202, 200, 'SHIRTS', 'shirts');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (203, 200, 'POLO SHIRTS', 'polo-shirts');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (204, 200, 'LONG SLEAVE', 'long-sleave');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (205, 200, 'HALF SLEAVE', 'half-sleave');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (206, 200, 'VEST', 'vest');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (300, NULL, 'BOTTOM', 'bottom');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (301, 300, 'DENIM', 'denim');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (302, 300, 'PANTS', 'pants');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (303, 300, 'SHORTS', 'shorts');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (400, NULL, 'ACCESSORIES', 'accessories');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (401, 400, 'CAP', 'cap');
INSERT INTO shop.categories (code, code_ref, name, slug) VALUES (402, 400, 'BAG', 'bag');
