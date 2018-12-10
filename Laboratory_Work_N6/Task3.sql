
alter table grupe add Sef_grupa int, Prof_Indrumator int



--select   Id_Grupa, max(Studenti.Average) as Maximum, studenti_reusita.Id_Student from studenti_reusita
--join(select distinct Id_Student, Avg(Nota) as Average
--from studenti_reusita
--group by Id_Student) as Studenti
--on studenti_reusita.Id_Student = Studenti.Id_Student
--group by Id_Grupa,studenti_reusita.Id_Student
--order by cast(avg(Nota*1.0) as decimal(4,2)) desc


DECLARE c1 CURSOR FOR 
SELECT id_grupa FROM grupe 

DECLARE @gid int
    ,@sid int
    ,@pid int

OPEN c1
FETCH NEXT FROM c1 into @gid 
WHILE @@FETCH_STATUS = 0
BEGIN
 SELECT TOP 1 @sid=id_student
   FROM studenti_reusita
   WHERE id_grupa = @gid and Id_Student NOT IN (SELECT isnull(sef_grupa,'') FROM grupe)
   GROUP BY id_student
   ORDER BY cast(AVG(Nota*1.0) as decimal(6,4)) DESC

 SELECT TOP 1 @pid=id_profesor
      FROM studenti_reusita
      WHERE id_grupa = @gid AND Id_profesor NOT IN (SELECT isnull (prof_indrumator, '') FROM grupe)
      GROUP BY id_profesor
      ORDER BY count (DISTINCT id_disciplina) DESC, id_profesor
 
 UPDATE grupe
    SET   sef_grupa = @sid
      ,prof_indrumator = @pid
  WHERE Id_Grupa=@gid
 FETCH NEXT FROM c1 into @gid 
END

CLOSE c1
DEALLOCATE c1

select * from grupe

