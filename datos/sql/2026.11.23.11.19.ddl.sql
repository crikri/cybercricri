create table users(
    id int auto_increment,
    name varchar(30) not null,
    username varchar(30) not null,
    email varchar(255) not null,
    address integer not null,
    phone varchar(15) not null,
    website varchar (255) not null,
    company int not null
)COMMENT = "Tabla de usuarios de json Placeholder"


create table posts(
    id int auto_increment,
    title varchar(100) not null,
    body text not null,
    user id int not null,
    
    constraint pk_posts primary key (id)
    constraint fk_posts_users foreign key (user_id) references users (id)
)COMMENT = "Tabla de publicaciones de json placeholder"