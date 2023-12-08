create table gallery.users
(
    id            bigint auto_increment
        primary key,
    email         varchar(50)                                            not null,
    password      varchar(100)                                           null,
    name          varchar(20)                                            null,
    phone_number  varchar(20)                                            null,
    auth_provider enum ('LOCAL', 'KAKAO', 'NAVER', 'GOOGLE', 'FACEBOOK') null,
    social_id     varchar(100)                                           null,
    admin_flag    tinyint(1) default 0                                   not null,
    activate_flag tinyint(1) default 1                                   not null,
    reg_date      timestamp  default current_timestamp()                 not null,
    mod_date      timestamp  default current_timestamp()                 not null
);

