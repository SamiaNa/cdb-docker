use computer-database-db;

drop table if exists user;

create table user (
    id                        bigint not null auto_increment,
    username                  varchar(255),
    password                  varchar(255),
    role                      varchar(255),
    constraint pk_user primary key (id)
);


insert into user (username, password, role) values ('user', 'user', 'USER');
insert into user (username, password, role) values ('admin', 'admin', 'ADMIN');
insert into user (username, password, role) values ('badmin', '$2a$11$Wu479YusJrRwRkX2FTKvSOAkqwRG9T44BhZsex64zEwzIYQyCI38q', 'ADMIN');
