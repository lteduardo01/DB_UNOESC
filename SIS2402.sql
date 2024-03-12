CREATE DATABASE SIS2402;

USE SIS2402;

CREATE TABLE CLIENTES (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    DataNascimento DATE,
    SexoGenero VARCHAR(10),
    CEP VARCHAR(10),
    Rua VARCHAR(100),
    Numero VARCHAR(10),
    Bairro VARCHAR(100),
    Cidade VARCHAR(100),
    UF VARCHAR(2),
    Pais VARCHAR(100)
);