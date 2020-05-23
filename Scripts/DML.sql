
-- UF
insert into UF(id, sigla) values ('ee366f94-1fd7-4ad2-b4f5-9f8d34bd5e21','SP');
insert into UF(id, sigla) values ('8f40013b-6e9f-4c3b-81c9-75b68b29167e','RJ');
insert into UF(id, sigla) values ('41fa7c2e-7f6e-4ee7-a374-1a7264372d83','MG');
insert into UF(id, sigla) values ('65a945c5-6251-4ac6-b774-4660141a1f80','ES');
insert into UF(id, sigla) values ('8719b463-b5c9-487d-88dd-ee18a4d9791a','PR');
insert into UF(id, sigla) values ('5b1ccb47-2e40-43a3-be9f-73b9a8b8fc38','SC');
insert into UF(id, sigla) values ('f7bea9a3-cc91-45c9-b3d1-18b171e53fe4','RS');

commit;

-- Cidade
insert into Cidade(id, UF_id, nome) 
values (
	'b7adead7-1153-416d-8f12-446de10452c7',
	'ee366f94-1fd7-4ad2-b4f5-9f8d34bd5e21', --SP
	'São José dos Campos'
);
insert into Cidade(id, UF_id, nome) 
values (
	'df9e4070-39dd-4195-9158-82bc583176b8',
	'ee366f94-1fd7-4ad2-b4f5-9f8d34bd5e21',
	'Campinas'
);
insert into Cidade(id, UF_id, nome) 
values (
	'fee5c7e2-fd2c-4d47-b929-37d1d4a925be',
	'ee366f94-1fd7-4ad2-b4f5-9f8d34bd5e21',
	'Taubaté'
);

commit;

-- Endereco
insert into Endereco(id, cidade_id, bairro, rua, numero)
values (
	'3b87135b-585a-43a2-879f-d52159e84f4b',
	'b7adead7-1153-416d-8f12-446de10452c7', --SJC
	'Residencial Jardim Satélite',
	'Av. Andrômeda',
	10
);
insert into Endereco(id, cidade_id, bairro, rua, numero)
values (
	'fbcf0d9f-bda2-48cf-9d5d-708c70fc3dc3',
	'b7adead7-1153-416d-8f12-446de10452c7',
	'Residencial Jardim Satélite',
	'Av. Andrômeda',
	256
);
insert into Endereco(id, cidade_id, bairro, rua, numero)
values (
	'e3fe7a2d-f70c-4f5d-9b70-4696fca55922',
	'b7adead7-1153-416d-8f12-446de10452c7',
	'Morumbi',
	'Rua do Abacate',
	42
);
insert into Endereco(id, cidade_id, bairro, rua, numero)
values (
	'11420f14-af47-4adc-b8d2-a9e029549e4a',
	'b7adead7-1153-416d-8f12-446de10452c7',
	'Novo Horizonte',
	'Rua dos Bobos',
	0
);
insert into Endereco(id, cidade_id, bairro, rua, numero)
values (
	'e7b4156a-5a45-41b2-9b52-affed8af051c',
	'b7adead7-1153-416d-8f12-446de10452c7',
	'Residencial União',
	'Rua Osvaldo da Silva',
	33
);
insert into Endereco(id, cidade_id, bairro, rua, numero)
values (
	'46de504e-ee0d-432b-b681-145dae3e2a12',
	'b7adead7-1153-416d-8f12-446de10452c7',
	'Bosque dos Eucaliptos',
	'Rua dos Vicentinos',
	57
);
insert into Endereco(id, cidade_id, bairro, rua, numero)
values (
	'0654d6b8-5ebf-46fb-9448-f67215f3e125',
	'b7adead7-1153-416d-8f12-446de10452c7',
	'Freitas',
	'Rua Maria de Fátima',
	125
);

commit;

-- Telefone
insert into Telefone(id, numero) values ('c0f47429-aef1-41bb-bd57-08f6d15904b5', '1140028922');
insert into Telefone(id, numero) values ('002d4df1-fa0f-4c88-8955-ad7ba2512da8', '12911238777');
insert into Telefone(id, numero) values ('d78ae573-5b18-463a-916b-59b215edc659', '12991767863');
insert into Telefone(id, numero) values ('001bc534-44ac-405e-bec9-9b060f5ae261', '12991217969');
insert into Telefone(id, numero) values ('dfd0bb64-9759-448e-855a-fd4c63a1ceec', '12932876361');
insert into Telefone(id, numero) values ('993f18e0-6580-4a20-a0b0-a72471baccd7', '12996335376');
insert into Telefone(id, numero) values ('2c0b9b30-5f13-4338-98df-eb1a4210ab5f', '1239933993');
insert into Telefone(id, numero) values ('53b02b5b-acd5-444c-aa0e-fbf30c40de3d', '12981855818');

