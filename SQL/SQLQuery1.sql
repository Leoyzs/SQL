CREATE DATABASE LIVRARIA
GO



USE LIVRARIA
GO



CREATE TABLE LIVROS(
  IdLivros INT IDENTITY,
  NomeDoLivro VARCHAR(100),
  NomeDoAutor VARCHAR(100),
  SexoDoAutor VARCHAR(100),
  NumeroDePaginas INT,
  NomeDaEditora VARCHAR(100),
  ValorDoLivro DECIMAL(10,2),
  UfDaEditora CHAR(2),
  AnoPublicacao INT
)





INSERT INTO LIVROS (NomeDoLivro, NomeDoAutor, SexoDoAutor, NumeroDePaginas, NomeDaEditora, ValorDoLivro, UfDaEditora, AnoPublicacao) VALUES
('Cavaleiro Real', 'Ana Claudia', 'Feminino', 465, 'Atlas', 49.9, 'RJ', 2009),
('SQL para leigos', 'João Nunes', 'Masculino', 450, 'Addison', 98, 'SP', 2018),
('Receitas Caseiras', 'Celia Tavares', 'Feminino', 210, 'Atlas', 45, 'RJ', 2008),
('Pessoas Efetivas', 'Eduardo Santos', 'Masculino', 390, 'Beta', 78.99, 'RJ', 2018),
('Habitos Saudáveis', 'Eduardo Santos', 'Masculino', 630, 'Beta', 150.98, 'RJ', 2019),
('A Casa Marrom', 'Hermes Macedo', 'Masculino', 250, 'Bubba', 60, 'MG', 2016),
('Estacio Querido', 'Geraldo Francisco', 'Masculino', 310, 'Insignia', 100, 'ES', 2015),
('Pra sempre amigas', 'Leda Silva', 'Feminino', 510, 'Insignia', 78.98, 'ES', 2011),
('Copas Inesqueciveis', 'Marco Alcantara', 'Masculino', 200, 'Larson', 130.98, 'RS', 2018),
('O poder da mente', 'Clara Mafra', 'Feminino', 120, 'Continental', 56.58, 'SP', 2017);



SELECT * FROM LIVROS



SELECT NomeDoLivro, NomeDaEditora FROM LIVROS



SELECT NomeDoLivro, UfDaEditora FROM LIVROS WHERE SexoDoAutor = 'Masculino'



SELECT NomeDoLivro, NumeroDePaginas FROM LIVROS WHERE SexoDoAutor = 'Feminino'



SELECT ValorDoLivro FROM LIVROS WHERE UfDaEditora = 'SP'



SELECT * FROM LIVROS WHERE SexoDoAutor = 'Masculino' AND (UfDaEditora = 'SP' OR UfDaEditora = 'RJ')