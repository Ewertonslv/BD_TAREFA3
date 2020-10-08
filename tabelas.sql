CREATE TABLE atividade (
	codigo INT,
	descricao VARCHAR(100)
	PRIMARY KEY(codigo)
);

CREATE TABLE departamento (
	codigo INT,
	descricao VARCHAR(100),
	codGerente INT,
	PRIMARY KEY(codigo)
);

CREATE TABLE funcionario (
	codigo INT,
	nome VARCHAR(100),
	sexto VARCHAR(1),
	DtNascimento DATE,
	salario MONEY,
	codDepto INT,
	CONSTRAINT funcionariodepto 
	FOREIGN KEY (coddepto) 
	REFERENCES departamento(codigo)
	PRIMARY KEY(codigo)
);


CREATE TABLE projeto (
	codigo INT,
	descricao VARCHAR(100),
	codDepto INT,
	codResponsavel INT,
	dataInicio DATE,
	dataFim DATE,
	CONSTRAINT departamentoproj 
	FOREIGN KEY (coddepto) 
	REFERENCES departamento(codigo),
	CONSTRAINT responsavelproj 
	FOREIGN KEY (codresponsavel) 
	REFERENCES funcionario(codigo)
	PRIMARY KEY(codigo)
);

CREATE TABLE AtividadeProjeto (
	codigo INT,
	codProjeto INT,
	codAtividade INT,
	codResponsavel INT,
	dataInicio DATE,
	dataFim DATE,
	CONSTRAINT projetoap 
	FOREIGN KEY (codprojeto) 
	REFERENCES projeto(codigo),
	CONSTRAINT atividadeap 
	FOREIGN KEY (codatividade) 
	REFERENCES atividade(codigo),
	CONSTRAINT responsavelap 
	FOREIGN KEY (codresponsavel) 
	REFERENCES funcionario(codigo)
	PRIMARY KEY(codigo)
);

ALTER TABLE departamento 
ADD CONSTRAINT gerentedepto 
FOREIGN KEY (codgerente) 
REFERENCES funcionario(codigo);