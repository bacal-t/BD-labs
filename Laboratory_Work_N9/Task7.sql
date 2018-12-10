
CREATE FUNCTION lab9_task7 (@data_birth DATE )
RETURNS INT
 BEGIN
 DECLARE @varsta INT
 SELECT @varsta = (SELECT (YEAR(GETDATE()) -
							 YEAR(@date_birth) - 
								CASE WHEN (MONTH(@date_birth) > MONTH(GETDATE())) OR
											 (MONTH(@date_birth) = MONTH(GETDATE()) AND DAY(@date_birth) > DAY(GETDATE()))
								THEN  1
								ELSE  0
								 END))
 RETURN @varsta
 END

 select dbo.lab9_task7('2000-01-01')
