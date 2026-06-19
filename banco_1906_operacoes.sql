-- Criação da tabelado banco de dados
CREATE TABLE Clientes (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    cidade VARCHAR(50),
    status VARCHAR(20)
);

-- Inserção de dados na tabela
INSERT INTO Clientes VALUES
(1, 'Ana', 25, 'Curitiba', 'Ativo'),
(2, 'Bruno', 32, 'Londrina', 'Ativo'),
(3, 'Carla', 29, 'Maringá', 'Inativo'),
(4, 'Diego', 40, 'Curitiba', 'Ativo'),
(5, 'Elisa', 22, 'Maringá', 'Ativo');

SELECT * FROM Clientes;

SELECT nome, idade FROM Clientes; 

SELECT DISTINCT cidade FROM Clientes; 

SELECT nome FROM Clientes WHERE cidade = 'Curitiba'; 

SELECT nome FROM Clientes WHERE nome LIKE 'C%'; 

SELECT cidade FROM Clientes;

SELECT nome FROM Clientes WHERE idade BETWEEN 30 AND 40;

SELECT nome FROM Clientes WHERE cidade = 'Maringá' AND status = 'Ativo'; 

UPDATE Clientes SET idade = idade + 1 WHERE status = 'Ativo';
SELECT * FROM Clientes;

UPDATE Clientes SET status = 'Ativo' WHERE nome = 'Carla'; 
SELECT * FROM Clientes;

UPDATE Clientes SET idade = idade * 2 WHERE nome = 'Elisa';
SELECT * FROM Clientes;

DELETE FROM Clientes WHERE cidade = 'Londrina';
SELECT * FROM Clientes;

SELECT nome, cidade FROM Clientes WHERE status = 'Ativo';
