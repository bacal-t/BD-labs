use master 
go
restore database universitatea_lab112
from device01
with norecovery,
move 'universitatea' to 'D:\Sql Server\BD_lab11\universitatea_lab11.mdf',
move 'universitatea_log' to 'D:\Sql Server\BD_lab11\universitatea_lab11.ldf'
go

restore database universitatea_lab11
from device02
with norecovery,
move 'universitatea' to 'D:\Sql Server\BD_lab11\universitatea_lab11.mdf'

restore log universitatea_lab11 from BACKUP_LOG with recovery



restore filelistonly from device01;
restore database universitatea_lab11
with replace,norecovery,
move universitatea to 'D:\Sql Server\BD_lab11',
move 'universiteat_lab11_File2.ndf' to 'D:\Sql Server\BD_lab11',
move 'universiteat_lab11_log.ldf' to 'D:\Sql Server\BD_lab11'


declare @db sysname = 'universitatea'
select * from msdb.dbo.restorehistory where destination_database_name = @db

