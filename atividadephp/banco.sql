create database linktree;
use linktree;

create table usuario (
idU int primary key auto_increment,
nomeU varchar(200),
senha varchar(45),
foto varchar(1000)
);

create table links(
idL int primary key auto_increment,
nomeL varchar(45),
link varchar(400),
idU int,
foreign key (idU) references usuario (idU)
);

insert into usuario (nomeU, senha, foto)
values ("Mara Luiza", "marinha123", "https://yt3.googleusercontent.com/GvW2u9d_HbCJFWJG2oSYftiwo7qo7gYrkjX0YVbIUvtN7DaAsrvDyQ4CxVBTXqlOGhxeKRqMgg=s160-c-k-c0x00ffffff-no-rj"),
("João Victor", "Jv123", "https://yt3.googleusercontent.com/ytc/AIdro_kVxzDx5w1Tg1K70Hg69uvvhVBQKYRVfNpQyrsxaGiuCrk=s160-c-k-c0x00ffffff-no-rj");

insert into links (nomeL, link, idU)
values ("YouTube", "https://www.youtube.com/@MoonKase", 1),
("Instagram", "https://www.instagram.com/moonkase", 1),
("YouTube", "https://www.youtube.com/@jvnq", 2),
("Instagram", "https://www.instagram.com/jvnq", 2);