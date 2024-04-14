-- Criação da base de dados ORM_MySQL se ainda não existir
CREATE DATABASE IF NOT EXISTS ORM_MySQL;

-- Seleciona a base de dados a ser utilizada
USE ORM_MySQL;

-- Criação da tabela de clientes
CREATE TABLE IF NOT EXISTS Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    cpf VARCHAR(14) NOT NULL
);

-- Criação da tabela de fornecedores
CREATE TABLE IF NOT EXISTS Fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    endereco VARCHAR(200) NOT NULL
);

-- Inserção de 10 registros fictícios na tabela de clientes
INSERT INTO Clientes (nome, telefone, cpf) VALUES
    ('João Silva', '(11) 9999-8888', '123.456.789-00'),
    ('Maria Santos', '(22) 7777-6666', '987.654.321-00'),
    ('Pedro Oliveira', '(33) 5555-4444', '555.555.555-55'),
    ('Ana Souza', '(44) 3333-2222', '111.222.333-44'),
    ('Lucas Pereira', '(55) 1111-0000', '777.888.999-11'),
    ('Juliana Costa', '(66) 8888-7777', '333.222.111-00'),
    ('Mateus Santos', '(77) 4444-3333', '222.333.444-55'),
    ('Carla Lima', '(88) 2222-1111', '999.888.777-66'),
    ('Gustavo Oliveira', '(99) 9999-8888', '444.555.666-33'),
    ('Fernanda Silva', '(00) 7777-6666', '666.777.888-22');

-- Inserção de 10 registros fictícios na tabela de fornecedores
INSERT INTO Fornecedores (nome, telefone, cnpj, endereco) VALUES
    ('Empresa A', '(11) 2222-3333', '12.345.678/0001-00', 'Rua A, 123'),
    ('Empresa B', '(22) 3333-4444', '23.456.789/0001-11', 'Av. B, 456'),
    ('Empresa C', '(33) 4444-5555', '34.567.890/0001-22', 'Rua C, 789'),
    ('Empresa D', '(44) 5555-6666', '45.678.901/0001-33', 'Av. D, 987'),
    ('Empresa E', '(55) 6666-7777', '56.789.012/0001-44', 'Rua E, 654'),
    ('Empresa F', '(66) 7777-8888', '67.890.123/0001-55', 'Av. F, 321'),
    ('Empresa G', '(77) 8888-9999', '78.901.234/0001-66', 'Rua G, 1234'),
    ('Empresa H', '(88) 9999-0000', '89.012.345/0001-77', 'Av. H, 5678'),
    ('Empresa I', '(99) 0000-1111', '90.123.456/0001-88', 'Rua I, 9012'),
    ('Empresa J', '(00) 1111-2222', '01.234.567/0001-99', 'Av. J, 3456');
