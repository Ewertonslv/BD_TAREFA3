CREATE VIEW qtd_funcionarios AS
SELECT COUNT(f.Codigo) AS qtd, d.codigo
FROM funcionario f, departamento d
WHERE f.codDepto = d.codigo
GROUP BY d.codigo ASC;

SELECT d.nome, f.nome, qtd
FROM departamento d
LEFT JOIN funcionario f
WHERE d.codGerente = f.codigo
LEFT JOIN qtd_funcionarios
WHERE qtd_funcionarios.codigo = d.codigo;