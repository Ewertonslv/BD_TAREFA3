CREATE VIEW mostra_naoGerente AS
SELECT nome, salario, codDepto
FROM funcionario
WHERE NOT codigo = (SELECT codGerente FROM departamento)
ORDER BY codDepto ASC;