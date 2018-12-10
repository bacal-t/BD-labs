## Databases Laboratory Work Nr.4


### Prerequisites:
  - Microsoft SQL Server 2012
  - Oracle 11g/12c

### Objectives:
  - T-SQL and Oracle data types and build-in functions
  - Constraints
  - Creation, rename and update table
  - SQL Server Data Types and Functions
  - Query and Subquery
  - Agregate Functions
  
  
### Tasks : 

1.Find out all the data about groups from faculty  

2.Show the list of disciplines in descending order of number of hours  

16.Provide the name and surname of the students who have studied lessons less than 60 hours,
as well as the identities of the teachers who taught them.

21.How many grades have each of students. Show the name and surname 

22.Show the number of disciplines that are taught by each professor. (Nume_Profesor, Prenume_Profesor) 

24.Display the list of disciplines(Disciplina) that is taught at least 2 professors. 

### Implementation:
**Task 1**  

For solving I performed a simple query to universitatea database. I used * , which means to display all items from grupe table. 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N4/Screens/Ex1.PNG) 

**Task 2** 

In this example I used another options that I learned at this course which are called **alias**, in my case : **d**.
This feature helps me to reduce typing and make shorter the query. 
Also , for sorting and displaying in desceding order I used **order by** inn function of my condition. 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N4/Screens/Ex2.PNG) 

**Task 16**

According to database and our tables we can see that for solving this example we must concatenate some tables and extract from final
table the information that we need. 
Join - concatenate operation in SQL based on attributes. So , I used here **inner join** for getting information according to the task ,
I performed inner join between *studenti_reusita* and *discipline* getting the Id_Disciplina in this way for Id_Student and Id_Profesor 
from *profesori* table. After that exatract the tuples that I need and I used Distinct for avoiding duplications.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N4/Screens/Ex16.PNG) 

**Task 21**

Here , I have applied another feature of SQL that is called subquery and more precious in *FROM* clause. First , I performed an *select*
in the FROM clause for getting the  Id_Student and NrOfGrades for each of them that was grouped by Id_Student and storing these values in table1 , which is an alias. For counting the NrOfGrades I have used the agregate function count().
Having the Id_Student and NrOfGrades from *studenti_reusita* we should perform the join with *studenti* for displaying the Name, Surname. 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N4/Screens/Ex21.PNG) 

**Task 22**

In this task I have counted distinct number of discplines and selected the Id_Profesor. So , we need the Name and Surname of Professors
for this condition I should perform an join between *studenti_reusita* and *profesori* based on *Id_Profesor* attribut.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N4/Screens/Ex.22.PNG) 

**Task 24**

For obtaining result on this task I have created more than one select for making little bit easy processing the data through tables. 
In first select I have obtained the *Id_Disciplina* and NrOfProfessors from *studenti_reusita* and storing to table1. Second, I put 
condition in where clause and select those Disciplines that have more than 1 professors. Last select for displaying the Disciplines
after joining *studenti_reusita* and *discipline* based on *Id_Disciplina* .

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N4/Screens/Ex.24.PNG) 

### Observation:
 - I have solved more than 3 tasks in order to better understanding how to write queries. (24 queries)

### Conclusion: 
   In this laboratory work I obtained skills operatig with queries(T-SQL language). In this database I had some tables which are linked between them with
keys, for getting information from them. So, I understood better the purpose of the primari keys in projection of database: provide quicker search , integrity of data is maintained.  
For organizing and easy orientation through tables I used Database Diagram which helped me to see very quickly what coloumns are in  each table. Also, multiple joins and subqueries are little bit different according to performance, because when we have a small database joins work quick , big data base subqueries a more efficient. All subqueries can be written using the where clause.
