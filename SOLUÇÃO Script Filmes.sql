--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano FROM Filmes ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997'

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND < 150 ORDER BY Duracao ASC

--7
SELECT Ano, COUNT(*) AS QuantidadeFilmes, SUM(Duracao) AS DuracaoTotal
FROM Filmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC

--8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--9
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id

--11
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Genero = 'Mistério'

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.Id