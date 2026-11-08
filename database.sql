-- CRIAÇÃO DAS TABELAS

CREATE TABLE alunos (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    gender TEXT NOT NULL,
    area_interesse TEXT NOT NULL
);

CREATE TABLE professores (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    gender TEXT NOT NULL,
    curso TEXT NOT NULL
);

CREATE TABLE cursos (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    horario TEXT NOT NULL,
    valor TEXT NOT NULL
);

CREATE TABLE departamentos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    sigla TEXT NOT NULL,
    responsavel TEXT NOT NULL,
    ativo BOOLEAN
);

CREATE TABLE matriculas (
    id INTEGER PRIMARY KEY,
    id_aluno INTEGER,
    id_curso INTEGER,
    data_matricula TEXT NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_curso) REFERENCES cursos(id)
);

SHOW TABLES;


-- INSERÇÃO DE DADOS

INSERT INTO alunos VALUES (1, 'Djalma', 'M', 'Tecnologia');
INSERT INTO alunos VALUES (2, 'Fátima', 'F', 'Administração');
INSERT INTO alunos VALUES (3, 'Chalita', 'M', 'Design');
INSERT INTO alunos VALUES (4, 'Suelli', 'F', 'Saúde');
INSERT INTO alunos VALUES (5, 'Renan', 'M', 'Engenharia');
INSERT INTO alunos VALUES (6, 'Priscila', 'F', 'Comunicação');
INSERT INTO alunos VALUES (7, 'Armani', 'M', 'Informática');
INSERT INTO alunos VALUES (8, 'Samara', 'F', 'Psicologia');
INSERT INTO alunos VALUES (9, 'Joaquim', 'M', 'Gastronomia');
INSERT INTO alunos VALUES (10, 'Beatriz', 'F', 'Educação');

INSERT INTO professores VALUES (1, 'Ana', 'F', 'Moda');
INSERT INTO professores VALUES (2, 'Alan', 'M', 'Advocacia');
INSERT INTO professores VALUES (3, 'Ítalo', 'F', 'Moda');
INSERT INTO professores VALUES (4, 'Xerek', 'M', 'Psicologia');
INSERT INTO professores VALUES (5, 'Filomena', 'F', 'Enfermagem');
INSERT INTO professores VALUES (6, 'Jessica', 'F', 'Moda');
INSERT INTO professores VALUES (7, 'Pedroca', 'M', 'Desing');
INSERT INTO professores VALUES (8, 'Jasmine', 'F', 'CCP');
INSERT INTO professores VALUES (9, 'Aladin', 'M', 'Gastronomia');
INSERT INTO professores VALUES (10, 'Paula', 'F', 'Moda');

INSERT INTO cursos VALUES (1, 'Biologia', 'N', 'Barato');
INSERT INTO cursos VALUES (2, 'Moda', 'D', 'Barato');
INSERT INTO cursos VALUES (3, 'Enfermagem', 'N', 'Caro');
INSERT INTO cursos VALUES (4, 'Psicologia', 'D', 'Mediano');
INSERT INTO cursos VALUES (5, 'Advocacia', 'N', 'Caro');
INSERT INTO cursos VALUES (6, 'Veterinaria', 'N', 'Caro');
INSERT INTO cursos VALUES (7, 'Artes', 'N', 'Barato');
INSERT INTO cursos VALUES (8, 'Gastronomia', 'N', 'Barato');
INSERT INTO cursos VALUES (9, 'Desing', 'N', 'Barato');
INSERT INTO cursos VALUES (10, 'CCP', 'N', 'Caro');


-- CONSULTAS (SELECT)

SELECT * FROM alunos WHERE area_interesse = 'Tecnologia';

SELECT * FROM professores WHERE curso = 'Moda';

SELECT * FROM cursos WHERE horario = 'N';


-- INNER JOIN

SELECT professores.name AS professor, cursos.name AS curso
FROM professores
INNER JOIN cursos
ON professores.curso = cursos.name;


-- UPDATE

UPDATE cursos
SET valor = 'Mediano'
WHERE id = 1;


-- DELETE

DELETE FROM professores
WHERE id = 10;
