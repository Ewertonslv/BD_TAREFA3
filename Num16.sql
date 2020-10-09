
CREATE VIEW mostra_responsaveis AS
SELECT f.nome 
FROM funcionario f, departamento d, projeto p LEFT JOIN gerenteDepartamentos gd
ON  p.codResponsavel = gd.codigo
WHERE f.codigo = d.codGerente 
AND ((f.codigo = p.codResponsavel 
AND d.codigo = p.codDepto)
OR (f.salario > gd.salario AND f.codDepto = gd.codigo))
GROUP BY f.nome;