commit;

-- Usuário
insert into Usuario(id, email, senha, nome, sexo, data_nasc, endereco_id)
values (
	'a06ade1e-0ade-4a7b-9fcd-84b691898dc3',
	'sara.silva@bol.com.br',
	'$2y$08$eVslJbqOjWE4E..px9XRdu95oOq3umUJDxr930Iopcj4gq6QYVxgK',
	'Sara Silva',
	'F',
	'1980-05-17 00:00:00',
	'3b87135b-585a-43a2-879f-d52159e84f4b'
);
insert into Usuario(id, email, senha, nome, sexo, data_nasc, endereco_id)
values (
	'7796e940-3188-4a53-8f74-24bd2e3296ab',
	'Csar78@live.com',
	'$2y$08$DPI46PxfCrcG46m9JeH9z.xrBb7i4bJnIK5e39rgt6sGjiqbpU60W',
	'César Franco',
	'M',
	'1974-12-01 00:00:00',
	'3b87135b-585a-43a2-879f-d52159e84f4b'
);
insert into Usuario(id, email, senha, nome, sexo, data_nasc, endereco_id)
values (
	'1f9d3092-2cba-4317-a6d8-7d6f32f80bee',
	'fec0sta@gmail.com',
	'$2y$08$fd5k7jKofhsAU9/jZixNWeG0TsUYQhZWOhS7t991V0CuXpGCA1E4m',
	'Feliciano Costa',
	'M',
	'1993-03-23 00:00:00',
	'fbcf0d9f-bda2-48cf-9d5d-708c70fc3dc3'
);
insert into Usuario(id, email, senha, nome, sexo, data_nasc, endereco_id)
values (
	'cadfb5c6-2732-4031-a966-e79284feac91',
	'nbia_moreira@hotmail.com',
	'$2y$08$a5a2sT9C1SU1hrbY5YnLbOJheBAVgogQREJJq/J5Z8JOa7ainorOm',
	'Núbia Moreira',
	'F',
	'1964-09-16 00:00:00',
	'e3fe7a2d-f70c-4f5d-9b70-4696fca55922'
);
insert into Usuario(id, email, senha, nome, sexo, data_nasc, endereco_id)
values (
	'2a0ebddb-1ca0-4832-adad-882cb7306537',
	'lorena79@hotmail.com',
	'$2y$08$bR3R/.EatXZeXbf7eyY.aO1WmN17PwTV5KSjDLMyLgs5gTQpCzqTG',
	'Lorena Braga',
	'F',
	'1984-05-22 00:00:00',
	'11420f14-af47-4adc-b8d2-a9e029549e4a'
);
insert into Usuario(id, email, senha, nome, sexo, data_nasc, endereco_id)
values (
	'6f72a884-4232-4ed3-a3ec-3cb414ba70c1',
	'deneval_santos71@gmail.com',
	'$2y$08$sue0qtacvVUPsBdVriVKGubIOUL9LG30aZgw6YawIUaFG0fr7D8ai',
	'Deneval Santos Neto',
	'M',
	'1970-03-25 00:00:00',
	'e7b4156a-5a45-41b2-9b52-affed8af051c'
);
insert into Usuario(id, email, senha, nome, sexo, data_nasc, endereco_id)
values (
	'01267a58-f9ed-496d-b1ac-ca115839ef6b',
	'cecimoreira99@outlook.com',
	'$2y$08$BAl/.AeQE2nUu2KCse1.a.SibkZqxzFnKyRUB6Gnsu/z7GNTVZQ4e',
	'Cecília Moreira da Silva',
	'F',
	'1990-05-22 00:00:00',
	'46de504e-ee0d-432b-b681-145dae3e2a12'
);
insert into Usuario(id, email, senha, nome, sexo, data_nasc, endereco_id)
values (
	'255f0015-bee7-4dff-a734-4567fffcdc04',
	'drhanschucrute@outlook.com',
	'$2y$08$FhBZLhg/J.96U2z6zrB5Ce5R61A6XrZMNQQ5I56aPHWpltcBTB/22',
	'Dr. Hans Chucrute',
	'M',
	'1984-12-03 00:00:00',
	'0654d6b8-5ebf-46fb-9448-f67215f3e125'
);

commit;

