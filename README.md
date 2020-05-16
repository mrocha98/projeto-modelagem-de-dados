# Projeto de Modelagem de Dados - Clínica de Fisioterapia

![GitHub](https://img.shields.io/github/license/mrocha98/projeto-modelagem-de-dados?style=flat-square)

Projeto final da disciplina de Arquitetura e Modelagem de Dados - BD FATEC 2020

## Introdução

![Dr. Hans Chucrute](./Assets/dr-hans-chucrute.png)

O famoso Dr. Hans Chucrute contratou uma empresa de desenvolvimento de software para automatizar os processos administrativos da sua clínica de fisioterapia.

O cliente gostaria de que fosse construído um banco de dados, pois atualmente tudo é organizado de forma manual, com uma agenda física, que é facilmente suscetível a erros.

## Levantamento de Requisitos

Depois de conversar com o cliente, foram levantadas as seguintes informações:

- É necessário guardar informações básicas, que são comuns tanto aos pacientes, quanto aos fisioterapeutas. São elas:
  - Nome, obrigatório;
  - E-mail, obrigatório e único, será utilizado para logar no futuro sistema web;
  - Senha, obrigatória;
  - Data de nascimento, obrigatória;
  - Sexo, obrigatório;
  - Telefones para contato, pelo menos um;
  - Endereço, opcional;
- Todo paciente possui um diagnóstico inicial, mas o doutor prefere usar o termo [anamnese](<https://pt.wikipedia.org/wiki/Anamnese_(sa%C3%BAde)>), pois soa mais profissional.
- Para os fisioterapeutas, é preciso guardar:
  - Data de admissão, obrigatória;
  - Data de demissão, opcional;
  - Salário, obrigatório;
  - Datas dos pagamentos e quanto foi pago;
- Atualmente a clínica só trabalha com três tipos de planos, terapia manual, pilates e RPG (não é o de mesa). Os planos possuem:
  - Nome, obrigatório;
  - Frequência semanal, obrigatória;
  - Uma descrição, opcional;
  - Um valor sugerido de mensalidade, obrigatório;
- Um paciente pode se matricular em quantos planos quiser, assim como um fisioterapeuta pode atender em qualquer plano;
- Para cada matrícula, será gerada uma mensalidade, que deve conter:
  - O valor solicitado, obrigatório;
  - O valor pago, obrigatório;
  - A data da mensalidade, obrigatória;
  - Um comentário opcional;
- Cada sessão de terapia precisa conter:
  - Qual paciente foi atendido, obrigatório;
  - Qual fisioterapeuta atendeu, obrigatório;
  - A data em que a sessão ocorreu, obrigatória;
  - Se o paciente compareceu, obrigatório;
  - Um comentário opcional;
- O doutor também mencionou que, para fins estatísticos, seria interessante anotar quais exercícios foram feitos em cada sessão, porém é importante ter em mente que nem toda sessão tem exercícios, como por exemplo a primeira, onde só é feita uma entrevista com o paciente.
- Quanto aos exercícios:
  - Possuem um nome, obrigatório;
  - Podem utilizar um equipamento, quem também possuem um nome, obrigatoriamente;
