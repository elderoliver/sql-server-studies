-- ISNULL function
-- On this example if email1 is null the other value in email2 will be set in column 'email'
select ISNULL(email1, email2) as email from employees; 

-- RAISERROR
-- It's used to create dinamic exceptions that can be based on bussiness rules for example. 
RAISERROR (message_string, severity, state)
-- OR --
RAISERROR (message_id, severity, state [, argument [ ,...n ] ] )

-- simple error message 
RAISERROR ('This is a custom error message', 16, 1);

-- with arguments 
DECLARE @ProductID INT = 1001;
RAISERROR ('Product ID %d not found in inventory', 16, 1, @ProductID);


-- RAISERROR also has options like WITH NOWAIT (to send the message immediately to the client)
RAISERROR ('Immediate message', 16, 1) WITH NOWAIT;

-- WITH LOG (to log the error in SQL Server’s error log and Windows application log). Here's an
RAISERROR ('Immediate message', 16, 1) WITH LOG;

