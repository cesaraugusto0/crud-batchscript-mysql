@echo off
cls

echo INSIRA OS DADOS SOBRE O COMPUTADOR
echo.

:: Recebendo os dados do usuario
set /p cpu=Digite o processador: 
set /p memoria=Digite a memoria: 
set /p hd=Digite o hd: 
echo. 

:: Inciando arquivo pre.sql
type nul > \cpultima\sql\pre.sql

:: Preparando os dados para inserção no banco
echo use db_cpultima; > \cpultima\sql\pre.sql
echo set @cpu=%cpu%; >> \cpultima\sql\pre.sql 
echo set @memoria=%memoria%; >> \cpultima\sql\pre.sql 
echo set @hd=%hd%; >> \cpultima\sql\pre.sql 

type \cpultima\sql\pre.sql

:: Exportando os dados para o banco
cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\pre.sql


:: Inserindo os dados no banco
mysql -u root < \cpultima\sql\cadastrarPC.sql


:: Sucesso
echo.
echo Computador cadastrado com sucesso!
echo.



pause