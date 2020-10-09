CREATE VIEW mostra_atividades AS
SELECT p.descricao AS "Nome do projeto", 
p.dataInicio AS "Data inicio", 
p.dataFim AS "Data fim",
a.descricao AS "Nome atividade", 
ap.dataInicio AS "Data inicio" 
ap.dataFim AS "Data fim"

FROM projeto p LEFT JOIN AtividadeProjeto ap
ON p.codigo = ap.codProjeto LEFT JOIN atividade a
ON ap.codProjeto = p.codigo;