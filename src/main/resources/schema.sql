drop table if exists authorities;
drop table if exists users;

create table users (
    id serial primary key,
    username varchar(50) not null unique,
    email varchar(100) unique,
    password varchar(60) not null,
    enabled boolean not null
);

create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    foreign key (username) references users (username),
    unique (username, authority)
);
