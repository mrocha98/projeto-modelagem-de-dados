-- Dados de todos os usuários
select usr.nome, usr.sexo, date(usr.data_nasc) as data_nasc, 
	tel.numero as telefone, 
	concat(endr.rua, ', ', endr.numero, ' - ', endr.bairro) as endereco, cid.nome as cidade, uf.sigla as UF
from usuario usr
inner join telefone_por_usuario tel_p_usr	on usr.id = tel_p_usr.usuario_id 
left join telefone tel						on tel.id = tel_p_usr.telefone_id 
left join endereco endr						on usr.endereco_id = endr.id
inner join cidade cid						on endr.cidade_id = cid.id
inner join uf								on cid.uf_id = uf.id 
order by usr.nome ASC;

-- Total de usuários por sexo
select sexo, count(sexo) as total
from usuario
group by sexo;

-- Montante total de pagamentos recebidos e qtd de vezes em que recebeu
select usr.nome, sum(pag.valor) as montante, count(pag.id) as qtd
from usuario usr
inner join fisioterapeuta fisio		on usr.id = fisio.id_usuario 
inner join pagamento pag			on pag.id_fisioterapeuta = fisio.id
group by usr.nome
order by usr.nome ASC; 

-- Pacientes e seus diagnósticos
select usr.nome, pac.anamnese
from usuario usr
inner join paciente pac		on usr.id = pac.id_usuario
order by usr.nome asc;


-- Matrículas
select usr.nome as paciente, plan.nome as plano, plan.frequencia_semanal as freq_sem, 
	mat.status, mat.data
from usuario usr
inner join paciente pac		on usr.id = pac.id_usuario
inner join matricula mat	on pac.id = mat.id_paciente 
inner join plano plan 		on plan.id= mat.id_plano
order by usr.nome asc;


-- Quantidade de matrículas ativas por plano
select plan.nome as plano, count(mat.id) as qtd
from usuario usr
inner join paciente pac		on usr.id = pac.id_usuario
inner join matricula mat	on pac.id = mat.id_paciente 
inner join plano plan 		on plan.id= mat.id_plano
group by plan.nome, mat.status
having mat.status = true
order by plan.nome ASC;


-- Pacientes que moram na Av. Andrômeda, Residencial Jardim Satélite - São José dos Campos, SP
-- e com matrícula ativa em Pilates
select usr.nome as paciente
from usuario usr
inner join paciente pac 	on usr.id = pac.id_usuario 
inner join matricula mat	on pac.id = mat.id_paciente 
inner join plano plan 		on plan.id = mat.id_plano and plan.nome = 'Pilates' and mat.status = true
inner join endereco endr	on usr.endereco_id = endr.id and endr.bairro = 'Residencial Jardim Satélite'
inner join cidade cid		on endr.cidade_id = cid.id and cid.nome = 'São José dos Campos'
inner join uf				on cid.uf_id = uf.id and uf.sigla = 'SP';


