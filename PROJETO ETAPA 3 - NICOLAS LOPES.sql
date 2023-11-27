
CREATE DATABASE projetinho2;

USE projetinho2;

-- Tabela 'Regioes'
CREATE TABLE Regioes (
    id int identity primary key,
    nome varchar(30),
);

-- Tabela 'PontosEstrategicos'
CREATE TABLE PontosEstrategicos (
    id int identity primary key, 
    nome varchar(30),
    id_regiao int, 
    FOREIGN KEY (id_regiao) REFERENCES Regioes (id)
);

--Tabela 'Vendedores'
CREATE TABLE Vendedores (
    id int identity primary key, 
    nome varchar(30),
    id_regiao int, 
    FOREIGN KEY (id_regiao) REFERENCES Regioes (id)
);


-- Tabela 'Veiculos'
CREATE TABLE Veiculos (
    id int identity primary key, 
    placa varchar(10),
    tipo varchar(20),
);


-- Tabela Guarita
CREATE TABLE Guarita (
    id int identity primary key, 
    id_vendedor int, 
    id_veiculo int, 
    data_guarita date,
    FOREIGN KEY (id_vendedor) REFERENCES Vendedores (id),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos (id)
);


--Tabela 'Clientes'
CREATE TABLE Clientes (
    id int identity primary key, 
    nome varchar(30),
);


--Tabela 'NotasFiscais'
CREATE TABLE NotasFiscais (
    id int identity primary key, 
    id_vendedor int, 
    id_cliente int, 
    qtdVendida int,
    data_nota date,
    FOREIGN KEY (id_vendedor) REFERENCES Vendedores (id),
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id)
);


--Tabela 'Produtos'
CREATE TABLE Produtos (
    id int identity primary key,
    nome varchar(30),
    desc_produto varchar(50),
    preco float,
    qtdEstoque int,
);


-- Tabela 'ItensNotaFiscal'
CREATE TABLE ItensNotaFiscal (
    id int identity primary key, 
    id_produto int, 
    id_nota int, 
    FOREIGN KEY (id_produto) REFERENCES Produtos (id),
    FOREIGN KEY (id_nota) REFERENCES NotasFiscais (id)
);


-- INSERT NAS TABELAS

-- insert na tabela 'Regioes'
INSERT INTO Regioes (nome) VALUES ('Região 1');
INSERT INTO Regioes (nome) VALUES ('Região 2');
INSERT INTO Regioes (nome) VALUES ('Região 3');
INSERT INTO Regioes (nome) VALUES ('Região 4');
INSERT INTO Regioes (nome) VALUES ('Região 5');


-- insert na tabela 'PontosEstrategicos'
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('Ibirapuera', 1);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('Itaquera', 2);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('Shopping Maia', 3);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('ETEC de Esportes', 4);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('ETEC Zona Leste', 5);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('Usain Bolt', 1);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('tome', 2);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('shopping  Suzano', 3);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('Parque do carmo', 4);
INSERT INTO PontosEstrategicos (nome, id_regiao) VALUES ('Hopi Hari', 5);


-- Insert na tabela 'Vendedores'
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Nicolas', 1);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Pedro', 2);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Marcelo Carequinha', 3);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Miguel', 4);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Carlos Carequinha', 5);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Thiago cu raspado', 1);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Fernando', 2);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Okunem pisca', 3);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('titako Avara', 4);
INSERT INTO Vendedores (nome, id_Regiao) VALUES ('Cocielo', 5);


-- insert na tabela 'Veiculos'
INSERT INTO Veiculos (placa, tipo) VALUES ('BOL-1285', 'carro');
INSERT INTO Veiculos (placa, tipo) VALUES ('SUV-5347', 'carro');
INSERT INTO Veiculos (placa, tipo) VALUES ('UIV-6145', 'ultilitário');
INSERT INTO Veiculos (placa, tipo) VALUES ('JUS-5478', 'moto');
INSERT INTO Veiculos (placa, tipo) VALUES ('GRT-4568', 'moto');
INSERT INTO Veiculos (placa, tipo) VALUES ('BRL-1285', 'carro');
INSERT INTO Veiculos (placa, tipo) VALUES ('BRA-5347', 'carro');
INSERT INTO Veiculos (placa, tipo) VALUES ('ARG-6145', 'ultilitário');
INSERT INTO Veiculos (placa, tipo) VALUES ('EQU-5478', 'moto');
INSERT INTO Veiculos (placa, tipo) VALUES ('OCU-4568', 'moto');

-- insert na tabela 'VigiaVeiculo'
INSERT INTO Guarita (id_vendedor, id_veiculo, data_guarita) VALUES (1, 1, '2005-10-03');
INSERT INTO Guarita(id_vendedor, id_veiculo, data_guarita) VALUES (2, 2, '2005-05-30');
INSERT INTO Guarita (id_vendedor, id_veiculo, data_guarita) VALUES (3, 3, '2005-04-21');
INSERT INTO Guarita (id_vendedor, id_veiculo, data_guarita) VALUES (4, 4, '2005-09-11');
INSERT INTO Guarita (id_vendedor, id_veiculo, data_guarita) VALUES (5, 5, '2005-12-25');
INSERT INTO Guarita (id_vendedor, id_veiculo, data_guarita) VALUES (6,6, '2005-10-03');
INSERT INTO Guarita(id_vendedor, id_veiculo, data_guarita) VALUES (7, 7, '2005-05-30');
INSERT INTO Guarita (id_vendedor, id_veiculo, data_guarita) VALUES (8, 8, '2005-04-21');
INSERT INTO Guarita (id_vendedor, id_veiculo, data_guarita) VALUES (9, 9, '2005-09-11');
INSERT INTO Guarita (id_vendedor, id_veiculo, data_guarita) VALUES (10, 10, '2005-12-25');


