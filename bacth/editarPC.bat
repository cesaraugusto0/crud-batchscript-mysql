@echo off

cls
echo.
echo EDITAR COMPUTADOR
echo.

:: Lista dos computadores cadastrados
cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\buscarPC.sql
echo.

:: Recebendo os dados para edição
set /p idpc=Digite o ID do computador para edicao: 
set /p processador=Processador: 
set /p memoria=Memoria: 
set /p hd=HD: 

:: Construindo a query de edição
echo set @idpc=%idpc%; > \cpultima\sql\editarPC.sql
echo set @processador="%processador%"; >> \cpultima\sql\editarPC.sql
echo set @memoria="%memoria%"; >> \cpultima\sql\editarPC.sql
echo set @hd="%hd%"; >> \cpultima\sql\editarPC.sql
echo update cpultima.pc  >> \cpultima\sql\editarPC.sql
    echo set processador=@processador, memoria=@memoria, hd=@hd >> \cpultima\sql\editarPC.sql
echo where id_pc=@idpc;  >> \cpultima\sql\editarPC.sql

:: Realizando a edição no banco
cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\editarPC.sql


:: Sucesso
cls
echo.
echo Edicao realizado com sucesso!
echo.

:: Lista de computadores atualizada
cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\buscarPC.sql
echo.


pause > nul