	EXEC sp_addumpdevice 'DISK','device02','D:\Sql Server\BACKUP\Backup_Lab11\exercitiul2.bak'

	BACKUP DATABASE universitatea TO device02 WITH DIFFERENTIAL

