create table platziblog.usuarios (
	idUsuario int not null auto_increment,
    username varchar(20) not null,
    password varchar(20) not null,
    email varchar(30) not null unique,
    primary key(idUsuario)
);

create table platziblog.categorias (
	idCategoria int not null auto_increment, 
    nombre varchar(30),
    primary key(idCategoria)
);

create table platziblog.posts (
	idPost int not null auto_increment,
    idUsuario int not null,
    titulo varchar(30),
    contenido text,
    fechaPublicacion datetime,
    estatus char(8) default "activo",
    primary key(idPost),
    foreign key(idUsuario) references usuarios(idUsuario) on update no action on delete no action
);

create table platziblog.comentarios (
	idComentario int not null auto_increment,
    idUsuario int not null,
    idPost int not null,
    contenido text,
    fechaPublicacion datetime,
    primary key(idComentario),
    foreign key(idUsuario) references usuarios(idUsuario) on update no action on delete no action,
    foreign key(idPost) references posts(idPost) on update no action on delete no action
);

create table platziblog.posts_categorias (
	idPostCategoria int not null auto_increment,
    idPost int not null,
    idCategoria int not null,
    primary key (idPostCategoria),
    foreign key(idPost) references posts(idPost) on update no action on delete no action,
    foreign key(idCategoria) references categorias(idCategoria) on update no action on delete no action
);