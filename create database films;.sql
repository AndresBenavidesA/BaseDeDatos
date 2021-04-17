create database films;

use films;

create table profile(
    profile_id int not null,
    name varchar(500),
    primary key(profile_id)
    );

create table gender(
    gender_id int not null,
    name varchar(500),
    primary key (gender_id)
);   

create table movie(
    movie_id int not null auto_increment,
    name varchar (500) not null,
    description longtext,
    image varchar(500) not null,
    create_at datetime not null,
    release_date date,
    actors varchar (500),
    gender_id int not null,
    rating int,
    primary key (movie_id),
    foreign key (gender_id) REFERENCES gender(gender_id)
);

create table users(
    users_id int not null auto_increment,
    name varchar(500) not null,
    email varchar(100) not null,
    password varchar (500) not null,
    create_at datetime not null,
    profile_id int not null,
    primary key(users_id),
    foreign key(profile_id) references profile(profile_id),
    UNIQUE (email)
);

insert into gender (gender_id, name) VALUES (1, 'Acción');
insert into gender (gender_id, name) VALUES (2, 'Comedia');
insert into gender (gender_id, name) VALUES (3, 'Drama');
insert into gender (gender_id, name) VALUES (4, 'Terror');


insert into profile (profile_id, name) values (1, 'Administrador');
insert into profile (profile_id, name) values (2, 'Cliente');

insert into users (users_id, name, email, create_at, password, profile_id )
    values (1, 'Andrres', 'andres@gmail.com', now(), '123456', 1 );