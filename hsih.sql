CREATE DATABASE IF NOT EXISTS Locadora;
USE locadora;

CREATE TABLE IF NOT EXISTS filmes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_do_filme VARCHAR(50) NOT NULL,
    diretor VARCHAR(50) NOT NULL,
    genero VARCHAR(30),
    duracao TIME,
    preco DECIMAL(4, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(22) NOT NULL UNIQUE,
    endereco VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS locacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
	data_locacao DATE,
    id_cliente INT,
    id_filme INT,
    quantidade_dias DATE
);

INSERT INTO filmes (nome_do_filme, diretor, genero, duracao, preco) VALUES
("Matrix", "Wachowski", "Ficção", '02:16:00', 12.50),
("Titanic", "James Cameron", "Romance", '03:15:00', 10.00),
("O Senhor dos Anéis", "Peter Jackson", "Fantasia", '03:45:00', 15.00),
("Vingadores", "Joss Whedon", "Ação", '02:23:00', 13.50),
("Coringa", "Todd Phillips", "Drama", '02:02:00', 11.00),
("A Origem", "Christopher Nolan", "Ficção", '02:28:00', 12.00),
("O Rei Leão", "Rob Minkoff", "Animação", '01:28:00', 8.50),
("Jurassic Park", "Steven Spielberg", "Aventura", '02:07:00', 10.50),
("Parasita", "Bong Joon-ho", "Suspense", '02:12:00', 14.00),
("Gladiador", "Ridley Scott", "Histórico", '02:35:00', 11.50);

INSERT INTO clientes (nome, cpf, email, telefone, endereco, data_nascimento) VALUES
("Carlos Silva", "12345678900", "carlos@email.com", "85988887777", "Rua A, 123", "1990-05-10"),
("Mariana Souza", "98765432100", "mariana@email.com", "85988776655", "Rua B, 456", "1985-09-22"),
("João Pereira", "11122233344", "joao@email.com", "85986665544", "Rua C, 789", "1992-03-15"),
("Ana Costa", "55566677788", "ana@email.com", "85985554433", "Rua D, 321", "1998-12-01");

INSERT INTO locacoes (id_cliente, id_filme, data_locacao, data_devolucao) VALUES
(1, 2, '2025-04-15', '2025-04-18'),
(2, 4, '2025-04-14', '2025-04-17'),
(3, 5, '2025-04-13', '2025-04-16'),
(4, 1, '2025-04-12', '2025-04-15'),
(1, 3, '2025-04-11', '2025-04-14');

SELECT * FROM filmes;
SELECT * FROM clientes;
SELECT * FROM locacoes;

