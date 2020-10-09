CREATE VIEW mostra_projetos_por_data AS
SELECT p.descricao AS "Nome do projeto", 
p.dataInicio AS "Inicio do projeto", 
p.dataFim AS "Fim do projeto",
a.descricao AS "Nome da atividade",
ap.datainicio AS "Inicio da atividade", 
ap.datafim AS "Fim da atividade"

FROM projeto p LEFT JOIN AtividadeProjeto ap
ON ap.codProjeto = p.codigo 
AND (ap.dataInicio < p.dataInicio OR ap.dataFim > p.dataFim)
