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

-- 1 Fazer uma consulta mostrando todas as reservas de um funcionario. Deve mostrar: idreserva, quarto, nomefuncionario 
select r.id as idreserva, q.numero as quarto, f.nome as nomefuncionario
from reserva as r
join funcionario as f on r.idfuncionario = f.id
join quarto as q on r.fk_id_quarto = q.id
where f.id = [ID_DO_FUNCIONARIO];

-- 2 Fazer uma consulta mostrando todas as reservas de um cliente. Deve mostrar: idreserva, quarto, nomecliente
select r.id as idreserva, q.numero as quarto, c.nome as nomecliente
from reserva as r
join cliente as c on r.idcliente = c.id
join quarto as q on r.fk_id_quarto = q.id
where c.id = [ID_DO_CLIENTE];

-- 3 Fazer uma consulta mostrando todas as reservas da situação pago. Deve mostrar: idreserva, quarto, nomefuncionario, nomecliente e situação
select r.id as idreserva, q.numero as quarto, f.nome as nomefuncionario, c.nome as nomecliente, 'pago' as situacao
from reserva as r
join funcionario as f on r.idfuncionario = f.id
join cliente as c on r.idcliente = c.id
join quarto as q on r.fk_id_quarto = q.id
where r.id in (select fk_id_reserva from reserva_cliente);

-- 4 Fazer uma consulta mostrando todas as reservas da situação pendente. Deve mostrar: idreserva, quarto, nomefuncionario, nomecliente e situação
select r.id as idreserva, q.numero as quarto, f.nome as nomefuncionario, c.nome as nomecliente, 'pendente' as situacao
from reserva as r
join funcionario as f on r.idfuncionario = f.id
join cliente as c on r.idcliente = c.id
join quarto as q on r.fk_id_quarto = q.id
where r.id not in (select fk_id_reserva from reserva_cliente);
