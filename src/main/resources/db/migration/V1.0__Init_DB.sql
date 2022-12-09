create sequence hibernate_sequence start 1 increment 1;

create table orders
(
    id           int8         not null,
    order_number varchar(255) not null,
    amount       int8         not null,
    rate         int8         not null,
    user_address varchar(255) not null,
    network      varchar(255) not null,
    currency     varchar(255) not null,
    user_id      int8         not null,
    is_completed boolean      not null,
    primary key (id)
);

create table user_role
(
    user_id int8 not null,
    roles   varchar(255)
);

create table users
(
    id              int8         not null,
    activation_code varchar(255),
    active          boolean      not null,
    email           varchar(255),
    password        varchar(255) not null,
    username        varchar(255) not null,
    primary key (id)
);

create table wallets
(
    id       int8         not null,
    network  varchar(255) not null,
    currency varchar(255) not null,
    address  varchar(255) not null,
    primary key (id)
);

create table message
(
    id       int8          not null,
    filename varchar(255),
    tag      varchar(255),
    text     varchar(2048) not null,
    user_id  int8,
    primary key (id)
);
