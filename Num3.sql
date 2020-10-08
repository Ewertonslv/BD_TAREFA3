CREATE VIEW funcionario_maior21 AS
SELECT nome, dtNascimento
FROM funcionario
WHERE dtNascimento > 21 AND NOT
Codigo = (SELECT codGerente FROM departamento);