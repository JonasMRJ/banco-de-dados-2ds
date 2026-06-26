-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY,
    nomeCliente TEXT NOT NULL,
    emailCliente TEXT NOT NULL
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY,
    ClienteID INTEGER NOT NULL,
    NomeLivro TEXT NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Inserção de dados na tabela Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES
(1, 'Ana Silva', 'ana@email.com'),
(2, 'Bruno Souza', 'bruno@email.com'),
(3, 'Carla Lima', 'carla@email.com'),
(4, 'Diego Santos', 'diego@email.com'),
(5, 'Eduarda Costa', 'eduarda@email.com');

-- Inserção de dados na tabela Compras
INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES
(1, 1, 'Quarto de Despejo'),
(2, 2, 'Dom Casmurro'),
(3, 3, 'Quarto de Despejo'),
(4, 1, 'Capitães da Areia'),
(5, 4, 'Quarto de Despejo'),
(6, 5, 'O Pequeno Príncipe');

SELECT * FROM Clientes; 
SELECT * FROM Compras;
