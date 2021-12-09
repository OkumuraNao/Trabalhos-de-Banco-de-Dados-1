DROP database IF EXISTS Vendas_online;
create database Vendas_online;
use Vendas_online;

DROP TABLE IF EXISTS Produtos_Armazenados_Armazens;
DROP TABLE IF EXISTS Avalia_Compras_Vendedores;
DROP TABLE IF EXISTS Vendem_para_Clientes;
DROP TABLE IF EXISTS Compras_De_Produtos;
DROP TABLE IF EXISTS Armazens;
DROP TABLE IF EXISTS Produtos;
DROP TABLE IF EXISTS Ofertas;
DROP TABLE IF EXISTS Entregas;
DROP TABLE IF EXISTS Categorias;
DROP TABLE IF EXISTS Enderecos;
DROP TABLE IF EXISTS Compras;
DROP TABLE IF EXISTS Vendedores_Representantes;
DROP TABLE IF EXISTS Vendedores;
DROP TABLE IF EXISTS Clientes;

CREATE TABLE Clientes(
	cpf char(11),
    email varchar(100),
    nome varchar(100),
    PRIMARY KEY(cpf)
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

CREATE TABLE Vendedores(
	nome varchar(100),
    email varchar(100),
    histórico_vendas integer,
    PRIMARY KEY(nome)
);

CREATE TABLE Vendedores_Representantes(
	nome varchar(100),
	empresa varchar(100),
    cnpj char(4),
    certificado varchar(200),
    FOREIGN KEY(nome) REFERENCES Vendedores(nome) ON DELETE CASCADE,
    PRIMARY KEY(nome)
);

CREATE TABLE Ofertas(
	nome varchar(100),
    desconto integer,
    produtos varchar(100),
    prazo date,
    FOREIGN KEY(nome) REFERENCES Vendedores_Representantes(nome) ON DELETE CASCADE,
    PRIMARY KEY(nome, produtos)
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

CREATE TABLE Entregas(
	ID integer,
    codigo_rastreamento integer,
    data_prevista date,
    localizacao varchar(100),
    destino varchar(100),
    FOREIGN KEY(ID) REFERENCES Compras(ID) ON DELETE CASCADE,
    PRIMARY KEY(ID, Codigo_rastreamento)
);

CREATE TABLE Categorias(
	nome varchar(100),
    subcategorias varchar(100),
    marca varchar(100),
    PRIMARY KEY(nome)
);

CREATE TABLE Produtos(
	nome varchar(100),
    preco decimal(10,2),
    descricao text(500),
    vendedor char(100),
    categoria char(100),
    
    FOREIGN KEY(vendedor) REFERENCES Vendedores(nome),
    FOREIGN KEY(categoria) REFERENCES Categorias(nome),
    PRIMARY KEY(nome)
);

CREATE TABLE Armazens(
	ID integer,
    localizacao varchar(100),
    capacidade integer,
    qtde_produtos integer,
    PRIMARY KEY(ID)
);

CREATE TABLE Compras_De_Produtos(
	ID integer,
    nome varchar(100),
    FOREIGN KEY(ID) REFERENCES Compras(ID),
    FOREIGN KEY(nome) REFERENCES Produtos(nome),
    PRIMARY KEY(ID, nome)
);

CREATE TABLE Vendem_para_Clientes(
	nome_vendedor varchar(100),
    cpf_cliente char(11),

    PRIMARY KEY(nome_vendedor, cpf_cliente),
    FOREIGN KEY(nome_vendedor) REFERENCES Vendedores(nome),
    FOREIGN KEY(cpf_cliente) REFERENCES Clientes(cpf)
);

CREATE TABLE Avalia_Compras_Vendedores(
    cliente char(11),
    vendedor varchar(100),
    compra integer,
    nota integer,
    descricao text(500),
    PRIMARY KEY(cliente, vendedor, compra),
    FOREIGN KEY(cliente) REFERENCES Clientes(cpf),
	FOREIGN KEY(vendedor) REFERENCES Vendedores(nome),
	FOREIGN KEY(compra) REFERENCES Compras(ID)
);

CREATE TABLE Produtos_Armazenados_Armazens(
	nome_produto varchar(100),
    ID_armazem integer,
	FOREIGN KEY(nome_produto) REFERENCES Produtos(nome),
    FOREIGN KEY(ID_armazem) REFERENCES Armazens(ID),
    PRIMARY KEY(nome_produto, ID_armazem)
);
