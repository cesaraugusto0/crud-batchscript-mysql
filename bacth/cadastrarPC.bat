@echo off

:inicio

cls
echo.
echo INSIRA OS DADOS SOBRE O COMPUTADOR
echo.

:: Recebendo os dados do usuario
set /p cpu=Processador: 
set /p memoria=Memoria: 
set /p hd=HD: 


:: Preparando os dados para inserção no banco por meio de variaveis
echo set @cpu="%cpu%"; > \cpultima\sql\cadastrarPC.sql
echo set @memoria="%memoria%"; >> \cpultima\sql\cadastrarPC.sql
echo set @hd="%hd%"; >> \cpultima\sql\cadastrarPC.sql
echo insert into cpultima.pc(processador, memoria, hd) >> \cpultima\sql\cadastrarPC.sql
echo values (@cpu, @memoria, @hd); >> \cpultima\sql\cadastrarPC.sql
echo.

:: Confimação do usuario
set /p opcao=Deseja cadastrar este computador [S/N] ? 
if %opcao% == s (
    goto :cadastrar
) else (goto:fim)


:: Exportando os dados para o banco
:cadastrar
cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\cadastrarPC.sql


:: Sucesso
cls
echo.
echo Computador cadastrado com sucesso!
echo.


set /p opcao=Voltar ao menu inicial [S/N] ? 
if %opcao% == s (
    goto :fim
) else (goto:inicio)

:fim

echo.
pause