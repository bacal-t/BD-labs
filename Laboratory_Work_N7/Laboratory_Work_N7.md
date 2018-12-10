## Databases Laboratory Work Nr.7


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
  - Diagrams, Schemas and Synonyms
  
 ### Tasks: 
 
 1. Create a database diagram , using the standard form of vizualization, structure which is described at the beginning practice items in
 4 chapter. 
 
 2. Add the references constraints ( for **studenti** and **profesori** tables) needed 'Sef_Grupa' , 'Prof_Indrumator' columns from **grupe** table. 
 
 3. At the performed diagram , should to add **orarul** table. Table **orarul** contains the 'disciplinei' identifier (Id_Disciplina) , profesor's identifier(Id_Profesor) and study block (Bloc). Table key is formed by fields: Id_Grupa, Zi, Ora, Auditoriu. 
 
 4. **Orarul** table should contains 2 secondary keys: (Zi, Ora, Id_Grupa, Id_Profesor), (Zi, Ora, Id_Grupa, Id_Disciplina). 
 
 5. In the diagram should be added the PK-FK for Id_Disciplina, Id_Profesor, Id_Grupa attributes from **orarul** table with those attributes from tables. 
 
 6. Create the new 3 schemas : cadre_didactice, plan_studii, studenti. Transfer profesori from dbo schema to 'cadre_didactice' schema , discipline to 'plan_studii', studenti and studenti_reusita to 'studenti'. Write the needed SQL instructions. 
 
 7. Modify the 2-3 queries from chapter 4 on the 'universitatea' database for explicitly addressing at the tables, taking into account that tables are in the new schemas. 
 
 8. Create synonyms for simplify the queries performed in the previous item and perform the queries , using the created synonyms. 
 
 ### Implementation:
 
 **Task 1** 
 
 Database Diagram , for creating this , we just access from Management Studio the Database Diagrams folder -> right click -> New Diagram -> select the needed tables.
 
 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task1.PNG) 
 
 **Task 2** 
 
 In this task we can manually do the refereces constraints. Just Select the field and keep pressed till the needed field from another table. 
 
 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task2.PNG) 
 
 **Task 3** 
 
 Here , also I have manually performed the task. Keep pressed the CTRL key and select the fields which perform the key for 'orarul' table. 
 
  ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task3.PNG) 
  
 **Task 4** 
  
  Adding the 2 secondary keys. Right click -> Indexes/Keys -> Add , according to the fields given and created them Unique. I created them unique beacuse secondary keys mean, some fields that not enrolled in the primary key but exist in the table. According to our tasks I don't have such fields and so I created them Unique, which can be considerated as secondary key. 
  
   ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task4.PNG)
   
**Task 5**  

Defining the PK-FK for tables, I have also chose the manually way , because is easier and take short time. 

 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task5.PNG) 
 
**Task 6** 

In this task , first of all I have created my schemas: cadre_didactice, plan_studii and studenti. For this schemas I chose in role of owner 'dbo'. So, next for transfering the tables into these schemas I wrote SQL instructions. 

 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task6_1.PNG) 
 
 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task6_2.PNG) 
  
 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task6_3.PNG) 
   
 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task6_4.PNG)  
 
 **Task 7** 
 
 For solving this task I random chose 2-3 quaries from Laboratory Work N.4 and rewrite them according to the given form. 
 
  ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task7_1.PNG) 
  
  ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task7_2.PNG)
  
  ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task7_3.PNG) 
  
 **Task 8** 
 
 Before performing this task I have read about synonyms what are their purpose for T-SQL instructions. These are vey useful for writing queries and don;t writing the explicitly location of tables. Also, they are very useful in cases of having more servers which are different located and we need access databases. 
 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task8.PNG)

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task8_1.PNG) 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task8_2.PNG) 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N7/Screens/Task8_3.PNG) 


**Conclusion:** 

In this laboratory work I obtained others useful skills operating with Management SQL Studio, creating the diagrams, schemas and synonyms. I learned how write the queries using the explicit location of tables 'universitatea.studenti.studenti'.Schemas are the  way to separate database users from database object owners. In one schema we can include a lot of tables.
