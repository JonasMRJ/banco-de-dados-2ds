CREATE TABLE jogador (
    id_jogador INT PRIMARY KEY,
    nome VARCHAR(50),
    status_jogador VARCHAR(10),
    anos_inativo INT
);

CREATE TABLE biblioteca (
    id_jogo INT PRIMARY KEY,
    nome_jogo VARCHAR(50),
    genero VARCHAR(30),
    id_jogador INT,
    FOREIGN KEY (id_jogador) REFERENCES jogador(id_jogador)
);

INSERT INTO jogador VALUES
(1, 'Carlos', 'premium', 0),
(2, 'Amanda', 'free', 3),
(3, 'Bruno', 'free', 0),
(4, 'Danielle', 'premium', 4),
(5, 'Lucas', 'free', 1);

INSERT INTO biblioteca VALUES
(101, 'Minecraft', 'Sandbox', 1),
(102, 'GTA V', 'Ação', 1),
(103, 'League of Legends', 'MOBA', 2),
(104, 'Valorant', 'FPS', 3),
(105, 'Counter-Strike 2', 'FPS', 3),
(106, 'The Witcher 3', 'RPG', NULL),
(107, 'Cyberpunk 2077', 'RPG', NULL),
(108, 'Elden Ring', 'RPG', 5),
(109, 'Fortnite', 'Battle Royale', 5),
(110, 'Roblox', 'Sandbox', 5);

SELECT * FROM jogador;

SELECT nome_jogo, genero FROM biblioteca;

UPDATE jogador SET status_jogador = 'premium' WHERE id_jogador = 1;
