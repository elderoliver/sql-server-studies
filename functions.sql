-- ISNULL function
-- On this example if email1 is null the other value in email2 will be set in column 'email'
select ISNULL(email1, email2) as email from employees; 

-- RAISERROR function
-- It's used to create dinamic exceptions that can be based on bussiness rules for example. 

/*

** Parameters

* message_string: A custom error message string. You can specify this directly in the RAISERROR call, 
and it’s limited to 2,047 characters.

* message_id: The ID of a user-defined message stored in the sys.messages catalog view. 
You can define custom messages in SQL Server with sp_addmessage, which allows you to reuse them in RAISERROR.

* severity: This defines the seriousness of the error on a scale from 0 to 25.
Severity levels 0–10 are informational messages.
Severity levels 11–16 indicate standard user errors (most common).
Levels 17–25 are more critical, often requiring administrator attention. Only members of the sysadmin role can use levels 19+.

* state: An integer from 0 to 255, used to provide additional details about the error location. 
It has no predefined meanings but can help identify different error conditions within the same severity level.

* Arguments (argument [, ...]): You can use this to include variable values in the message_string by formatting the message. 
For instance, using %d for an integer or %s for a string allows you to substitute values within the message text.

*/

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

