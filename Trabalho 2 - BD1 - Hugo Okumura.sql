DROP database IF EXISTS Vendas_online;
create database Vendas_online;
use Vendas_online;

DROP TABLE IF EXISTS Vendem_para_Clientes;
DROP TABLE IF EXISTS Avalia_Compra_Vendedores;
DROP TABLE IF EXISTS produtos_armazenados_armazens;
DROP TABLE IF EXISTS produtos_pertencem_categorias;
DROP TABLE IF EXISTS compras_de_produtos;
DROP TABLE IF EXISTS entregas;
DROP TABLE IF EXISTS ofertas;
DROP TABLE IF EXISTS vende_representante;
DROP TABLE IF EXISTS enderecos;
DROP TABLE IF EXISTS vendedores;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS compras;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS armazens;

CREATE TABLE Clientes(
	cpf char(11),
    email varchar(100),
    nome varchar(100),
    PRIMARY KEY(cpf)
);

CREATE TABLE Vendedores(
	nome varchar(100),
    email varchar(100),
    histórico_vendas integer,
    PRIMARY KEY(nome)
);

CREATE TABLE Vende_Representante(
	nome varchar(100),
	empresa varchar(100),
    cnpj char(4),
    certificado varchar(200),
    FOREIGN KEY(nome) REFERENCES Vendedores(nome) ON DELETE CASCADE,
    PRIMARY KEY(nome)
);

CREATE TABLE Compras(
	ID integer ,
    data_realizada date,
    valor decimal(10,2),
    parcelas integer,
    cpf_cliente char(11),
    FOREIGN KEY(cpf_cliente) REFERENCES Clientes(cpf), 
    PRIMARY KEY(ID)
);

CREATE TABLE Produtos(
	nome varchar(100),
    preco decimal(10,2),
    descricao text(500),
    PRIMARY KEY(nome)
);

CREATE TABLE Armazens(
	ID integer,
    localizacao varchar(100),
    capacidade integer,
    qtde_produtos integer,
    PRIMARY KEY(ID)
);

CREATE TABLE Categorias(
	nome varchar(100),
    subcategorias varchar(100),
    marca varchar(100),
    PRIMARY KEY(nome)
);

CREATE TABLE Enderecos(
	cpf char(11),
    cidade varchar(100),
    numero integer,
    cep char(8),
    logradouro varchar(100),
    FOREIGN KEY(cpf) REFERENCES Clientes(cpf) ON DELETE CASCADE,
    PRIMARY KEY(cpf, logradouro)
);

CREATE TABLE Entregas(
	ID integer,
    codigo_rastreamento integer,
    data_prevista date,
    localizacao varchar(100),
    destino varchar(100),
    FOREIGN KEY(ID) REFERENCES Compras(ID) ON DELETE CASCADE,
    PRIMARY KEY(ID, Codigo_rastreamento)
);

CREATE TABLE Ofertas(
	nome varchar(100),
    desconto integer,
    produtos varchar(100),
    prazo date,
    FOREIGN KEY(nome) REFERENCES Vende_Representante(nome) ON DELETE CASCADE,
    PRIMARY KEY(nome, produtos)
);

CREATE TABLE Compras_De_Produtos(
	ID integer,
    nome varchar(100),
    FOREIGN KEY(ID) REFERENCES Compras(ID),
    FOREIGN KEY(nome) REFERENCES Produtos(nome),
    PRIMARY KEY(ID, nome)
);

CREATE TABLE Produtos_Pertencem_Categorias(
	nome_produto varchar(100),
    nome_categorias varchar(100),
	FOREIGN KEY(nome_produto) REFERENCES Produtos(nome),
    FOREIGN KEY(nome_categorias) REFERENCES Categorias(nome),
    PRIMARY KEY(nome_categorias, nome_produto)
);

CREATE TABLE Produtos_Armazenados_Armazens(
	nome_produto varchar(100),
    ID_armazem integer,
	FOREIGN KEY(nome_produto) REFERENCES Produtos(nome),
    FOREIGN KEY(ID_armazem) REFERENCES Armazens(ID),
    PRIMARY KEY(nome_produto, ID_armazem)
);

CREATE TABLE Vendem_para_Clientes(
	nome_vendedor varchar(100),
    cpf_cliente char(11),
    ID_compra integer,
    PRIMARY KEY(nome_vendedor, cpf_cliente, ID_compra),
    FOREIGN KEY(nome_vendedor) REFERENCES Vendedores(nome),
    FOREIGN KEY(cpf_cliente) REFERENCES Clientes(cpf),
    FOREIGN KEY(ID_compra) REFERENCES Compras(ID)
);

CREATE TABLE Avalia_Compra_Vendedores(
    cpf_cliente char(11),
    nome_vendedor varchar(100),
    ID_compra integer,
    nota integer,
    descricao text(500),
    PRIMARY KEY(cpf_cliente, nome_vendedor, ID_compra),
    FOREIGN KEY(cpf_cliente) REFERENCES Clientes(cpf),
	FOREIGN KEY(nome_vendedor) REFERENCES Vendedores(nome),
	FOREIGN KEY(ID_compra) REFERENCES Compras(ID)
);

