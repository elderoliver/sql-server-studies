-- Example of calling a procedure with two parameters. 

EXEC [dbo].[sp_WS_Usuarios_Login] 
    @in_Usuario = 'YourUsername', 
    @in_Senha = 'YourPassword';

