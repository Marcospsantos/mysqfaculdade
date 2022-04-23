CREATE DATABASE IF NOT EXISTS sanduiche;
use sanduiche;
Create table if not exists sanduiche.cliente(
	idCliente int,
	nomecliente varchar (45) not null,
	telefoneCliente varchar (45),
	enderecoLogradouro varchar (45),
	enderecoBairro varchar (45),
	enderecoNumero varchar (45),
	primary key (idCliente)
);
create table if not exists sanduiche.cardapio(
	idCardapio int,
	produtos varchar (45) not null,
	valor decimal (2,2),
	primary key (idCardapio)
);
create table sanduiche.itens_pedido(
	idItens_pedido int,
	idCardapio int,
	dataPedido date,
	primary key (idItens_pedido),
	foreign key (idCardapio) references sanduiche.cardapio(idCardapio)
);
create table if not exists sanduiche.statusp(
	idStatus int,
	em_preparacao int,
	em_entrega int,
	entregue int,
	primary key (idStatus)
);
create table if not exists sanduiche.entregador(
	idEntregador int,
	nomeEntregador varchar (45),
	telefoneEntregador varchar (45),
	primary key (idEntregador)
);
create table if not exists sanduiche.pedido(
	idPedido int,
	dataPedido date,
	idCliente int,
	idItens_pedido int,
	idStatus int,
	idEntregador int,
	primary key (idPedido),
	foreign key (idCliente) references sanduiche.cliente(idCliente),
	foreign key (idItens_pedido) references sanduiche.itens_pedido(idItens_pedido),
	foreign key (idStatus) references sanduiche.statusp(idStatus),
	foreign key (idEntregador) references sanduiche.entregador(idEntregador)
);


INSERT INTO cliente
(idCliente, nomecliente, telefone, enderecoLogradouro, enderecoBairro, enderecoNumero)
VALUES(1, 'marcos', '51998788', 'Rua de Cima', 'cajuru', '344');
INSERT INTO cardapio (idCardapio, produtos, valor)
 VALUES(1, 'sanduba', 12,11);
INSERT INTO entregador (idEntregador, nomeEntregador, telefoneEntregador) 
VALUES(2, 'jovino', '4566666');
INSERT INTO itens_pedido (idItens_pedido, idCardapio, dataPedido) VALUES(1, 0, 'null');
INSERT INTO statusp (idStatus, em_preparacao, em_entrega, entregue) VALUES(null, 1, null, null);





