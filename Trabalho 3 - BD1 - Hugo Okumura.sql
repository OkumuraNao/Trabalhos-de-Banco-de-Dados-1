use Vendas_online;

INSERT INTO clientes(cpf, email, nome) 
VALUES	('74202670060','ale@gmail.com','Alexandre'),
		('84597305068','Raphael@gmail.com','Raphael'),
		('18899087032','pedro@gmail.com','Pedro'),
		('59872124051','Maria@gmail.com','Maria'),
		('64280356009','Lua@gmail.com','Luana'),
		('89463211055','Gui@gmail.com','Guilherme'),
		('38111664095','Ana@gmail.com','Ana'),
		('34059345083','Marcos@gmail.com','Marcos'),
		('43416947070','Gabriela@gmail.com','Gabriela'),
		('73503621024','Wil@gmail.com','Wilson');
        
INSERT INTO enderecos(cpf, cidade, numero, cep)
VALUES	('74202670060','Arez','001','59170971'),
		('84597305068','Maravilha','002','86110970'),
		('18899087032','Campo Mourão','003','87303294'),
		('59872124051','Cacoal','004','76960342'),
		('64280356009','Gurupi','005','77440130'),
		('89463211055','Porto Velho','006','76828630'),
		('38111664095','Rio Branco','007','69917754'),
		('34059345083','Brasília','008','70655736'),
		('43416947070','Feira de Santana','009','44075249'),
		('73503621024','Anápolis','010','75140245');

INSERT INTO vendedores(nome, email, historico_vendas)
VALUES	('Leandro','Lean@gmail.com','700'),
		('Erika','Eri@gmail.com','150'),
		('Ivan','ivan@gmail.com','200'),
		('Eloisa','eloisa@gmail.com','250'),
		('Jhonas','jhon@gmail.com','300'),
		('Juliana','juli@gmail.com','245'),
		('Henrique','henrique@gmail.com','105'),
		('Pamela','pamela@gmail.com','453'),
		('Daniel','daniel@gmail.com','845'),
		('Rachel','rachel@gmail.com','610'),
		('Sergio','sergio@gmail.com','315'),
		('Irene','irene@gmail.com','513'),
		('Paulo','paulo@gmail.com','302'),
		('Regina','regina@gmail.com','900'),
		('Milton','milton@gmail.com','900');

INSERT INTO vendedores_representantes(nome, empresa, cnpj, certificado)
VALUES	('Regina','Toyota','76150881000199','Publicidade e propaganda'),
		('Milton','Toyota','46142713000190','Publicidade e propaganda'),
		('Rachel','Toyota','27577711000180','Marketing '),
		('Jhonas','Lenovo','24812120000151','Marketing '),
		('Irene','Lenovo','74002966000102','Gestão Comercial'),
		('Daniel','Consul','89571205000130','Marketing'),
		('Juliana','Makita','84997760000105','Gestão Comercial'),
		('Paulo','Makita','50268949000145','Publicidade e propaganda'),
		('Pamela','Apple','70450677000107','Gestão Comercial'),
		('Leandro','Apple','31325725000183','Publicidade e propaganda');

INSERT INTO ofertas(nome, desconto, produtos, prazo)
Values	('Regina','20.00','Toyota Hilux 2.8 Tdi Srx Cab. Dupla 4x4 Aut. 4p','2022-01-24'),
		('Rachel','25.00','Toyota Hilux 2.8 STD 4X4 CD 16V DIESEL 4P MANUAL','2021-01-25'),
		('Rachel','20.00','Toyota Hilux Cd Srv A4 Fd','2021-01-25'),
		('Jhonas','30.00','Ideapad Gaming 3i I5-10300h 8gb 256gb Ssd Gtx 1650 Linux','2021-12-31'),
		('Irene','30.00','Notebook Lenovo Ideapad 3 R5-5500u 8gb 256gb Ssd W11 15.6','2021-12-26'),
		('Juliana','50.00','Serra Mármore 4.3/8 1300w Com 2 Discos 4100nh3zx2 Makita','2021-12-17'),
		('Juliana','40.00','Parafusadeira sem fio Makita DF001DW 3.6V azul-turquesa','2021-12-20'),
		('Pamela','20.00','Apple iPhone 13 Pro Max (128 GB) - Dourado','2021-12-30'),
		('Leandro','10.00','Apple iPhone SE (2a geração) 64 GB - Preto','2021-12-11'),
		('Leandro','5.00','Apple iPhone 11 (64 GB) - (PRODUCT)RED','2021-12-12');

