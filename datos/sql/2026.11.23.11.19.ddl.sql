create table users(
    id int auto_increment,
    name varchar(30) not null,
    username varchar(30) not null,
    email varchar(255) not null,
    address integer not null,
    phone varchar(15) not null,
    website varchar (255) not null,
    company int not null,

    constraint pk_users primary key(id),
    constraint fk_users_company foreign key()
)COMMENT = "Tabla de usuarios de json Placeholder"


create table posts(
    id int auto_increment,
    title varchar(100) not null,
    body text not null,
    userId int not null,
    
    constraint pk_posts primary key (id),
    constraint fk_posts_users foreign key (userId) references users (id)
)COMMENT = "Tabla de publicaciones de json placeholder"

create table comments(
    postId int not null,
    id int auto_increment,
    name varchar(100) not null,
    email int not null,
    body text not null,

    constraint pk_comments primary key(id),
    constraint fk_comments_posts foreign key (postId) references posts(id)
)COMMENT = "Tabla de comentarios json placeholder"

create table albums(
    userId int not null,
    id int auto_increment,
    title varchar(30),

    constraint pk_albums primary key(id),
    constraint fk_albums_users foreign key (userId) references users(id)
)COMMENT = "Tabla de comentarios json placeholder"