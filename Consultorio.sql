create DATABASE Consultorio;

use Consultorio;

create table Ambulatorio(
    nroa int primary key auto_increment not null,
    andar int not null,
    capacidade int not null,
);

create table Medicos(
	codm int primary key auto_increment not null,
    cpf varchar(13) not null,
    nome varchar(50) not null,
    dataDeNascimento datetime not null,
    cidade varchar(30) not null,
    especialidade varchar(30) not null,
    id_ambulatorio int,
    foreign key (id_ambulatorio) references ambulatorios(nroa)
); 

create table Pacientes(
	codp int primary key auto_increment not null,
    cpf varchar(13) not null,
    nome varchar(30) not null,
    dataDeNascimento datetime not null,
    cidade varchar(30) not null,
    doenca varchar(30) not null
);

create table Consultas(
	id_medicos int,
    id_pacientes int,
    foreign key (id_medicos) references medicos(codm),
    foreign key (id_pacientes) references pacientes(codp),
    data date,
    hora time
);

create table Funcionarios(
	codf int primary key auto_increment not null,
    cpf varchar(13) not null,
    nome varchar(50) not null,
    dataDeNascimento datetime not null,
    cidade varchar(30) not null,
    salario float not null
);

insert into ambulatorios (nroa, andar, capacidade) values (1, 3, 1);
insert into ambulatorios (nroa, andar, capacidade) values (2, 4, 2);
insert into ambulatorios (nroa, andar, capacidade) values (3, 5, 6);
insert into ambulatorios (nroa, andar, capacidade) values (4, 2, 2);
insert into ambulatorios (nroa, andar, capacidade) values (5, 1, 3);

insert into medicos (codm, cpf, nome, dataDeNascimento, cidade, especialidade, id_ambulatorio) values (1, '12345678901', 'Luis Paulo', '1989-02-10 00:00:00', 'Campina Grande', 'Cardiologista', 1);
insert into medicos (codm, cpf, nome, dataDeNascimento, cidade, especialidade, id_ambulatorio) values (2, '09876543127', 'Elvira a rainha do deserto', '1739-02-10 00:00:00', 'Transilvania', 'Clinica geral', 4);
insert into medicos (codm, cpf, nome, dataDeNascimento, cidade, especialidade, id_ambulatorio) values (3, '12345678901', 'Luky Skywalker', '1945-02-10 00:00:00', 'Cochichola', 'Pediatra', 3);
insert into medicos (codm, cpf, nome, dataDeNascimento, cidade, especialidade, id_ambulatorio) values (4, '12345678901', 'Ojuara', '1989-04-10 00:00:00', 'Crato', 'Obstetra', 5);
insert into medicos (codm, cpf, nome, dataDeNascimento, cidade, especialidade, id_ambulatorio) values (5, '78495068123', 'Clark Kent', '1989-02-10 00:00:00', 'Londres', 'Cardiologista', 1);

insert into pacientes (codp, cpf, nome, dataDeNascimento, cidade, doenca) values (1, '12345678902', 'Dona Florinda', '1739-02-10 00:00:00', 'Campina Grande', 'Chatisse');
insert into pacientes (codp, cpf, nome, dataDeNascimento, cidade, doenca) values (2, '09875612345', 'Kiko', '1739-02-10 00:00:00', 'Campina Grande', 'Chatisse');
insert into pacientes (codp, cpf, nome, dataDeNascimento, cidade, doenca) values (3, '97465102934', 'Nhonho', '1983-02-10 00:00:00', 'Lagoa Seca', 'Pressão alta');
insert into pacientes (codp, cpf, nome, dataDeNascimento, cidade, doenca) values (4, '23456178909', 'Mafalda', '1999-02-10 00:00:00', 'Cabaceiras', 'Lombriga');
insert into pacientes (codp, cpf, nome, dataDeNascimento, cidade, doenca) values (5, '12309576943', 'Faustão', '1500-02-10 00:00:00', 'Janeiro do Rio', 'Gripe');

insert into consultas (data, hora) values ('1989-02-10', '12:15:20');
insert into consultas (data, hora) values ('1990-05-12', '17:15:20');
insert into consultas (data, hora) values ('1996-07-10', '08:30:01');
insert into consultas (data, hora) values ('1988-09-04', '10:10:20');
insert into consultas (data, hora) values ('1989-02-10', '12:15:20');

insert into funcionarios (codf, cpf, nome, dataDeNascimento, cidade, salario) values (1, "12345678901", 'Ana Maria Braga', '1989-02-10 00:00:00', 'Campina Grande', 1.500);
insert into funcionarios (codf, cpf, nome, dataDeNascimento, cidade, salario) values (2, "12345678901", 'Luciano Hulk', '1989-02-10 00:00:00', 'Campina Grande', 1.100);
insert into funcionarios (codf, cpf, nome, dataDeNascimento, cidade, salario) values (3, "12345678901", 'Galvão Bueno', '1989-02-10 00:00:00', 'Campina Grande', 700);
insert into funcionarios (codf, cpf, nome, dataDeNascimento, cidade, salario) values (4, "12345678901", 'Ivete Sangalo', '1989-02-10 00:00:00', 'Campina Grande', 1000000000);
insert into funcionarios (codf, cpf, nome, dataDeNascimento, cidade, salario) values (5, "12345678901", 'EU', '1989-02-10 00:00:00', 'Campina Grande', 0.0);