select * from pessoa;
select * from aluno;
select * from professor;
select * from turma;

Select  t.nome Turma,
		pp.nome Professor,
        pa.nome Aluno
FROM turma t
INNER JOIN professor p on (p.turma_id = t.id) 
INNER JOIN aluno a on (a.turma_id = t.id) 
INNER JOIN pessoa pp on (p.pessoa_id = pp.id) 
INNER JOIN pessoa pa on (a.pessoa_id = pa.id) 
;
/*O que eu quero: (qual é a turma, quem é o professor e quais são os alunos);
a table principal será turma (FROM turmas t);
Com o Inner Join, ele trás as informações em que a as tabelas tem amarração(p.turmas_id)
pega as informações do professor e alunos da tabela turmas;
pega as informações do professor e alunos da tabela turmas;
pega as informações do professor e alunos da tabela pessoas;
pega as informações do professor e alunos da tabela pessoa;*/


