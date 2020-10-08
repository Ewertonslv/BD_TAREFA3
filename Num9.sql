CREATE View mostra_responsaveis AS
SELECT f.codigo, f.nome, f.salario, d.codigo, COUNT(d.codigo)
FROM funcionario f, projeto p, departamento d
WHERE f.codigo = p.codResponsavel;
GROUP BY f.nome ASC;

CREATE View mostra_gerentes AS
SELECT g.codigo, g.salario, d.codigo
FROM funcionario g, departamento d
WHERE g.codigo = d.codGerente;

SELECT f.nome, f.salario,
FROM mostra_responsaveis rp, mostra_gerentes ge
WHERE rp.f.salario > ge.g.salario AND rp.d.Codigo = ge.d.Codigo;