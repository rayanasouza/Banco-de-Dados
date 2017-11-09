create database Universidade;

use Universidade;

create table Disciplinas(
    codigo int primary key auto_increment not null,
    nome varchar(50) not null,
    dataDeCriacao datetime not null
);

create table Professores(
    matricula int primary key auto_increment not null,
    nome varchar(50) not null,
    especialidade varchar(30) not null
);

create table Disciplinas_Professores(
    id_disciplinas int,
    id_professores int,
    foreign key (id_disciplinas) references Disciplinas(codigo),
    foreign key (id_professores) references Professores(matricula)
);