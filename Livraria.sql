create table Livros(
	id_livro int primary key auto_increment not null,
    titulo varchar(50) not null,
    autor varchar(50) not null,
    editor varchar(50) not null,
    edicao varchar(50) not null,
    numero_paginas varchar(30) not null
);

create table Leitor(
	id_leitor int primary key auto_increment not null,
    nome_leitor varchar(50) not null,
    email_leitor varchar(50) not null,
);

create table Historico(
	data_historico date not null,
    id_livro int,
    id_leitor int,
    foreign key (id_livro) references livros(id_livro),
    foreign key (id_leitor) references leitor(id_leitor)
);

insert into livros (id_livro, titulo, autor, editor, edicao, numero_paginas) values (1, '50 tons de transparente', 'Dr. T', 'Sr. T', '50 edição', '50');
insert into livros (id_livro, titulo, autor, editor, edicao, numero_paginas) values (2, 'Herry Potter', 'Herry', 'Potter', '264 edição', '93737');
insert into livros (id_livro, titulo, autor, editor, edicao, numero_paginas) values (3, 'Arqitetura de Computadores', 'Tanembaum', 'Não sei', 'também não sei', 'faço a mínima ideia');

insert into leitor (id_leitor, nome_leitor, email_leitor) values (1, 'Rayana', 'rayana@gmail.com');
insert into leitor (id_leitor, nome_leitor, email_leitor) values (2, 'Zé Bonitinho', 'zebonitinho@gmail.com');
insert into leitor (id_leitor, nome_leitor, email_leitor) values (3, 'Wonder Woman', 'wonderwoman@gmail.com');

insert into historico (id_livro, id_leitor, data_historico) values (1, 3, '1739-02-10');
insert into historico (id_livro, id_leitor, data_historico) values (2, 1, '1739-02-10');
insert into historico (id_livro, id_leitor, data_historico) values (3, 2, '1739-02-10');