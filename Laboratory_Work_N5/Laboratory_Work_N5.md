## Databases Laboratory Work Nr.5


### Prerequisites:
  - Microsoft SQL Server 2012
  - Oracle 11g/12c

### Objectives:
  - T-SQL and Oracle data types and build-in functions
  - SQL Server Data Types and Functions
  - Query and Subquery
  - Agregate Functions
  - While, Try-Catch, If-Else
  
  
### Tasks : 

1. Fill in the following code to display the biggest number of the three numbers shown. 

2. Display the first 10 data (Name, Surname of student) in function of Grade value (except 6 and 8) of student on first evaluation at
Database , using IF-ELSE statement. To use variables. 

3. Solve the same task,1, using CASE statement.

4. Modify the exercises from task 1 and 2 for including error processing with TRY-CATCH and RAISERROR.

### Implementation:
**Task 1**  

For solving this task I have read the documentation and understood how work with IF-ELSE statement. So, in this task I have to determine 
the biggest number from 3 given numbers. I solved this example with IF-ELSE, checking between them with comparison symbols.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N5/Screens/Task1.PNG) 

**Task2**

In this example I tried to solve with IF-ELSE , but it was too hard or something is wrong with this example. I solved this with SQL Query
operating with couple of joins and 'AND' for setting conditions. First, I displayed all of students with all type of grades. After, I put the conditions given in the example 'Grade<>6 AND Grade <>8'. According to the condition we should write our own interpretation for this example , so I chose to use the ternary operator iif.

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N5/Screens/Task2.PNG) 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N5/Screens/Task2_1.PNG) 

![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N5/Screens/Task2_2.PNG) 

**Task3** 

Another feature of operating with statements in T-SQL is CASE - goes through conditions and return a value when the first condition is met (like an IF-THEN-ELSE statement). So, once a condition is true, it will stop reading and return the result. Here, I solved the example 1 with CASE statement which is very useful, but  IF-ELSE and Case are just completely different. IF statements are used to control flow of steps in a batch and a CASE statement determines which value to use in a column of a select statement. 

 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N5/Screens/Task3.PNG) 
 
 **Task4**

In this task I have modified the operation in setting the variables for getting an error as result, multiplication with division. So, for getting an error I put division by 0 which should obtain an error. Also , I included here TRY-CATCH Block and display system error, ERROR_LINE AND ERROR_NUMBER. For some personalized error we can use RAISERROR.

 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N5/Screens/Task4.PNG)
 
 ![](https://github.com/bacal-t/BD-labs/blob/master/Laboratory_Work_N5/Screens/Task4_1.PNG) 
 
 
 **Conclusion**
 
 In this laboratory work I obtained skills working with Procedural Instructions of T-SQL. Also, I learned about blocks and variables and how to declare, initialize and operate with variables. Some specific for this laboratory work I learned about selective structure CASE, alternative structure IF-ELSE, repetitive structure WHILE. How specify and catch the errors.
