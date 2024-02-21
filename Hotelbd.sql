create database Hotelbd;

use hotelbd;

create table cliente(
id int primary key auto_increment,
nome varchar(60) not null,
email varchar(50) not null,
fone int not null
);

create table quarto(
id int primary key auto_increment,
numero int not null,
tipo varchar(15) not null,
valor numeric(6,2) not null
);

create table funcionario(
id int primary key auto_increment,
nome varchar(50) not null,
função varchar(20) not null
);

create table reserva(
id int primary key auto_increment,
idcliente int not null,
idfuncionario int not null,
fk_id_quarto int not null,
foreign key (fk_id_quarto) references quarto(id)
);

create table funcionario_quarto(
fk_id_funcionario int not null,
fk_id_quarto int not null,
foreign key (fk_id_funcionario) references funcionario(id),
foreign key (fk_id_quarto) references quarto(id)
);

create table cliente_quarto(
fk_id_cliente int not null,
fk_id_quarto int not null,
foreign key (fk_id_cliente) references cliente(id) ,
foreign key (fk_id_quarto) references quarto(id)
);

create table reserva_cliente(
fk_id_cliente int not null,
fk_id_reserva int not null,
foreign key (fk_id_cliente) references cliente(id) ,
foreign key (fk_id_reserva) references reserva(id)
);