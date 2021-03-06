--1.1--
create procedure lab9_task1_1 
@Tip_Evaluare varchar(20) = 'Testul 2',
@Data_Evaluare int = 2018,
@Disciplina varchar(30) = 'Baza de date'
as
select count(Id_Student) as Passed
 from (studenti.studenti_reusita sr inner join plan_studii.discipline d on sr.Id_Disciplina=d.Id_Disciplina)
 where Tip_Evaluare = @Tip_Evaluare and year(Data_Evaluare) = @Data_Evaluare and Disciplina= @Disciplina

 --1.2--
 create procedure lab9_task1_2
 @Disciplina1 varchar(50) = 'Baze de date',
 @Data_Evaluare_1 int = 2018,
 @Data_Evaluare_2 int = 2019
 
 as

(select COUNT(distinct Id_Student) as numar_studenti,AVG(Nota) as media from
(select Id_Student,Id_Disciplina,Nota,Data_Evaluare from studenti_reusita ) sr,
(select Id_Disciplina,Disciplina from discipline) d
where sr.Id_Disciplina=d.Id_Disciplina and Disciplina='Baze de date ' and (year(Data_Evaluare)=2018 or  year (Data_Evaluare)=2019  )
group by sr.Id_Disciplina)
