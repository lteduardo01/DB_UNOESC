CREATE TABLE Categoria (
    Categoria_ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Tipo_Localidade (
    Tipo_Localidade_ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Tipo_Negocio (
    Tipo_Negocio_ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Imovel (
    Imovel_ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Valor DECIMAL(18,2),
    Nro_Comodos INT,
    Categoria_ID INT,
    Tipo_Localidade_ID INT,
    Tipo_Negocio_ID INT,
    FOREIGN KEY (Categoria_ID) REFERENCES Categoria(Categoria_ID),
    FOREIGN KEY (Tipo_Localidade_ID) REFERENCES Tipo_Localidade(Tipo_Localidade_ID),
    FOREIGN KEY (Tipo_Negocio_ID) REFERENCES Tipo_Negocio(Tipo_Negocio_ID)
);

CREATE TABLE Imagem (
    Imagem_ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Caminho VARCHAR(255) NOT NULL,
    Imovel_ID INT,
    FOREIGN KEY (Imovel_ID) REFERENCES Imovel(Imovel_ID)
);
