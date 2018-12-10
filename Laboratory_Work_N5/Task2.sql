use universitatea
declare @nota1 int , @nota2 int
set @nota1 = 6
set @nota2 = 8
select top 10 s.Nume_Student, s.Prenume_Student, sr.Nota
from studenti s inner join studenti_reusita sr
on s.Id_Student = sr.Id_Student
inner join discipline d 
on sr.Id_Disciplina = d.Id_Disciplina
where Tip_Evaluare = 'Testul 1' and d.Disciplina = 'Baze de date' and Nota in ( iif (Nota<>@nota1 and nota<>@nota2, Nota,null))