-- Telefones por Usuário
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'd72d6f93-ae52-40df-b9ed-d8949f6e45a4',
	'c0f47429-aef1-41bb-bd57-08f6d15904b5',
	'a06ade1e-0ade-4a7b-9fcd-84b691898dc3'
);
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'11f0bffe-78b8-4243-bb75-94dc75cbce86',
	'c0f47429-aef1-41bb-bd57-08f6d15904b5',
	'7796e940-3188-4a53-8f74-24bd2e3296ab'
);
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'f98d6d01-a786-438d-a1e5-a8f47564546a',
	'002d4df1-fa0f-4c88-8955-ad7ba2512da8',
	'1f9d3092-2cba-4317-a6d8-7d6f32f80bee'
);
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'5047e777-5f22-46ef-9706-9ab0cc3ae4db',
	'd78ae573-5b18-463a-916b-59b215edc659',
	'cadfb5c6-2732-4031-a966-e79284feac91'
);
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'defabab0-64e4-411d-98cc-43899e6c35f9',
	'001bc534-44ac-405e-bec9-9b060f5ae261',
	'2a0ebddb-1ca0-4832-adad-882cb7306537'
);
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'f678711a-ded5-4d3a-8c05-783ec812c711',
	'dfd0bb64-9759-448e-855a-fd4c63a1ceec',
	'6f72a884-4232-4ed3-a3ec-3cb414ba70c1'
);
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'4bef9e9e-35dd-4967-9fdc-47bf422321f1',
	'993f18e0-6580-4a20-a0b0-a72471baccd7',
	'01267a58-f9ed-496d-b1ac-ca115839ef6b'
);
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'dc532fe9-766b-43ec-8d05-74df3c296ce2',
	'2c0b9b30-5f13-4338-98df-eb1a4210ab5f',
	'01267a58-f9ed-496d-b1ac-ca115839ef6b'
);
insert into Telefone_Por_Usuario(id, telefone_id, usuario_id)
values (
	'bc76720b-897b-4f55-97ac-efbfd771db6a',
	'53b02b5b-acd5-444c-aa0e-fbf30c40de3d',
	'255f0015-bee7-4dff-a734-4567fffcdc04'
);

commit;

-- Fisioterapeuta
insert into Fisioterapeuta(id, id_usuario, data_admissao, salario)
values (
	'b7f3716e-bcce-4119-bea2-ea443be9a6cf',
	'255f0015-bee7-4dff-a734-4567fffcdc04',
	'2001-01-10 00:00:00',
	15390.59
);
insert into Fisioterapeuta(id, id_usuario, data_admissao, salario)
values (
	'1f0f2915-670e-4861-b048-d57062515905',
	'01267a58-f9ed-496d-b1ac-ca115839ef6b',
	'2006-03-01 00:00:00',
	4000.99
);

commit;

-- Pagamento
insert into Pagamento(id, id_fisioterapeuta, valor, data)
values (
	'46151f7c-5542-43e5-b86c-411987e0aed3',
	'b7f3716e-bcce-4119-bea2-ea443be9a6cf',
	(select salario from fisioterapeuta where id = 'b7f3716e-bcce-4119-bea2-ea443be9a6cf'),
	'2020-05-01 00:00:00'
);
insert into Pagamento(id, id_fisioterapeuta, valor, data)
values (
	'8341b617-bb4f-4e46-b8ad-d665c9ae5b92',
	'b7f3716e-bcce-4119-bea2-ea443be9a6cf',
	(select salario from fisioterapeuta where id = 'b7f3716e-bcce-4119-bea2-ea443be9a6cf'),
	'2020-04-01 00:00:00'
);
insert into Pagamento(id, id_fisioterapeuta, valor, data)
values (
	'b0c987ed-89ac-4d40-afda-45b7b53b3ab3',
	'1f0f2915-670e-4861-b048-d57062515905',
	(select salario from fisioterapeuta where id = '1f0f2915-670e-4861-b048-d57062515905'),
	'2020-05-01 00:00:00'
);

commit;

-- Paciente
insert into Paciente (id, id_usuario, anamnese)
values (
	'3a632ba5-403f-4e90-be01-a8b90194f6db',
	'a06ade1e-0ade-4a7b-9fcd-84b691898dc3',
	'Saúde perfeita, só frequenta a clínica pra tirar foto pro Instagram'
);
insert into Paciente (id, id_usuario, anamnese)
values (
	'8015c39e-5a02-4df9-84e8-4bcf54098195',
	'7796e940-3188-4a53-8f74-24bd2e3296ab',
	'Demonstra dificuldade em agaixar. Dores no nervo ciático.'
);
insert into Paciente (id, id_usuario, anamnese)
values (
	'a5d2562c-398c-420e-ab13-b2b11966da5d',
	'1f9d3092-2cba-4317-a6d8-7d6f32f80bee',
	'Reclama de fortes dores nas pernas, em especial na perna esquerda.'
);
insert into Paciente (id, id_usuario, anamnese)
values (
	'ca42f660-f24e-4c04-8e49-31630e51c971',
	'cadfb5c6-2732-4031-a966-e79284feac91',
	'Postura envergada. Dor na cervical.'
);
insert into Paciente (id, id_usuario, anamnese)
values (
	'c2a0c697-44e4-44be-a7d1-7e0d5e89d811',
	'2a0ebddb-1ca0-4832-adad-882cb7306537',
	'Provável caso de tendinite. Alega fazer muitos movimentos repetitivos. Dor nos braços.'
);
insert into Paciente (id, id_usuario, anamnese)
values (
	'44ce3cbb-7559-4096-a35b-bc95720e1ffb',
	'6f72a884-4232-4ed3-a3ec-3cb414ba70c1',
	'Queixa de dor no quadril. Provável caso de bursite.'
);

