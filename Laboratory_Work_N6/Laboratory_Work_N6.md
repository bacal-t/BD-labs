## Databases Laboratory Work Nr.6


### Prerequisites:
  - Microsoft SQL Server 2012
  - Oracle 11g/12c

### Objectives:
  - T-SQL and Oracle data types and build-in functions
  - SQL Server Data Types and Functions
  - Query and Subquery
  - Agregate Functions
  - While, Try-Catch, If-Else
  - Creating tables and indexes

  
  
### Tasks : 

1. Write an T-SQL instruction, which will populate **Adresa_Postala_Profesor** column from **profesori** table with 'mun.Chisinau' value
where it is NULL.

2. Modify the **grupe** for respecting the following requirements:

- a) 'Cod_Grupa' field should accept only unique values and doesn't accept the NULL values. 

- b) To respect the fact that primary key is set on 'Id_Grupa'.

3. Add 2 columns 'Sef_grupa' and 'Indrumator' to **grupe** table both of INT type. Populate the columns with canditates which follow the
following criteria:

- a) Group monitor should has the best mark from group of all types of evaluation at all courses. One student couldn't be the monitor for
two groups.
- b) Indrumator Professor should teach the maximum courses. If he don't exist it is choosen the Professor with the lowest 'Id_Professor'.
One professor couldn't be the 'Indrumator' for two groups.

4. Write the T-SQL instruction which will increase the 'Nota' with 1 unit. The maximum 'Nota' (10) couldn't be increased.

5. Create the **profesori_new** table which will include the following columns: Id_Profesor, Nume_Profesor, Prenume_Profesor, Localitate,
Adresa_1, Adresa_2.

- a) Id_Profesor column should be defined as primari key and should include an Clustered Index.

- b) Localitate column should has the DEFAULT = 'mun Chisinau' property.

- c) To insert the data from **profesori** table to **profesori_new** table following the criteria:
  Id_Profesor = Id_Profesor 
  
  Nume_Profesor = Nume_Profesor
  
  Prenume_Profesor = Prenume_Profesor
  
  Localitate = Name of the locality
  
  Adresa_1 = street name
  
  Adresa_2 = house number or apartment.
  
 6. To insert in the 'orarul' table the data for the 'Grupa = CIB171'(Id_Grupa = 1) for Monday. All courses will be teaching in the 
 B block, following the criteria : 
 
 (Id_Disciplina =107, Id_Profesor = 101, Ora = '08:00', Auditoriu = 202) 
 
 (Id_Disciplina =108, Id_Profesor = 101, Ora = '11:30', Auditoriu = 501) 
 
 (Id_Disciplina =109, Id_Profesor = 117, Ora = '13:00', Auditoriu = 501)
 
 7. Write the T-SQL instructions for populating the 'orarul' table for 'Group = INF171' ,Monday. Should be uused the SELECT instruction 
 for populating with the following data  : 
 
 (Ora = '08:00' , Disciplina = 'Structuri de date si algoritmi', Profesor = 'Bivol Ion')
 
 (Ora = '11:30' , Disciplina = 'Programe aplicative', Profesor = 'Mircea Sorin') 
 
 (Ora = '13:00' , Disciplina = 'Baze de date', Profesor = 'Micu Elena')
 
 8. Perform indexes for the **universitatea** database for easy searching in it. The new indexes should bw physically located in 
 **userdatafgroup1**. 

### Implementation:
**Task 1** 

For performing this task I have used the update T-SQL instruction and for setting the new value i have used set instruction.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N6/Screens/Task1.PNG) 

**Task 2** 

Using Alter table option I have set the new constraint to 'grupe' table , column 'Cod_Grupa' and I agve name for find easier this, 'set_unique'. The contraint that I have set is 'Unique'.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N6/Screens/Task2.PNG) 

**Task 3** 

For performing this task , first I have used 'Alter table' option for adding new two columns which are 'Sef_grupa' and 'Indrumator'
both of them of INT type. So, for the given task in a point I tried to use the SELECT instruction , but it is huge ones and looks like
ambiguos. In this way , I found the notion Cursor which means it is  because in sub query we can fetch record row by row so we use cursor to fetch records. Also, I have declared some variables for storing in them data for inserting the needed value. So , I declared the cursor(a pointer), selected the Ids from grupe , stored them in the @gid variable and asign to the Students which are NOT IN the
Null section, group by Id_Student and order by the mark in desceding order. Also, for b item I have counted the Number of hours and
ordered desceding and if they are more than one I have chose who has the minimum Id_Profesor according to the task.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N6/Screens/Task3.PNG)  

**Task 4** 

For this task I alse have used the Update option and set instruction. 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N6/Screens/Task4.PNG) 

**Task 5** 

For this task I have read some additional information about T-SQL instructions of operating with strings. So, I have found about
processing strings and solving my tasks the following functions : substring() and charindex(). Substring function extract characters from string at the given position. Charindex searches for one character expression inside a second character expression, returning the starting position of the first expression if found. Also, to reduce the code and to increase performance I have used the ternary operator for takind into account the both cases, IIF operator. So, operating with this functions I have performed the task and inserting the information in the given order and set the Clustered Index for performing search easier.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N6/Screens/Task5.PNG) 

**Task 6** 

In this task I have created the 'orarul' table with constrains like 'DEFAULT' and inserting the data in the table. 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N6/Screens/Task6.PNG) 

**Task 7** 

In this task I have to populate the 'orarul' table with some information about 'INF171' group. According to the task I have used the select T-SQL instruction with joining and aliases.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N6/Screens/Task7.PNG) 

**Task 8**

For getting a easier and optimized way of searching we should in this task to create indexes on tables of database. Also , this indexes will help not only for searchin , but also for maintaining the database. So , for performing this given task I used 'ALTER' option for checking if such a group file exist , if not create one. I set the size and the path. I don't know if this way will help for searching process and I added only one index , nonclustered for one table. For making sure that it was added I used special command 'sysindexes'.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N6/Screens/Task8.PNG) 


**Conclusion:** 

In this laboratory work I obtained skills operating with tables and idexes and what are purpose for indexing. Also, I find out about some new options in Transact SQL which works like a pointer to the table and select the needed one. Declare cursor, Open cursor, Fetch row (separate fetches may be executed for multiple rows) and Close cursor , "FETCH". Moreover , I learned how change the information in table without deleting it and creating again, which is "UPDATE" and "SET". Operating with indexes I can point out some observations about them: it makes easy search with select query, but takes additional space from the disk and I can say that they should be created only when is needed.
