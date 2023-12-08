create table gallery.review_images
(
    id            bigint auto_increment
        primary key,
    review_id     bigint                                not null,
    file_path     varchar(100)                          not null,
    file_name     varchar(100)                          not null,
    display_order int                                   not null,
    reg_date      timestamp default current_timestamp() not null,
    mod_date      timestamp default current_timestamp() not null,
    constraint FK3aayo5bjciyemf3bvvt987hkr
        foreign key (review_id) references gallery.reviews (id)
);

