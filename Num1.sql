SELECT nome
FROM funcionario
WHERE salario > (SELECT MAX(salario)
FROM funcionario
WHERE codDepto = 5);