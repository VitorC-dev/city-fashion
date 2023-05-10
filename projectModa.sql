/*criando o banco dde dados*/
create database db_moda;

/*usando  o banco de dados db_moda*/
use db_moda;

/*criando as tabelas db_moda*/
create table tbl_Cliente(
cod_cli int primary key auto_increment,
nome varchar(20),
sexo char,
telefone varchar(20),
email varchar(50)
);

create table tbl_ModaInfantil(
cod_inf int primary key auto_increment,
nome_prod varchar(80),
qtd int,
categoria varchar(20),
preco_custo decimal(10,2)
);

create table tbl_ModaMasc(
cod_masc int primary key auto_increment,
nome_prod varchar(80),
qtd int,
categoria varchar(20),
preco_custo decimal(10,2)
);

create table tbl_ModaFemini(
cod_fem int primary key auto_increment,
nome_prod varchar(80),
qtd int,
categoria varchar(20),
preco_custo decimal(10,2)
);

create table tbl_Vendas(
cod_vend int primary key auto_increment,
nome_prod varchar(80),
qtd int,
categoria varchar(20),
preco_custo decimal(10,2),
cod_cli int,
foreign key(cod_cli) references tbl_CLIENTE(cod_cli)
);

/*inserindo as informações na tabela cliente*/
insert into tbl_Cliente(nome, sexo, telefone, email)values('Ricardo Molinari', 'H', '(11) 98756-6763', 'marinari@yahoo.com.br');
insert into tbl_Cliente(nome, sexo, telefone, email)values('Mariana Lima', 'M', '(11) 91356-4546', 'marina@outlook.com');
insert into tbl_Cliente(nome, sexo, telefone, email)values('Diane Nguyen', 'M', '(11) 97758-9533', 'dianengyuen@hotmail.com');
insert into tbl_Cliente(nome, sexo, telefone, email)values('Lucas Vilarim', 'H', '(11) 94629-1194', 'vilarimdev@gmail.com');
insert into tbl_Cliente(nome, sexo, telefone, email)values('Vitor Cruz', 'H', '(11) 92187-8424', 'vitorc@gmail.com');
insert into tbl_Cliente(nome, sexo, telefone, email)values('Wellington Cidde', 'H', '(11) 98718-5633', 'wellcity@hotmail.com');
insert into tbl_Cliente(nome, sexo, telefone, email)values('Joana Silva', 'M', '(11) 98753-6900', 'josilva@outlook.com');
insert into tbl_Cliente(nome, sexo, telefone, email)values('Emilly Oliveira', 'M', '(11) 97652-2134', 'emmyoliv@gmail.com');
insert into tbl_Cliente(nome, sexo, telefone, email)values('William Samuel', 'H', '(11) 93455-7860', 'billysammy@yahoo.com');
insert into tbl_Cliente(nome, sexo, telefone, email)values('Olivia Palito', 'M', '(11) 98346-3479', 'oliviapalitinho@outlook.com');

/*inserindo as informações na tabela moda infatil*/
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Camiseta regata vermelha', '60', 'camiseta', '59.90');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Camiseta branca', '145', 'camisa', '59.90');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Moletom cinza unissex', '3', 'moletom', '85.90');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Calça Jeans', '100', 'calça', '140.00');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Calça Moletom Verde', '89', 'moletom', '45.90');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Camisa preta', '45', 'camisa', '69.90');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Moletom Rosa', '95', 'moletom', '179.99');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Short violeta', '10', 'short', '99.90');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Short azul', '65', 'short', '95.90');
insert into tbl_ModaInfantil(nome_prod, qtd, categoria, preco_custo)values('Conjunto Recém Nascido', '130', 'conjunto', '199.48');