-- insert na tabela 'Clientes'
INSERT INTO Clientes (nome) VALUES ('jalambipal');
INSERT INTO Clientes (nome) VALUES ('takoku grande');
INSERT INTO Clientes (nome) VALUES ('jacinto leite');
INSERT INTO Clientes (nome) VALUES ('he mo hoida');
INSERT INTO Clientes (nome) VALUES ('Rogério');
INSERT INTO Clientes (nome) VALUES ('vent');
INSERT INTO Clientes (nome) VALUES ('trindade');
INSERT INTO Clientes (nome) VALUES ('karpz');
INSERT INTO Clientes (nome) VALUES ('bryna');
INSERT INTO Clientes (nome) VALUES ('Pitoca');


--insert na tabela 'NotasFiscais'
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (1, 1, 5, '2023-12-04');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (2, 2, 15, '2023-07-10');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (3, 3, 2, '2023-04-28');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (4, 4, 2, '2023-09-22');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (5, 5, 3, '2023-12-28');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (6, 6, 8, '2023-12-08');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (7, 7, 4, '2023-05-30');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (8, 8, 20, '2023-09-28');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (9, 9, 15, '2023-11-22');
INSERT INTO NotasFiscais (id_vendedor, id_cliente, qtdVendida, data_nota) VALUES (5, 5, 8, '2023-01-28');


-- insert na tabela 'Produtos'
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Borracha', 20.00, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Celular', 850.00, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Sabolete niquido', 22.90, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Creme', 30.20, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Desodorante', 30.10, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Bomba', 20.40, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Libdgel', 50.48, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Shampoo', 58.78, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Giz verde', 63.85, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Cannabis', 46.65, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Chip Oi', 50.48, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('chip claro', 58.78, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES ('Giz amarelo', 63.85, 100);
INSERT INTO Produtos (nome, preco, qtdEstoque) VALUES (' tv lg', 46.65, 100);



-- insert na tabela 'ItensNotaFiscal'
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (1, 1);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (2, 2);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (3, 3);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (4, 4);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (5, 5);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (6, 6);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (7, 7);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (8, 8);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (9, 9);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (10, 10);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (1, 1);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (2, 8);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (3, 9);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (4, 10);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (2, 2);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (3, 3);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (4, 4);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (5, 5);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (6, 6);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (2, 2);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (3, 3);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (4, 4);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (5, 5);
INSERT INTO ItensNotaFiscal (id_produto, id_nota) VALUES (6, 6);


-- Cconsultando:

-- A - Listar todos os pontos estratégicos de cada região.
SELECT r.nome as Regiao, pe.nome as PontoEstrategico
FROM Regioes r
JOIN PontosEstrategicos pe ON r.id = pe.id_regiao;

-- B - Listar os nomes das regiões cadastradas.
SELECT nome FROM Regioes;
 
 --c NÃO FIZ PQ NÃO CONSEGUI

-- D - Listar todos os vendedores responsáveis por cada região.
SELECT r.nome as Regiao, v.nome as Vendedor
FROM Regioes r
JOIN Vendedores v ON r.id = v.id_regiao;

-- E - Todos os produtos vendidos por um determinado vendedor.
SELECT v.nome as Vendedor, p.nome as Produto
FROM Vendedores v
JOIN NotasFiscais nf ON v.id = nf.id_vendedor
JOIN ItensNotaFiscal inf ON nf.id = inf.id_nota
JOIN Produtos p ON inf.id_produto = p.id
WHERE v.nome = 'Marcelo Carequinha'; 

-- F - Todos os vendedores que venderam um determinado produto.
SELECT v.nome as Vendedor, p.nome as Produto
FROM Vendedores v
JOIN NotasFiscais nf ON v.id = nf.id_vendedor
JOIN ItensNotaFiscal inf ON nf.id = inf.id_nota
JOIN Produtos p ON inf.id_produto = p.id
WHERE p.nome = 'Libdgel'; 

-- G - Todos os produtos que ainda não foram vendidos.
SELECT p.nome as Produto
FROM Produtos p
LEFT JOIN ItensNotaFiscal inf ON p.id = inf.id_produto
WHERE inf.id_produto IS NULL;

-- H - Listar o histórico de utilização de um determinado veículo.
SELECT ve.placa, ve.tipo, vv.data_guarita, v.nome as Vendedor
FROM Veiculos ve
JOIN Guarita vv ON ve.id = vv.id_veiculo
JOIN Vendedores v ON vv.id_vendedor = v.id
WHERE ve.placa = 'BRA-5347'; 

-- I - A quantidade de itens de cada nota fiscal.
SELECT nf.id as NotaFiscal, COUNT(inf.id) as QuantidadeItens
FROM NotasFiscais nf
JOIN ItensNotaFiscal inf ON nf.id = inf.id_nota
GROUP BY nf.id;