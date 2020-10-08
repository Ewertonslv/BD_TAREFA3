SELECT p.nome, d.nome, f.nome, e.nome
FROM projeto p, departamento d
WHERE p.codDepto = d.codigo
LEFT JOIN funcionario f, departamento e
WHERE p.codResponsavel = f.codigo 
AND e.codigo = f.codDepto 
AND NOT f.codDepto = d.codigo;