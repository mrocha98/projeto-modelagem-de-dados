create table if not exists UF (
	id uuid not null,
	sigla char(2) not null,
	constraint PK_UF primary key (id),
	constraint UK_UF unique (sigla)
);


create table if not exists Cidade (
	id uuid not null,
	UF_id uuid not null,
	nome varchar(255) not null,
	constraint PK_Cidade primary key (id),
	constraint FK_Cidade_UF foreign key (UF_id) references UF(id),
	constraint UK_Cidade unique (UF_id, nome)
);


create table if not exists Endereco (
	id uuid not null,
	cidade_id uuid not null,
	bairro varchar(255) not null,
	rua text not null,
	numero smallint not null,
	ponto_de_referencia text null,
	constraint PK_Endereco primary key (id),
	constraint FK_Endereco_Cidade foreign key (cidade_id) references cidade (id),
	constraint UK_Endereco unique (cidade_id, bairro, rua, numero)
);

create table if not exists Telefone (
	id uuid not null,
	numero varchar(11) not null,
	constraint PK_Telefone primary key (id),
	constraint UK_Telefone unique(numero)
);


create table if not exists Usuario (
	id uuid not null,
	email varchar(255) not null,
	senha bytea not null,
	nome varchar(255) not null,
	sexo char(1) not null,
	data_nasc timestamptz not null,
	endereco_id uuid null,
	constraint PK_Usuario primary key (id),
	constraint FK_Usuario_Endereco foreign key (endereco_id) references Endereco (id),
	constraint UK_Usuario unique (email),
	constraint CK_Usuario_sexo check (sexo = 'M' or sexo = 'F')
);

create table if not exists Telefone_Por_Usuario (
	id uuid not null,
	telefone_id uuid not null,
	usuario_id uuid not null,
	constraint PK_Telefone_Por_Usuario primary key (id),
	constraint FK_Telefone_Por_Usuario_Telefone foreign key (telefone_id) references Telefone (id),
	constraint FK_Telefone_Por_Usuario_Usuario foreign key (usuario_id) references Usuario (id),
	constraint UK_Telefone_Por_Usuario unique (telefone_id, usuario_id)
);

create table if not exists Fisioterapeuta (
	id uuid not null,
	id_usuario uuid not null,
	data_admissao timestamptz not null,
	data_demissao timestamptz null,
	salario numeric(7, 2) not null,
	constraint PK_Fisioterapeuta primary key (id),
	constraint FK_Fisioterapeuta_Usuario foreign key (id_usuario) references Usuario (id),
	constraint UK_Fisioterapeuta unique (id_usuario),
	constraint CK_Fisioterapeuta_salario check (salario > 0)
);

create table if not exists Paciente (
	id uuid not null,
	id_usuario uuid not null,
	anamnese text null,
	constraint PK_Paciente primary key (id),
	constraint FK_Paciente_Usuario foreign key (id_usuario) references Usuario (id),
	constraint UK_Paciente unique (id_usuario)
);

create table if not exists Pagamento (
	id uuid not null,
	id_fisioterapeuta uuid not null,
	data timestamptz not null,
	valor numeric(7, 2) not null,
	constraint PK_Pagamento primary key (id),
	constraint FK_Pagamento_Fisioterapeuta foreign key (id_fisioterapeuta) references Fisioterapeuta(id),
	constraint UK_Pagamento unique (id_fisioterapeuta, data)
);


create table if not exists Plano (
	id uuid not null,
	nome varchar(255) not null,
	frequencia_semanal smallint not null,
	valor_sugerido numeric (5, 2) not null,
	descricao text null,
	constraint PK_Plano primary key (id),
	constraint UK_Plano unique (nome, frequencia_semanal),
	constraint CK_Plano_valor_sugerido check (valor_sugerido >= 0)
);

create table if not exists Matricula (
	id uuid not null,
	id_paciente uuid not null,
	id_plano uuid not null,
	data timestamptz not null,
	status bool not null,
	constraint PK_Matricula primary key (id),
	constraint FK_Matricula_Paciente foreign key (id_paciente) references Paciente (id),
	constraint FK_Matricula_Plano foreign key (id_plano) references Plano (id),
	constraint UK_Matricula unique (id_paciente, id_plano)
);

create table if not exists Mensalidade (
	id uuid not null,
	id_matricula uuid not null,
	data timestamptz not null,
	valor_solicitado numeric (5, 2) not null,
	paciente_pagou bool not null,
	constraint PK_Mensalidade primary key (id),
	constraint FK_Mensalidade_Matricula foreign key (id_matricula) references Matricula (id),
	constraint UK_Mensalidade unique (id_matricula, data)
);


create table if not exists Equipamento (
	id uuid not null,
	nome varchar(255) not null,
	constraint PK_Equipamento primary key (id),
	constraint UK_Equipamento unique (nome)
);

create table if not exists Exercicio (
	id uuid not null,
	nome varchar(255) not null,
	id_equipamento uuid null,
	constraint PK_Exercicio primary key (id),
	constraint RK_Exercicio_Equipamento foreign key (id_equipamento) references Equipamento (id),
	constraint UK_Exercicio unique (nome)
);

create table if not exists Terapia (
	id uuid not null,
	id_matricula uuid not null,
	id_fisioterapeuta uuid not null,
	data timestamptz not null,
	paciente_compareceu bool not null,
	observacao text null,
	constraint PK_Terapia primary key (id),
	constraint FK_Terapia_Matricula foreign key (id_matricula) references Matricula (id),
	constraint FK_Terapia_Fisioterapeuta foreign key (id_fisioterapeuta) references Fisioterapeuta (id),
	constraint UK_Terapia unique (id_matricula, id_fisioterapeuta, data)
);

create table if not exists Exercicio_Por_Terapia (
	id uuid not null,
	id_exercicio uuid not null,
	id_terapia uuid not null,
	constraint PK_Exercicio_Por_Terapia primary key (id),
	constraint FK_Exercicio_Por_Terapia_Exercicio foreign key (id_exercicio) references Exercicio (id),
	constraint FK_Exercicio_Por_Terapia_Terapia foreign key (id_terapia) references Terapia (id),
	constraint UK_Exercicio_Por_Terapia unique (id_exercicio, id_terapia)
);
