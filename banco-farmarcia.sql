-- Criação da tabela FARMACIA
CREATE TABLE FARMACIA (
    CNPJ_farmacia VARCHAR(14) PRIMARY KEY,
    nome_farmacia VARCHAR(255),
    tel_farmacia VARCHAR(15),
    end_farmacia VARCHAR(255)
);

-- Criação da tabela PRODUTO
CREATE TABLE PRODUTO (
    cod_produto INT PRIMARY KEY,
    qtd_produto INT,
    valor_produto DECIMAL(10, 2),
    CNPJ_farmacia VARCHAR(14),
    FOREIGN KEY (CNPJ_farmacia) REFERENCES FARMACIA(CNPJ_farmacia)
);

-- Criação da tabela FARMACEUTICO
CREATE TABLE FARMACEUTICO (
    RG_farmaceutico VARCHAR(15) PRIMARY KEY,
    nome_farmaceutico VARCHAR(255),
    CNPJ_farmacia VARCHAR(14),
    FOREIGN KEY (CNPJ_farmacia) REFERENCES FARMACIA(CNPJ_farmacia)
);