commit;

-- Planos
insert into Plano (id, nome, frequencia_semanal, valor_sugerido)
values (
	'ab58685d-ce76-4b74-a787-80e024e64d4f',
	'Pilates',
	1,
	79.9
);
insert into Plano (id, nome, frequencia_semanal, valor_sugerido)
values (
	'bc9a700e-e5dc-4965-a826-4d9ad179981e',
	'Pilates',
	2,
	119.9
);
insert into Plano (id, nome, frequencia_semanal, valor_sugerido)
values (
	'2ba7819b-f57f-422a-ae66-76eabecb1e70',
	'Pilates',
	3,
	179.9
);
insert into Plano (id, nome, frequencia_semanal, valor_sugerido)
values (
	'bfe3734c-5c01-456a-a203-8cd61aa83db2',
	'RPG',
	1,
	109.9
);
insert into Plano (id, nome, frequencia_semanal, valor_sugerido)
values (
	'8f13dc6c-a77a-4486-b5bd-67f43e9e407f',
	'RPG',
	2,
	176.9
);
insert into Plano (id, nome, frequencia_semanal, valor_sugerido)
values (
	'56e8bde8-2188-4e73-8425-c97c6bd5d6ed',
	'Terapia Manual',
	5,
	100
);

commit;

-- Matriculas
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'25a58563-59f9-49db-9048-de93721b31a1',
	'3a632ba5-403f-4e90-be01-a8b90194f6db',
	'ab58685d-ce76-4b74-a787-80e024e64d4f',
	'2019-11-01 00:00:00',
	false
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'15a90aec-492c-4cdd-afe3-d68227aa148e',
	'3a632ba5-403f-4e90-be01-a8b90194f6db',
	'bc9a700e-e5dc-4965-a826-4d9ad179981e',
	'2020-02-01 00:00:00',
	false
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'd77cac12-d5a6-4f8d-86fb-3f65f8acd075',
	'3a632ba5-403f-4e90-be01-a8b90194f6db',
	'2ba7819b-f57f-422a-ae66-76eabecb1e70',
	'2020-05-03 00:00:00',
	true
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'd7bd2afc-823c-4c89-b6fd-4995bfb31c2f',
	'8015c39e-5a02-4df9-84e8-4bcf54098195',
	'56e8bde8-2188-4e73-8425-c97c6bd5d6ed',
	'2020-05-15 00:00:00',
	true
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'af826af1-28bb-4d7b-b213-e89af9c4c002',
	'a5d2562c-398c-420e-ab13-b2b11966da5d',
	'bc9a700e-e5dc-4965-a826-4d9ad179981e',
	'2020-05-01 00:00:00',
	true
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'bdefb38e-b582-49b8-a359-f52b0046f68e',
	'ca42f660-f24e-4c04-8e49-31630e51c971',
	'bfe3734c-5c01-456a-a203-8cd61aa83db2',
	'2016-07-01 00:00:00',
	false
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'284201c7-dc06-40f6-832a-adc446495a4a',
	'ca42f660-f24e-4c04-8e49-31630e51c971',
	'8f13dc6c-a77a-4486-b5bd-67f43e9e407f',
	'2018-01-01 00:00:00',
	true
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'7272df62-5774-4cb1-a127-eef5477086af',
	'c2a0c697-44e4-44be-a7d1-7e0d5e89d811',
	'8f13dc6c-a77a-4486-b5bd-67f43e9e407f',
	'2020-04-21 00:00:00',
	true
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'af1a40ae-01ef-4637-b937-febf092e752d',
	'c2a0c697-44e4-44be-a7d1-7e0d5e89d811',
	'ab58685d-ce76-4b74-a787-80e024e64d4f',
	'2019-02-28 00:00:00',
	true
);
insert into Matricula (id, id_paciente, id_plano, data, status)
values (
	'b14720c2-2ed7-4913-94b5-c7ec5991f71f',
	'44ce3cbb-7559-4096-a35b-bc95720e1ffb',
	'56e8bde8-2188-4e73-8425-c97c6bd5d6ed',
	'2017-03-25 00:00:00',
	false
);

commit;








