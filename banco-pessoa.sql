CREATE TABLE produtos(
	id_produto INT PRIMARY KEY,
  	nome_produto VARCHAR(100) NOT NULL,
  	preco_por_kg DECIMAL(10, 2) NOT NULL,
  	descricao_produto TEXT
);

SELECT * FROM produtos;
