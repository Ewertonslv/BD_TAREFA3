
CREATE VIEW qtd_projetos AS
SELECT COUNT(p.codigo), d.descricao
FROM departamento d LEFT JOIN projeto p
ON d.codigo = p.codDepto
GROUP BY d.descricao ASC;