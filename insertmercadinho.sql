use mercadinho;

select * from sessao_produto;


insert into mercado (id,endereco) values
(1, 'rua bababa'),
(2, 'rua bububu'),
(3, 'rua bebebe');

insert into produto (codigo, nome, preco, qtd) values
(1, 'batata', 0.80, 2),
(2, 'amendoim', 0.50,4),
(3, 'maca', 2.00, 5);

insert into venda (id, data, hora, cliente) values
(1, '11-12-10','15:00', '1'),
(2, '10-11-12','12:00', '2'),
(3, '9-7-8', '13:00', '3');

insert into cliente (id, endereco,cpf,email,telefone,nome) values
(1,'rua sasasa', '12345678910', 'yasmeclins@gmail.com', '972922008', 'Yasmim Lins de Oliveira Silva'),
(2, 'rua sususu', '32165487910', 'santoscaiovascaino@gmail.com', '996368747', 'Caio dos Santos Nunes Sena Castro'),
(3, 'rua sisisi', '23156497810', 'glaucialins@hotmail.com', '995003013', 'Claudiano Piuba Glaybson');

insert into caixa (id,nome,cpf,endereco,email) values 
(1, 'Anderson Portugal', '55533377710','rua lololo', 'caiosantosvascaino__@hotmail.com'),
(2, 'Mario Romario', '33355577710', 'rua lululu', 'Marioromario22@hotmail.com'),
(3, 'Luigi Armario', '22211188810', 'rua lilili', 'LuigiArmario24@hotmail.com');

insert into gerente (id,nome,cpf,endereco,telefone,email) values
(1, 'Claudiano Piuba', '44422134510','rua kakaka','999999999','Claudianopiubaglaybson@hotmail.com');


insert into sessao (id, qtd) values
(1, 10); 

insert into transporte ( id, data_entrega, hora_inicio, hora_termino, destino) values

(1, '8-3-12', '8:00', '12:00', 'Infinito e além'),
(2, '3-12-8', '12:00', '15:00', 'Céu'),
(3, '5-11-7', '15:00', '18:00', 'Bar');

insert into sessao_produto (idsessao,codigoproduto) values
(1,'2'),
(1,'3');

insert into transporte_produto (idtransporte,codigoproduto) values 
(1,'2'),
(3,'2');

insert into produto_venda (codigoproduto, idvenda) values
(1,'2'),
(3,'2');

insert into cliente_venda (idcliente, idvenda) values
(1,'2'),
(3,'1');

insert into produto_cliente (codigoproduto, idcliente) values
(1,'2'),
(1,'3');
