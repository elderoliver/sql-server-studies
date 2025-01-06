
getDate()

Convert(DATETIME, '01/31/2025', 101); 

-- Converting the date using this mask 'dd/MM/yyyy'
DECLARE @Date DATE = GETDATE();
SELECT FORMAT(@Date, 'dd/MM/yyyy') AS FormattedDate;

-- Covnerting the date using the mask code 103 that means 'dd/MM/yyyy'
DECLARE @Date DATE = GETDATE();
SELECT CONVERT(VARCHAR(10), @Date, 103) AS FormattedDate;