INSERT INTO compras(ID, data_realizada, valor, parcelas, cpf_cliente)
VALUES	('001','2021-10-02','190320.00','6','74202670060'),
		('002','2021-11-06','2339.10','4','84597305068'),
		('003','2021-11-12','173.40','1','18899087032'),
		('004','2021-11-13','173.40','1','59872124051'),
		('005','2021-11-20','2339.10','6','64280356009'),
		('006','2021-11-26','131992.50','12','89463211055'),
		('007','2021-11-27','2519.30','2','38111664095'),
		('008','2021-11-27','2519.30','3','34059345083'),
		('009','2021-12-05','39920.99','4','43416947070'),
		('010','2021-12-07','173.40','1','73503621024');

INSERT INTO entregas(ID, codigo_rastreamento, data_prevista, localizacao, destino)
VALUES	('001','100','2021-10-09','','Arez'),
		('002','200','2021-11-13','','Maravilha'),
		('003','300','2021-11-19','','Campo Mourão'),
		('004','400','2021-11-20','','Cacoal'),
		('005','500','2021-11-27','','Gurupi'),
		('006','600','2021-12-03','','Porto Velho'),
		('007','700','2021-12-04','','Rio Branco'),
		('008','800','2021-12-04','','Brasília'),
		('009','900','2021-12-12','','Feira de Santana'),
        ('010','110','2021-12-14','','Anápolis');


INSERT INTO categorias(nome, subcategorias, marca)
VALUES	('Automóveis','Carros','Chevrolet'),
		('Eletrôncos','Televisão','Sony'),
		('Ferramentas','Elétricas','Makita'),
		('Informática','Notebooks','Lenovo'),
		('Eletrodomésticos','Geladeiras','Consul'),
		('Telefones','Celulares','Apple'),
		('Móveis','Sofas','Yescasa'),
		('Cosméticos','Shampoo','Natura'),
		('Brinquedos','Jogos de Mesa','Estrela'),
		('Roupas','Camisas','Adidas');
        
INSERT INTO produtos(nome, preco, descricao, vendedor, categoria)        
VALUES ('Toyota Hilux 2.8 Tdi Srx Cab. Dupla 4x4 Aut. 4p','237900.00',
		'Direção: Hidráulica, Freios ABS, Alarme, AM/FM, Bluetooth, Controle elétrico para os retrovisores',
        'Regina','Automóveis'),
        
       ('Toyota Hilux 2.8 STD 4X4 CD 16V DIESEL 4P MANUAL','175990.00',
       'Direção: Hidráulica, Ar-condicionado, Alarme, Airbag motorista, Controle elétrico para os retrovisores, Airbag para motorista e passageiro',
       'Rachel','Automóveis'),
       
       ('Toyota Hilux Cd Srv A4 Fd','209990.00',
       'Toyota - Hilux Srv 2.8 diesel 4x4 automatica. Ano 2016/2017 Km 128.269 Veiculo de unico dono e so de Brasilia. Possui rodas Aro18 da versao Srx. ',
       'Rachel','Automóveis'), 
       
       ('Ideapad Gaming 3i I5-10300h 8gb 256gb Ssd Gtx 1650 Linux','6047.00',
       'FINO E COMPACTO, CONFORTO E SUGURANÇA AO DIGITAR, TECLAS FUN, PERFEITO PARA SUAS VÍDEO CHAMADAS',
       'Jhonas','Informática'), 
       
       ('Notebook Lenovo Ideapad 3 R5-5500u 8gb 256gb Ssd W11 15.6','3599.00',
       'Lenovo IdeaPad 3 possui design leve e compacto. Com tela Full HD antirreflexo de 15.6',
       'Irene','Informática'), 
       
       ('Serra Mármore 4.3/8 1300w Com 2 Discos 4100nh3zx2 Makita','479.40',
       'A Serra Mármore 4100NH3ZX2 da Makita possui design compacto, 
       que aliado ao baixo peso diminui a fadiga e proporciona ao operador maior conforto mesmo em longos períodos de trabalho',
       'Juliana','Ferramentas'), 
       
       ('Parafusadeira sem fio Makita DF001DW 3.6V azul-turquesa','289.00',
       'Compacta, sem fio, Torque máximo de 6 Nm, Velocidade mínima de rotação : 0 rpm, Velocidade máxima de rotação: 220 rpm',
       'Juliana','Ferramentas'), 
       
       ('Apple iPhone 13 Pro Max (128 GB) - Dourado','9000.00',
       'iPhone 13 Pro Max. O maior upgrade do sistema de câmera Pro até hoje. 
       Tela Super Retina XDR com ProMotion para uma experiência mais rápida e responsiva. 
       Chip A15 Bionic com velocidade impressionante. 5G ultrarrápido1. 
       Design resistente. E a maior duração de bateria em um iPhone2.',
       'Pamela','Telefones'), 
       
       ('Apple iPhone SE (2a geração) 64 GB - Preto','2599.00',
       'O iPhone SE é o iPhone de 4,7 polegadas mais poderoso . 
       Ele vem com o chip A13 Bionic para um desempenho surpreendente em apps, jogos e fotos. 
       Modo Retrato para você fazer fotos com qualidade de estúdio e seis efeitos de iluminação.',
       'Leandro','Telefones'), 
       
       ('Apple iPhone 11 (64 GB) - (PRODUCT)RED','4399.00',
       'Grave vídeos 4K, faça belos retratos e capture paisagens inteiras com o novo sistema de câmera dupla. 
       Tire fotos incríveis com pouca luz usando o modo Noite.
       Veja cores fiéis em fotos, vídeos e jogos na tela Liquid Retina de 6,1 polegadas.',
       'Leandro','Telefones');

