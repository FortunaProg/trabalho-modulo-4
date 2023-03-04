-- Cria o banco de dados
CREATE DATABASE escola;

-- Usa o banco de dados criado
USE escola;

-- Cria a tabela "cursos"
CREATE TABLE cursos (
  id_curso INT NOT NULL AUTO_INCREMENT,
  nome_curso VARCHAR(50) NOT NULL,
  carga_horaria INT NOT NULL,
  PRIMARY KEY (id_curso)
);

-- Insere dados na tabela "cursos"
INSERT INTO cursos (nome_curso, carga_horaria)
VALUES 
  ('Programação em Java', 40),
  ('Banco de Dados', 30);

-- Cria a tabela "turmas"
CREATE TABLE turmas (
  id_turma INT NOT NULL AUTO_INCREMENT,
  nome_turma VARCHAR(50) NOT NULL,
  id_curso INT NOT NULL,
  PRIMARY KEY (id_turma),
  FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- Insere dados na tabela "turmas"
INSERT INTO turmas (nome_turma, id_curso)
VALUES 
  ('Turma de Programação em Java', 1),
  ('Turma de Banco de Dados', 2);

-- Cria a tabela "alunos"
CREATE TABLE alunos (
  id_aluno INT NOT NULL AUTO_INCREMENT,
  nome_aluno VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  id_turma INT NOT NULL,
  PRIMARY KEY (id_aluno),
  FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

-- Insere dados na tabela "alunos"
INSERT INTO alunos (nome_aluno, email, id_turma)
VALUES 
  ('João Silva', 'joao.silva@email.com', 1),
  ('Maria Santos', 'maria.santos@email.com', 2);
