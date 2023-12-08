create table gallery.notices
(
    id              bigint auto_increment
        primary key,
    type            enum ('ALERT', 'COMMUNITY', 'INFORMATION', 'MAINTENANCE', 'PROMOTION') not null,
    title           varchar(100)                                                           not null,
    content         varchar(10000)                                                         not null,
    status          enum ('ACTIVE', 'DELETED', 'EXPIRED', 'INACTIVE')                      not null,
    is_slider_image tinyint(1) default 0                                                   not null,
    is_modal_image  tinyint(1) default 0                                                   not null,
    reg_date        timestamp  default current_timestamp()                                 not null,
    mod_date        timestamp  default current_timestamp()                                 not null
);

