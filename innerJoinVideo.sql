use db_estoque;

#select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
#inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id
#where tb_marcas.nome like "%Nike%" and tb_produtos.preco < 50
#and tb_produtos.nome = "Meias"

select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id
where tb_produtos.nome = "Meias"
or tb_produtos.nome = "Tenis"