create database joins;

use joins;

create table endereco_clientes (
	cliente_id1 int not null,
    cliente_endereco text,
    primary key (cliente_id1)
);

create table clientes (
	cliente_id0 int auto_increment,
    nome varchar(100),
    primary key (cliente_id0)
);

describe endereco_clientes;
describe clientes;
select * from clientes;
select * from endereco_clientes;


insert into clientes values
		(1, "João Marcio"),	
        (2, "Juliana"),	
        (3, "João Marcio"),
        (4, "Gabriela"),    
        (6, "Fabio"),    
        (7, "Juliana");   



INSERT INTO endereco_clientes VALUES
	(1, 'Rua Faria lima, Centro, São Paulo'),
    (2, 'Rua Osvaldo Cruz,Campinas, São Paulo'),
    (3, 'Rua Rosana, Sinara, Nova Esperança'),
    (4, 'Av. Bias Fortes, Centro, Brasília'),
    (5, 'Beatles, Santa Cruz, Rio de Janeiro'),
    (6, 'Av. Esquerda, Vila Pinheiro, New York');
    
    
select * from clientes 									 		#selecione tudo da tabela clientes
inner join endereco_clientes 							 		#jutando com a tabela endereco_clientes
on (clientes.cliente_id0) = (endereco_clientes.cliente_id1); 	#onde na tabela (clientes a coluna cliente_id0) for igual a tabela (endereco_clientes na coluna cliente_id1)

select * from clientes
left join endereco_clientes
on (clientes.cliente_id0) = (endereco_clientes.cliente_id1);    
    
select * from clientes
right join endereco_clientes
on (clientes.cliente_id0) = (endereco_clientes.cliente_id1);    

create table clientes_copia select * from clientes; 						#crie a tabela clientes_copia a partir da tabela clientes
create table endereco_clientes_copia select * from endereco_clientes; 		#crie a tabela endereco_clientes_copia a partir da tabela endereco_clientes

create table inner_copia select * from clientes								#cria a tabela inner_copia a partir clientes_copiada tabela clientes
inner join endereco_clientes
on clientes.cliente_id0 = endereco_clientes.cliente_id1;


 SELECT * FROM clientes 													#right join com exclusão
right JOIN endereco_clientes 
ON clientes.cliente_id0 = endereco_clientes.cliente_id1 where 
clientes.cliente_id0 is null;

SELECT * FROM clientes 
left JOIN endereco_clientes 
ON clientes.cliente_id0 = endereco_clientes.cliente_id1 where 
endereco_clientes .cliente_id1 is null;

