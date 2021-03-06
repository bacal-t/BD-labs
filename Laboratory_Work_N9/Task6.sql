CREATE FUNCTION lab9_task6_11(@disciplina VARCHAR(20), @data_like varchar(20), @nota SMALLINT)
RETURNS TABLE
AS
RETURN
(SELECT distinct profesori.Nume_Profesor ,profesori.Prenume_Profesor
FROM studenti.studenti_reusita join profesori
on studenti.studenti_reusita.Id_Profesor=profesori.Id_Profesor
 join discipline
on studenti.studenti_reusita.Id_Disciplina=discipline.Id_Disciplina
where discipline.Disciplina=@disciplina and studenti.studenti_reusita.Data_Evaluare like @data_like and studenti.studenti_reusita.Nota<@nota)

--select * from lab9_task6_11('Baza de date','2018-01-10', 10)

create function lab9_task6_30 (@disciplina varchar(20), @tip_evaluare varchar(20), @data1 varchar(20), @data2 varchar(20))
returns table
as
return
(select count(x.Id_Student) "No of students", avg(x.reusita_curenta) "Media curenta totala"
from
(select distinct r.Id_Student, t.reusita_curenta
from studenti.studenti_reusita r join discipline d
on r.Id_Disciplina=d.Id_Disciplina
join (select r.id_student, avg(r.nota) as reusita_curenta
	  from studenti.studenti_reusita r
	  where r.Tip_Evaluare=@tip_evaluare
	  group by r.Id_Student) as t
on r.Id_Student=t.Id_Student
where d.Disciplina=@disciplina and r.Data_Evaluare like @data1 and r.Data_Evaluare like @data2) as x)

--select * from lab9_task6_30 (parameters)
