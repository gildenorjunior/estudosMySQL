create database db_cidade_das_carnes;
use db_cidade_das_carnes;



create table tb_categoria(
	id_categoria int auto_increment not null,
    nome_categoria varchar(30),
    descricao varchar(255),
    primary key (id_categoria)
);

create table tb_produto(
	id_produto int auto_increment not null,
    produto varchar(30), 
    preco decimal,
    marca varchar(30),
    peso decimal,
    quantidade int,
    ativo enum ("Disponivel", "Indisponivel"),
    id_categoria int,
    primary key (id_produto),
	constraint fk_categoria foreign key (id_categoria) references tb_categoria (id_categoria)
);



insert into tb_categoria (nome_categoria, descricao)
values ("Aves", "Aves congeladas"),
		("Bovinos", "Bovinos congelado"),
        ("Suínos", "Suínos congelados"),
        ("Peixes", "Peixes congelados"),
        ("Expeciais", "Iguarias congeladas");
        
insert into tb_produto (id_categoria, produto, preco, marca, peso, quantidade, ativo)
values ("1", "Asa de Frango", 12.00, "Sadia", 1, 10, "Disponivel"),
("1", "Coração de Galinha", 10.00, "Aurora", 1.2, 10, "Disponivel"),
("2", "Alcatra", 10.00, "Sadia", 1.3, 11, "Disponivel"),
("2", "Fígado", 8.00, "Swift", 1.8, 5, "Indisponivel"),
("3", "Costela", 18.00, "Aurora", 2, 2, "Disponivel"),
("3", "Pernil", 15.00, "Seara", 1, 10, "Disponivel"),
("4", "Bacalhau", 20.00, "Sadia", 1.2, 8, "Indisponivel"),
("4", "Salmao", 22.00, "Aurora", 1.1, 10, "Disponivel"),
("5", "Pato", 35.00, "Germania", 2.3, 2, "Disponivel"),
("5", "Cordeiro", 50.00, "Arrais", 3.0, 1, "Disponivel");



#alterando o valo de preco dos produtos
update tb_produto 
set  preco = 70
where produto = "Cordeiro";

update tb_produto
set preco = 55
where produto = "Salmao";





select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco > 50;
select * from tb_produto where preco > 3 and preco < 60;
select * from tb_produto where produto like "%co%";

#Unindo as duas tabelas e extraindo todos os produtos por sua respectiva categoria 
select tb_produto.produto, tb_categoria.nome_categoria from tb_produto
inner join tb_categoria
on tb_produto.id_categoria = tb_categoria.id_categoria