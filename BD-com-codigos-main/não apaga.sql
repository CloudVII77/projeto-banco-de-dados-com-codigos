create database estoque;

use estoque;

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
    local_armazenamento_fk int not null, foreign key (local_armazenamento_fk) references local_armazenamento(pk)
);

create table alimento(
	pk int not null auto_increment, primary key (pk),
    qtd int not null,
	perecivel decimal(65) not null,
	nome varchar(255) not null,
	estoque_fk int not null , foreign key (estoque_fk) references estoque(pk)
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
    cabecalho varchar(255) not null
);

create table lote(
	pk int not null auto_increment, primary key (pk),
    numercaolote varchar(255) not null
);
