create database estoque_alimentos;

use estoque_alimentos;

create table local_armazenamento(
	pk int not null auto_increment, primary key (pk),
    nome varchar(255) not null,
	prateleira varchar(255) not null,
	freezer varchar(255) not null,
	geladeira varchar(255) not null
);

create table estoque(
	pk int not null auto_increment, primary key (pk),
    capacidade int not null,
    pedido_fk int not null, foreign key (pedido_fk) references pedido(pk)
);

create table alimento(
	pk int not null auto_increment, primary key (pk),
    qtd int not null,
	perecivel decimal(65) not null,
	nome varchar(255) not null,
	estoque_fk int not null , foreign key (estoque_fk) references estoque(pk),
    lote_fk int not null , foreign key (lote_fk) references lote(pk),
    local_armazenamento_fk int not null , foreign key (local_armazenamento_fk) references local_armazenamento(pk)
);

create table detalhe_pedido(
	pk int not null auto_increment, primary key (pk),
    nome varchar(255) not null,
    qtd int not null,
	valorbase int not null,
    valortotal int not null
);

create table pedido(
	pk int not null auto_increment, primary key (pk),
    cabecalho varchar(255) not null,
    detalhe_pedido_fk int not null , foreign key (detalhe_pedido_fk) references detalhe_pedido (pk)
);

create table lote(
	pk int not null auto_increment, primary key (pk),
    numercao_lote varchar(255) not null
);


