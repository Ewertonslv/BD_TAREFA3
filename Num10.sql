CREATE VIEW mostra_proj AS
SELECT p.nome, d.nome, f.nome, df.nome
FROM projeto p, departamento d
ON p.codDepto = d.codigo
LEFT JOIN funcionario f, departamento df
ON   p.codResponsavel = f.codigo AND df.codigo = f.codDepto;

SELECT * FROM mostra_proj;