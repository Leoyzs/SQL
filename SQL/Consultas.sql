 CREATE DATABASE VENDAS;
GO 
USE VENDAS;
GO
CREATE TABLE Transacoes (
    TransacaoID INT PRIMARY KEY IDENTITY(1,1),
    Produto NVARCHAR(100),
    ValorTotal DECIMAL(10, 2),
    ValorUnitario DECIMAL(10, 2),
    NumeroTransacao INT
)

-- Inserir dados na tabela TRANSAÇÕES
INSERT INTO Transacoes(Produto, ValorTotal, ValorUnitario, NumeroTransacao)
VALUES
    ('Laptop', 2400.00, 1200.00, 2),
    ('Smartphone', 1600.00, 800.00, 2),
    ('Teclado', 150.00, 50.00, 3),
    ('Mouse', 100.00, 25.00, 4),
    ('Monitor', 900.00, 300.00, 3),
    ('Cadeira', 500.00, 250.00, 2),
    ('Impressora', 400.00, 200.00, 2),
    ('Webcam', 150.00, 75.00, 2),
    ('Fone de Ouvido', 200.00, 100.00, 2),
    ('Caixa de Som', 300.00, 150.00, 2);
GO 

SELECT SUM(NumeroTransacao) AS TotalTransacao
FROM Transacoes


SELECT AVG(ValorUnitario) AS MediaDoValorUnitario
FROM Transacoes

Select count(NumeroTransacao) AS NumeroDeTransacaoPorProduto 
from Transacoes
 





-- Criar o banco de dados BIBLIOTECA
CREATE DATABASE BIBLIOTECA;
GO

-- Usar o banco de dados BIBLIOTECA
USE BIBLIOTECA;
GO

-- Criar a tabela LIVROS
CREATE TABLE LIVROS (
    ID INT PRIMARY KEY IDENTITY(1,1),
    NomeLivro NVARCHAR(255) NOT NULL,
    Autor NVARCHAR(255) NOT NULL,
    DataPublicacao DATE NOT NULL,
    Paginas INT NOT NULL
);
GO
-- Inserir dados na tabela LIVROS
INSERT INTO LIVROS (NomeLivro, Autor, DataPublicacao, Paginas)
VALUES
    ('O Senhor dos Anéis', 'J.R.R. Tolkien', '1954-07-29', 1216),
    ('1984', 'George Orwell', '1949-06-08', 328),
    ('A Revolução dos Bichos', 'George Orwell', '1945-08-17', 112),
    ('Dom Casmurro', 'Machado de Assis', '1899-08-15', 192),
    ('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', '1943-04-06', 96),
    ('A Moreninha', 'Joaquim Manuel de Macedo', '1844-05-01', 168),
    ('O Livro dos Espíritos', 'Allan Kardec', '1857-04-18', 448),
    ('O Caçador de Pipas', 'Khaled Hosseini', '2003-05-29', 371),
    ('Cem Anos de Solidão', 'Gabriel García Márquez', '1967-06-05', 417),
    ('A Menina que Roubava Livros', 'Markus Zusak', '2005-03-14', 552);
GO

-- Adicionar a coluna Preco à tabela LIVROS
ALTER TABLE LIVROS
ADD Preco DECIMAL(10, 2) NOT NULL DEFAULT 0.00;
GO


-- Atualizar os valores da coluna Preco na tabela LIVROS
UPDATE LIVROS
SET Preco = CASE
    WHEN NomeLivro = 'O Senhor dos Anéis' THEN 79.90
    WHEN NomeLivro = '1984' THEN 39.90
    WHEN NomeLivro = 'A Revolução dos Bichos' THEN 29.90
    WHEN NomeLivro = 'Dom Casmurro' THEN 49.90
    WHEN NomeLivro = 'O Pequeno Príncipe' THEN 24.90
    WHEN NomeLivro = 'A Moreninha' THEN 34.90
    WHEN NomeLivro = 'O Livro dos Espíritos' THEN 44.90
    WHEN NomeLivro = 'O Caçador de Pipas' THEN 49.90
    WHEN NomeLivro = 'Cem Anos de Solidão' THEN 59.90
    WHEN NomeLivro = 'A Menina que Roubava Livros' THEN 39.90
    ELSE Preco
END;
GO



SELECT MAX(Paginas) AS MaiorPaginas
FROM LIVROS

SELECT SUM(Preco) AS TotalValorLivros
FROM LIVROS

SELECT COUNT(Autor) AS LivrosPorAutor 
FROM LIVROS where Autor = 'J.R.R. Tolkien';




-- Criar o banco de dados RH
CREATE DATABASE RH;
GO

-- Usar o banco de dados RH
USE RH;
GO

-- Criar a tabela FUNCIONARIOS
CREATE TABLE FUNCIONARIOS (
    FuncionarioID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(255) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL,
    Departamento NVARCHAR(100) NOT NULL
);
GO

-- Inserir dados na tabela FUNCIONARIOS
INSERT INTO FUNCIONARIOS (Nome, Salario, Departamento)
VALUES
    ('Ana Silva', 3500.00, 'Recursos Humanos'),
    ('João Pereira', 4200.00, 'Financeiro'),
    ('Maria Oliveira', 3800.00, 'TI'),
    ('Carlos Santos', 3900.00, 'Marketing'),
    ('Beatriz Lima', 4100.00, 'Financeiro'),
    ('Pedro Costa', 3300.00, 'TI'),
    ('Laura Almeida', 3500.00, 'Recursos Humanos'),
    ('Fernando Silva', 4300.00, 'Marketing'),
    ('Juliana Martins', 3000.00, 'Vendas'),
    ('Marcos Pereira', 3700.00, 'Financeiro');
GO 

SELECT AVG(Salario) AS SalarioMedioPorSetor from FUNCIONARIOS where Departamento = 'Financeiro';

SELECT MIN(Salario) AS MenorSalarioPorSetor from FUNCIONARIOS where Departamento = 'financeiro';

SELECT COUNT(Nome) AS FuncionarioPorSetor from  FUNCIONARIOS where Departamento = 'financeiro'; 