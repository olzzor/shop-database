create table gallery.notice_images
(
    id        bigint auto_increment
        primary key,
    notice_id bigint                                not null,
    type      enum ('MAIN', 'MODAL', 'SLIDER')      not null,
    file_name varchar(100)                          not null,
    file_path varchar(100)                          not null,
    reg_date  timestamp default current_timestamp() not null,
    mod_date  timestamp default current_timestamp() not null,
    constraint FKiqbbja0q8mlwc8nfd2gyhrux4
        foreign key (notice_id) references gallery.notices (id)
);

