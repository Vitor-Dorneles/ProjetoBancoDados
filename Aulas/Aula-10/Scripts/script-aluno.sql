create schema ufn_db;
use ufn_db;

create table curso (
	id_curso int primary key not null,
    Descricao varchar(50) not null
);

create table Aluno (
id_aluno int primary key not null,
nome varchar(50) not null,
id_curso int,
constraint fk_curso foreign key (id_curso) references curso(id_curso)
);

create table Disciplina (
id_disciplina int primary key not null,
nome varchar(50) not null
);

create table Turma (
id_turma int primary key not null,
ano_semestre varchar(50) not null,
id_disciplina int,
constraint fk_disciplina foreign key (id_disciplina) references Disciplina(id_disciplina)
); 

create table Matricula (
id_matricula int primary key not null,
id_aluno int,
constraint fk_aluno foreign key (id_aluno) references Aluno(id_aluno),
id_turma int,
constraint fk_turma foreign key (id_turma) references Turma(id_turma)
);

show tables;
select * 
from Matricula;