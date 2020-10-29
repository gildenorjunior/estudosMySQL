create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;



create table tb_categoria (
	id_categoria int not null auto_increment,
    nome_categoria varchar(30),
    decricao varchar(30),
    primary key (id_categoria)
);

create table tb_produtos (
	id_produtos int not null auto_increment,
    nome_produto varchar(30),
    codigo_produto int,
    preco decimal,
    marca varchar(30),
    peso decimal,
    foto_produto blob,
    disponibilidade enum ("Disponivel", "Indisponivel"),  
    fk_id_categoria int,
    primary key (id_produtos),
    foreign key (fk_id_categoria) references tb_categoria (id_categoria)
);




insert into tb_categoria (nome_categoria, descricao)
values ("Areia e Pedra","A pronta entrega"),
("Cantoneiras","A pronta entrega"),
("Espaçadores","A pronta entrega"),
("Rejuntes","A pronta entrega"),
("Louças","A pronta entrega"),
("Blocos e Tijolos","A fazer");

insert into tb_produtos (fk_id_categoria, nome_produto, codigo_produto, preco, disponibilidade)
values (1, "Areia Média", 001, 3.39, "Disponivel"),
		(1, "Areia Média Lavada", 001, 4.0, "Indisponivel"),
        (2, "Cantoneira em PVC", 002, 25.49, "Disponivel"),
        (3, "Espaçador para Nivelamento", 003, 26.99, "Disponivel"),
        (4, "Rejunte Flexivel", 004, 18.59, "Disponivel"),
        (4, "Rejunte Acrilico", 004, 27.99, "Indisponivel"),
        (5, "Kit de Bacia Sanitária", 005, 599.99, "Disponivel"),
        (6, "Tijolo Vazado Esmaltado", 006, 26.99, "Indisponivel"),
        (6, "Tijolo Vazado Cobogó", 006, 41.99, "Disponivel"),
        (6, "Bloco Celular", 006, 7.39, "Indisponivel");
        


#alterando o nome de um atributo da tabela
alter table tb_categoria
change decricao descricao varchar(30);




select * from tb_categoria;
select * from tb_produtos;
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco > 3 and preco < 60;
select * from tb_produtos where nome_produto like "%ci%";


#selecionando os produtos por categoria
select * from tb_categoria
inner join tb_produtos
on tb_categoria.id_categoria = tb_produtos.fk_id_categoria;

#selecionando os produtos da categoria
select * from tb_produtos
where fk_id_categoria = 1;