/*inserindo as informações na tabela moda Masculina*/
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('Camisa social preta', '95', 'camisa social', '159.90');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('Camisa social azul marinho', '145', 'camisa social', '159.90');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('camisa polo rosa', '15', 'camisa polo', '100.00');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('Calça social lisa', '100', 'calça social', '149.99');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('Calça de sarja slim', '89', 'calça de sarja', '139.39');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('Sapatenis', '45', 'calçados', '259.90');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('Sapato Social', '245', 'calçados', '289.99');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('tênis esportivo', '110', 'calçados', '299.90');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('calça social azul', '65', 'calça social', '155.40');
insert into tbl_ModaMasc(nome_prod, qtd, categoria, preco_custo)values('Terno Masculino Fino De Três Peças', '130', 'conjunto', '181.40');

/*inserindo as informações na tabela moda Feminina*/
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Casaco le lis Clarissa II Tricot', '105', 'casaco', '259.90');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Vestido com cinto bloco de cores meio zíper', '145', 'vestidos', '189.90');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Vestido com cinto impressão total manga de borboleta', '99', 'vestidos', '100.00');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Saia Mullet Midi Verde Musgo', '100', 'saia', '149.99');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Jaqueta Couro', '98', 'jaqueta', '139.39');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Salto alto', '45', 'calçados', '259.90');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Sandália', '245', 'calçados', '289.99');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Meia-calça rosa', '150', 'meia', '299.90');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('mini saia preta', '65', 'mini saia', '155.40');
insert into tbl_ModaFemini(nome_prod, qtd, categoria, preco_custo)values('Calça Jeans', '130', 'calça', '199.40');

/*inserindo as informações na tabela vendas*/
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Calça Jeans', '130', 'calça', '199.40','1');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('mini saia preta', '130', 'mini saia', '199.40','1');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Salto alto', '130', 'calçados', '199.40','8');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Conjunto Recém Nascido', '130', 'conjunto', '199.40','6');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Terno Masculino Fino De Três Peças', '130', 'conjunto', '199.40','5');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Camiseta Meninas Super-Poderosas', '130', 'camisa', '199.40','9');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Camisa social preta', '130', 'camisa social', '199.40','9');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Saia Mullet Midi Verde Musgo', '130', 'saia', '199.40','7');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Vestido com cinto impressão total manga de borboleta', '130', 'vestido', '199.40','2');
insert into tbl_Vendas(nome_prod, qtd, categoria, preco_custo, cod_cli)values('Moletom Meninas Super-Poderosas', '130', 'moletom', '199.40','10');

select * from tbl_Cliente;
select * from tbl_ModaInfantil;
select * from tbl_ModaMasc;
select * from tbl_ModaFemini;
select * from tbl_Vendas;
select * from tbl_Estoque;

drop table tbl_ModaFemini;

/*fazendo atualizações nas tabelas*/
update tbl_Cliente
Set nome = 'Ricardo Marinari'
Where cod_cli = 1;

update tbl_Cliente
Set nome = 'Wellington Cidade'
Where cod_cli = 6;



update tbl_ModaInfantil
Set qtd = '29'
Where cod_inf = 3;

update tbl_ModaInfantil
set categoria = 'camisa'
where cod_inf = 1;



update tbl_ModaFemini
set qtd = '12'
where cod_fem = '10';

update tbl_ModaFemini
set nome_prod = 'Mini saia preta'
where cod_fem = 9;

/*utilizando o inner join*/
select * from tbl_Cliente
inner join tbl_ModaInfantil
on tbl_Cliente.cod_cli = tbl_ModaInfantil.cod_inf;

select * from tbl_Cliente
inner join tbl_ModaMasc
on tbl_Cliente.cod_cli = tbl_ModaMasc.cod_masc;

select * from tbl_Cliente
inner join tbl_ModaFemini
on tbl_Cliente.cod_cli = tbl_ModaFemini.cod_fem;

select * from tbl_Cliente
inner join tbl_Vendas
on tbl_Cliente.cod_cli = tbl_Vendas.cod_vend;

/*select monster city*/
select * from tbl_Cliente
inner join tbl_ModaMasc
on tbl_Cliente.cod_cli = tbl_ModaMasc.cod_masc;

