SELECT CONCAT('public ', 
				case when data_type in ('varchar', 'nvarchar', 'char', 'text') then 'string' 
				     when data_type in ('int', 'tinyint') then 'int' 
					 when data_type = 'bit' then 'bool' 
					 when data_type = 'decimal' then 'float' 
					 when data_type = 'datetime' then 'DateTime' else 'undefined' end, 
				' ', COLUMN_NAME, ' { get; set; }') AS declare_variable,  
COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM tempdb.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME LIKE '#tmp_table_elder%';

select concat('.ForMember(dest => dest.', COLUMN_NAME, ', opt => opt.MapFrom(src => src.', COLUMN_NAME, '))') as test
FROM tempdb.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME LIKE '#tmp_table_elder%';
