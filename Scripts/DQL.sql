-- Dados de todos os usuários
select usr.nome, usr.sexo, date(usr.data_nasc) as data_nasc,
	tel.numero as telefone,
	concat(endr.rua, ', ', endr.numero, ' - ', endr.bairro) as endereco, cid.nome as cidade, uf.sigla as UF
from usuario usr
inner join telefone_por_usuario tel_p_usr	on usr.id = tel_p_usr.usuario_id
left join telefone tel on tel.id = tel_p_usr.telefone_id
left join endereco endr	on usr.endereco_id = endr.id
inner join cidade cid	on endr.cidade_id = cid.id
inner join uf on cid.uf_id = uf.id
order by usr.nome ASC;

-- Total de usuários por sexo
select sexo, count(sexo) as total
from usuario
group by sexo;

-- Montante total de pagamentos recebidos e qtd de vezes em que recebeu
select usr.nome, sum(pag.valor) as montante, count(pag.id) as qtd
from usuario usr
inner join fisioterapeuta fisio on usr.id = fisio.id_usuario
inner join pagamento pag on pag.id_fisioterapeuta = fisio.id
group by usr.nome
order by usr.nome ASC;

-- Pacientes e seus diagnósticos
select usr.nome, pac.anamnese
from usuario usr
inner join paciente pac on usr.id = pac.id_usuario
order by usr.nome asc;


-- Matrículas
select usr.nome as paciente, plan.nome as plano, plan.frequencia_semanal as freq_sem,
	mat.status, mat.data
from usuario usr
inner join paciente pac on usr.id = pac.id_usuario
inner join matricula mat on pac.id = mat.id_paciente
inner join plano plan on plan.id= mat.id_plano
order by usr.nome asc;


-- Quantidade de matrículas ativas por plano
select plan.nome as plano, count(mat.id) as qtd
from usuario usr
inner join paciente pac on usr.id = pac.id_usuario
inner join matricula mat on pac.id = mat.id_paciente
inner join plano plan on plan.id= mat.id_plano
group by plan.nome, mat.status
having mat.status = true
order by plan.nome ASC;


-- Pacientes que moram na Av. Andrômeda, Residencial Jardim Satélite - São José dos Campos, SP
-- e com matrícula ativa em Pilates
select usr.nome as paciente
from usuario usr
inner join paciente pac on usr.id = pac.id_usuario
inner join matricula mat on pac.id = mat.id_paciente
inner join plano plan on plan.id = mat.id_plano and plan.nome = 'Pilates' and mat.status = true
inner join endereco endr on usr.endereco_id = endr.id and endr.bairro = 'Residencial Jardim Satélite'
inner join cidade cid on endr.cidade_id = cid.id and cid.nome = 'São José dos Campos'
inner join uf on cid.uf_id = uf.id and uf.sigla = 'SP';


-- Mensalidades que não foram pagas
select usr.nome as paciente, plan.nome as plano, mens.valor_solicitado, date(mens.data) as data
from usuario usr
inner join paciente pac	on usr.id = pac.id_usuario
inner join matricula mat on pac.id = mat.id_paciente
inner join plano plan on plan.id= mat.id_plano
inner join mensalidade mens	on mens.id_matricula = mat.id and mens.paciente_pagou = false;


-- Mensalidades da paciente Lorena Braga
select date(mens.data) as data, mens.valor_solicitado, mens.paciente_pagou
from mensalidade mens
inner join matricula mat on mens.id_matricula = mat.id
inner join paciente pac on mat.id_paciente = pac.id
inner join usuario usr on usr.id = pac.id_usuario and usr.nome = 'Lorena Braga';


-- Todos exercícios
select exr.nome as exercicio, eqp.nome as equipamento
from exercicio exr
left join equipamento eqp on exr.id_equipamento = eqp.id
order by exr.nome ASC;


-- Quantidade de exercícios por equipamento
select eqp.nome as equipamento, count(exr.id) as qtd
from exercicio exr
inner join equipamento eqp on exr.id_equipamento = eqp.id
group by eqp.nome
order by eqp.nome ASC;


-- Exercícios que não utilizam um equipamento
select exr.nome as exercicio
from exercicio exr
left join equipamento eqp on exr.id_equipamento = eqp.id
where exr.id_equipamento is null;


-- Terapias
select ter.data, pla.nome as plano, usrPAC.nome as paciente,
	ter.paciente_compareceu as compareceu, usrFIS.nome as fisioterapeuta
from matricula mat
inner join paciente pac on pac.id = mat.id_paciente
inner join plano pla on pla.id = mat.id_plano
inner join terapia ter on ter.id_matricula = mat.id
inner join fisioterapeuta fis on fis.id = ter.id_fisioterapeuta
inner join usuario usrPAC	on usrPAC.id = pac.id_usuario
inner join usuario usrFIS on usrFIS.id = fis.id_usuario
order by ter.data DESC;
