EXEC sp_addumpdevice 'DISK','BACKUP_LOG','D:\Sql Server\BACKUP\Backup_Lab11\exercitiul3.bak'

BACKUP LOG universitatea
TO BACKUP_LOG
WITH FORMAT,
	 MEDIANAME = 'Lab11_Task3',  
      NAME = 'Transactions Log Backup of universitatea'


