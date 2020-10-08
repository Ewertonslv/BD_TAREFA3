CREATE VIEW funcionarios_ganham_mais_dept5 AS
SELECT nome
FROM funcionario
WHERE salario > (SELECT MAX(salario)
FROM funcionario
WHERE codDepto = 5);