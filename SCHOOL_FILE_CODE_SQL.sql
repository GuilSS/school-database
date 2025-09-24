CREATE SEQUENCE seq_aluno INCREMENT 1 START 1;
CREATE TABLE aluno(
	matricula SERIAL PRIMARY KEY,
	cpf CHAR(11) UNIQUE NOTNULL ,
	nome VARCHAR(100) NOTNULL
)
INSERT INTO aluno VALUES (nextval('seq_aluno'));
--------------------------------------------------------
CREATE SEQUENCE seq_turma INCREMENT 1 START 1;
CREATE TABLE turma(
	codigo INT PRIMARY KEY,
	descricao VARCHAR(50) NOTNULL,
	horario TIMESTAMP NOTNULL
)
INSERT INTO turma VALUES (nextval('seq_turma'));
--------------------------------------------------------
CREATE SEQUENCE seq_professor INCREMENT 1 START 1;
CREATE TABLE professor(
	matricula_pro INT PRIMARY KEY,
	rg CHAR(9) UNIQUE NOTNULL,
	nome VARCHAR(100) NOTNULL
)
INSERT INTO professor VALUES (nextval('seq_professor'));
--------------------------------------------------------
CREATE TABLE disciplina(
	codigo_dis INT PRIMARY KEY,
	matricula_pro INT,
	FOREIGN KEY (matricula_pro) REFERENCES professor,
	descricao VARCHAR(50) NOTNULL,
	carga_horaria TIMESTAMP NOTNULL
)
--------------------------------------------------------
CREATE SEQUENCE seq_atrelamento_a INCREMENT 1 START 1;
CREATE TABlE atrelamento_aluno(
	id_atrelamento_a SERIAL PRIMARY KEY,
	matricula INT NOTNULL,
	FOREIGN KEY (matricula) REFERENCES aluno,
	codigo INT NOTNULL,
	FOREIGN KEY (codigo) REFERENCES turma
)
INSERT INTO atrelamento_aluno VALUES (nextval('seq_atrelamento_a'));
--------------------------------------------------------
CREATE SEQUENCE seq_atrelamento_p INCREMENT 1 START 1;
CREATE TABLE atrelamento_prof(
	id_atrelamento_p SERIAL PRIMARY KEY,
	codigo INT NOTNULL,
	FOREIGN KEY (codigo) REFERENCES turma,
	matricula_pro INT NOTNULL,
	FOREIGN KEY (matricula_pro) REFERENCES professor
)
INSERT INTO atrelamento_prof VALUES (nextval('seq_atrelamento_p'));

INSERT INTO aluno (cpf,nome) VALUES 
('12345678901','Victor Silva')
INSERT INTO turma (codigo,descricao,horario) VALUES 
(2,'Tema: Segunda(2) Guerra Mundial','01/01/2021 13:30:00')
INSERT INTO professor (matricula_pro,rg,nome) VALUES 
(2,'123456701','Prof. Willian Gomes')
INSERT INTO disciplina (codigo_dis,matricula_pro) VALUES /*ARRUMAR AQUI!!!COLOCAR SEQUENCE*/
(2,2)

SELECT * FROM atrelamento_prof
