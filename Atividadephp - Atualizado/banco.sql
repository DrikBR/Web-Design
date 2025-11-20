create database linktree;
use linktree;
#drop database linktree;

create table usuario (
idU int primary key auto_increment,
nomeU varchar(200),
senha varchar(45),
foto varchar(1000),
frase varchar(200),
instagram varchar(40)
);

create table links(
idL int primary key auto_increment,
nomeL varchar(45),
link varchar(400),

idU int,
foreign key (idU) references usuario (idU)
);

create table configuracao (
idC int primary key auto_increment,
cor_fonte varchar(7),
cor_fundo varchar(7),

idU int,
foreign key (idU) references usuario (idU)
);

insert into usuario (nomeU, senha, foto, frase, instagram)
values ("Mara Luiza", "mara123", "https://yt3.googleusercontent.com/GvW2u9d_HbCJFWJG2oSYftiwo7qo7gYrkjX0YVbIUvtN7DaAsrvDyQ4CxVBTXqlOGhxeKRqMgg=s160-c-k-c0x00ffffff-no-rj", "E aí, pessoal! O vento soprou e a moonkase chegou", "@moonkase"),
("João Victor", "Jv123", "https://yt3.googleusercontent.com/ytc/AIdro_kVxzDx5w1Tg1K70Hg69uvvhVBQKYRVfNpQyrsxaGiuCrk=s160-c-k-c0x00ffffff-no-rj", "Eaeglrblzaquiéojv", "@jvnq");

insert into links (nomeL, link, idU)
values ("YouTube", "https://www.youtube.com/@MoonKase", 1),
("Instagram", "https://www.instagram.com/moonkase", 1),
("YouTube", "https://www.youtube.com/@jvnq", 2),
("Instagram", "https://www.instagram.com/jvnq", 2);

insert into configuracao (cor_fonte, cor_fundo, idU)
values ('#000000', '#138ab9', 1),
('#000000', '#008000', 2);