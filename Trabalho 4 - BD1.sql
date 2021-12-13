use vendas_online;


/* 1. Nome dos clientes que compraram um produto especifico*/
SELECT C.nome
FROM clientes C
WHERE C.cpf IN ( SELECT P.cpf
				 FROM compras P
                 WHERE P.ID IN ( SELECT PP.ID
								 FROM compras_de_produtos PP
								 WHERE PP.nome IN ( SELECT I.nome
													FROM produtos I
                                                    WHERE I.nome = 'Apple iPhone SE (2a geração) 64 GB - Preto')));
                                                    
/* 2. Nome dos vendedores que tiveram uma nota maior que Rachel na avaliação */                                                    
SELECT DISTINCT V.vendedor
FROM avalia_compras_vendedores V
WHERE V.nota > ANY ( SELECT A.nota
					 FROM avalia_compras_vendedores A
                     WHERE A.vendedor = 'Rachel');
           
/* 3. Representantes que tem certificados em Marketing ou em Gestão*/           
SELECT ALL V.nome, R.certificado
FROM vendedores V, vendedores_representantes R
WHERE V.nome = R.nome
AND R.certificado = 'Marketing' 
UNION
SELECT V2.nome, R2.certificado 
FROM vendedores V2, vendedores_representantes R2
WHERE V2.nome = R2.nome
AND R2.certificado = 'Gestão Comercial';

/* 4. A compra com o maior valor no mes de novembro de 2021*/
SELECT  P.ID, P.valor
FROM compras P
WHERE P.valor = ( SELECT MAX(P2.valor)
				  FROM compras P2
				  WHERE P2.data_realizada BETWEEN '2021-10-31'AND '2021-12-01');
                     
/* 5. Vendedores que vendem produtos na categoria ferramentas*/
SELECT DISTINCT P.vendedor, P.nome
FROM produtos P
WHERE P.nome IN(SELECT PC.produto
				FROM produtos_pertencem_categorias PC
                WHERE PC.categorias ='Ferramentas');

/* 6. Nome dos vendedores que não tiveram nenhuma avaliação */
SELECT V.nome 
FROM vendedores V
WHERE NOT EXISTS( SELECT *
				  FROM avalia_compras_vendedores A
                  WHERE A.vendedor = V.nome);

/* 7. Nome dos produtos que estão na categoria Automóveis e estão armazenados no armazem 2000*/
SELECT P.nome
FROM produtos P
WHERE P.nome IN (SELECT C.produto
				 FROM produtos_pertencem_categorias C
                 WHERE C.categorias = 'Automóveis')
AND P.nome IN (SELECT A.produto
			   FROM produtos_armazenados_armazens A
               WHERE A.armazem = '2000');

/* 8. Nome dos clientes que fizeram a compra com o código de entrega = 100 ou 200*/
SELECT C.nome, E.codigo_rastreamento
FROM clientes C, entregas E, compras P
WHERE C.cpf = P.cpf
AND E.ID = P.ID
AND E.codigo_rastreamento = '100'
UNION
SELECT C2.nome, E2.codigo_rastreamento
FROM clientes C2, entregas E2, compras P2
WHERE C2.cpf = P2.cpf
AND E2.ID = P2.ID
AND E2.codigo_rastreamento = '200';

/* 9. O cpf dos clientes que não compraram o produto específico*/
SELECT DISTINCT P.cpf
FROM compras P, compras_de_produtos PP, produtos I
WHERE P.ID = PP.ID
AND PP.nome NOT IN (SELECT PP2.nome
					FROM compras P2, compras_de_produtos PP2, produtos I2
                    WHERE P2.ID = PP2.ID
                    AND I2.nome = PP2.nome	
                    AND PP2.nome = 'Apple iPhone 11 (64 GB) - (PRODUCT)RED');

/* 10. Vendedores que já tiveram alguma avaliação ou Vendedores que venderam mais que 600 produtos*/
SELECT DISTINCT V.nome, V.historico_vendas
FROM vendedores V, avalia_compras_vendedores A
WHERE V.nome = A.vendedor
AND A.nota > '3'
UNION
SELECT V2.nome, V2.historico_vendas
FROM vendedores V2
WHERE V2.historico_vendas > '600';

