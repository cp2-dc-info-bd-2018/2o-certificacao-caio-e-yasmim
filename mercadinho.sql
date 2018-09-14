use mercadinho;


Create table mercado (
id int,
endereco varchar (100)
primary key (id)
);

Create table Produto (
codigo int,
nome varchar (100),
preco float,
qtd int
primary key (codigo)
);

Create table Venda (
id int,
data date,
hora time,
cliente int
primary key (id)
);

Create table cliente (
id int,
endereco varchar (100),
cpf varchar(11),
email varchar (50),
telefone varchar (9),
nome varchar (100)
primary key (id)
);

Create table caixa (
id int,
nome varchar (100),
cpf varchar(11),
endereco varchar (100),
email varchar (50)
primary key (id)
);

Create table gerente (
id int,
nome varchar (100),
cpf varchar(11),
endereco varchar(100),
telefone varchar (9),
email varchar (50)
primary key (id)
);

Create table sessao (
id int,
qtd int
primary key (id)
);

Create table transporte (
id int,
data_entrega date,
hora_inicio time,
hora_termino time,
destino varchar (50)
primary key(id)
);

Create table sessao_produto (
idsessao int,
codigoproduto int,
foreign key (idsessao) references sessao(id),
foreign key (codigoproduto) references produto(codigo)
);

Create table transporte_produto (
idtransporte int,
codigoproduto int,
foreign key (idtransporte) references transporte (id),
foreign key (codigoproduto) references produto(codigo)
);

Create table produto_venda (
codigoproduto int,
idvenda int,
foreign key (codigoproduto) references produto(codigo),
foreign key (idvenda) references venda(id)
);

Create table cliente_venda (
idcliente int,
idvenda int,
foreign key (idcliente) references cliente (id),
foreign key (idvenda) references venda(id)
);

Create table produto_cliente (
codigoproduto int,
idcliente int,
foreign key (codigoproduto) references produto(codigo),
foreign key (idcliente) references cliente (id)
);