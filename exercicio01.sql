create table tb_cargo (
	id_cargo int not null auto_increment,
    nome_cargo varchar(30),
    departamento varchar(30),
    primary key(id_cargo)
);

create table tb_funcionario (
	id_funcionario int primary key unique not null auto_increment,
    nome_funcionario varchar(30),
    idade int,
    sexo enum ("Masculino", "Feminino"),
    endereco varchar(50),
    telefone varchar(11),
    cpf int,
    salario int (6),
    id_cargo int,
    foreign key (id_cargo) references tb_cargo (id_cargo)
);

select * from tb_cargo;
select * from tb_funcionario;
describe tb_funcionario;

insert into tb_cargo (nome_cargo, departamento)
values ("Analista de Suporte", "TI"),
("Gerente de RH", "RH"),
("Analista de Finanças", "Financeiro"),
("Contador", "Contabilidade"),
("Gerente de Marketing", "Marketing"),
("Marceneiro", "Manutenção"),
("Auxiliar de som", "Audio e Video");



insert into tb_funcionario (nome_funcionario, idade, sexo, endereco, telefone, cpf, salario)
values ("José Francisco", 19, "Masculino", "Rua A", "11948854762", 11178414459, 2000),
	   ("Maria Graça",  22, "Feminino", "Rua B", "11948644842", 84678411455, 2220),
	   ("Antonio Raimundo",  23, "Masculino", "Rua C", "11942224762", 54176411459, 5000),
	   ("Creuza Maria",  23, "Feminino", "Rua D", "11948832162", 21178888479, 1000),
	   ("Claudinei Roberto",  54, "Masculino", "Rua E", "11941244762", 11488411459, 1300),
	   ("Rozenilda Albertino",  43, "Feminino", "Rua F", "11948888862", 77978411459, 4500),
	   ("Silvio Cleitino",  30, "Masculino", "Rua G", "11948853542", 65471011459, 6100),
	   ("Ednilson Gonçalves", 33, "Masculino", "Rua H", "11954154762", 65118411459, 2100),
	   ("Rosangela Gomes",  39, "Feminino", "Rua I", "11911144842", 36978121459, 2400),
	   ("Alan Silveira",  30, "Masculino", "Rua J", "11932124762", 78978413459, 800),
	   ("Laura da Silva",  60, "Feminino", "Rua K", "11998732162", 12378414459, 2300),
	   ("Paulo Gomes",  47, "Masculino", "Rua L", "11965444762", 59178411159, 3200),
	   ("Nilza dos Anjos",  50, "Feminino", "Rua M", "11932188862", 01478161459, 4100),
	   ("Julio de Magalhães",  34, "Masculino", "Rua N", "11935753542", 81778411459, 2000);
       
       select * from tb_funcionario where salario > 2000;
       select * from tb_funcionario where salario > 1000 and salario < 2000;
       select * from tb_funcionario where nome_funcionario like "%c%";