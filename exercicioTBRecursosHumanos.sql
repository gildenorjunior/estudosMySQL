create database db_recursoshumanos;

use db_recursoshumanos;

create table tb_funcionarios (
	id_funcionario bigint auto_increment not null,
    nome varchar(30) not null,
    departamento varchar(30),
    cargo varchar(30),
    salario int(6),
    primary key (id_funcionario)
);

select * from tb_funcionarios;

insert into tb_funcionarios (nome, departamento, cargo, salario)
values ("José", "TI", "Analista de Suporte", 2000);

insert into tb_funcionarios (nome, departamento, cargo, salario)
values ("Maria", "TI", "UX", 3500);

insert into tb_funcionarios (nome, departamento, cargo, salario)
values ("Julia", "Recursos Humanos", "Pagamentos", 3500);

insert into tb_funcionarios (nome, departamento, cargo, salario)
values ("Pedro", "TI", "Estagiário", 800);

insert into tb_funcionarios (nome, departamento, cargo, salario)
values ("Junior", "TI", "Gerente de TI", 9000);

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios
set salario = 1000
where nome = "Pedro";

select * from tb_funcionarios where nome like "%pedro%";