INSERT INTO armazens(ID, localizacao, capacidade, qtde_produtos)
VALUES	('1000','São Paulo','1000','600'),
		('2000','São Paulo','1000','700'),
		('3000','São Paulo','1000','800'),
		('4000','João Pessoa','1000','300'),
		('5000','João Pessoa','1000','500'),
		('6000','São Paulo','1000','400'),
		('7000','Rio de Janeiro','1000','600'),
		('8000','São Paulo','1000','700'),
		('9000','Rio de Janeiro','1000','800'),
        ('1100','Rio de Janeiro','1000','250');

INSERT INTO compras_de_produtos(ID, nome)
VALUES	('001','Apple iPhone 11 (64 GB) - (PRODUCT)RED'),
		('001','Parafusadeira sem fio Makita DF001DW 3.6V azul-turquesa'),
		('002','Apple iPhone SE (2a geração) 64 GB - Preto'),
		('003','Parafusadeira sem fio Makita DF001DW 3.6V azul-turquesa'),
		('004','Parafusadeira sem fio Makita DF001DW 3.6V azul-turquesa'),
		('005','Apple iPhone SE (2a geração) 64 GB - Preto'),
		('006','Toyota Hilux 2.8 STD 4X4 CD 16V DIESEL 4P MANUAL'),
		('007','Notebook Lenovo Ideapad 3 R5-5500u 8gb 256gb Ssd W11 15.6'),
		('008','Notebook Lenovo Ideapad 3 R5-5500u 8gb 256gb Ssd W11 15.6'),
		('009','Toyota Hilux 2.8 Tdi Srx Cab. Dupla 4x4 Aut. 4p'),
		('010','Parafusadeira sem fio Makita DF001DW 3.6V azul-turquesa');
        
        
INSERT INTO avalia_compras_vendedores(cliente, vendedor, compra, nota, descricao)
VALUES	('74202670060','Leandro','001','4','Produto veio sem defeito'),        
        ('84597305068','Leandro','002','3','Produto veio sem defeito, mas o atendimento deixou a desejar.'),
        ('18899087032','Paulo','003','2','A entrega não veio com tudo que foi especializado'),
        ('59872124051','Paulo','004','3','O produto em si não é muito bom'),
        ('64280356009','Leandro','005','5','Celular muito bom'),
        ('89463211055','Rachel','006','1','Atendimento horrível'),
        ('38111664095','Irene','007','5','Produto sem defeito'),
        ('34059345083','Irene','008','4','Produto sem defeito'),
        ('43416947070','Paulo','009','3','O produto em si não é muito recomendável'),
        ('73503621024','Paulo','010','3','O produto em si não é muito recomendável');
        
INSERT INTO produtos_armazenados_armazens(nome_produto, ID_armazem)
VALUES  ('Toyota Hilux 2.8 Tdi Srx Cab. Dupla 4x4 Aut. 4p','1000'),
		('Toyota Hilux 2.8 STD 4X4 CD 16V DIESEL 4P MANUAL','2000'),
		('Toyota Hilux Cd Srv A4 Fd','2000'),
		('Ideapad Gaming 3i I5-10300h 8gb 256gb Ssd Gtx 1650 Linux','3000'),
		('Notebook Lenovo Ideapad 3 R5-5500u 8gb 256gb Ssd W11 15.6','4000'),
		('Serra Mármore 4.3/8 1300w Com 2 Discos 4100nh3zx2 Makita','5000'),
		('Parafusadeira sem fio Makita DF001DW 3.6V azul-turquesa','6000'),
		('Apple iPhone 13 Pro Max (128 GB) - Dourado','7000'),
		('Apple iPhone SE (2a geração) 64 GB - Preto','8000'),
        ('Apple iPhone 11 (64 GB) - (PRODUCT)RED','9000');