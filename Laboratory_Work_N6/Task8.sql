--exec sp_helpindex universitatea

ALTER DATABASE universitatea 
ADD FILEGROUP userdatafgroup1  
GO  
ALTER DATABASE universitatea  
ADD FILE   
(  
    NAME = IndexLab6,  
    FILENAME = 'D:\Sql Server\IndexLab6\userdatafgroup1.ndf',  
    SIZE = 10MB,  
    MAXSIZE = 100MB,  
    FILEGROWTH = 10%  
)   
TO FILEGROUP userdatafgroup1;  
GO

create nonclustered index create_index on grupe(Id_Grupa) on [userdatafgroup1]

--select * from sys.indexes