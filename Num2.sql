CREATE VIEW mostra_menos_mais_idoso AS
SELECT nome
FROM funcionario
WHERE dtNascimento < (Select MIN(dtNascimento)
FROM funcionario)
SELECT * FROM  mostra_menos_mais_idoso;