@echo off

cls
echo.
echo EXCLUIR COMPUTADOR
echo.

:: Lista dos computadores cadastrados
cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\buscarPC.sql
echo.

:: Recebendo os dados para exclusão
set /p idpc=Digite o ID do computador para EXCLUIR: 


:: Construindo a query de exclusão
echo set @idpc=%idpc%; > \cpultima\sql\excluirPC.sql
echo delete from cpultima.pc where id_pc=@idpc; >> \cpultima\sql\excluirPC.sql


:: Realizando a exclusão no banco
cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\excluirPC.sql


:: Sucesso
cls
echo.
echo Exclusao realizado com sucesso!
echo.

:: Lista de computadores atualizada
cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\buscarPC.sql
echo.


pause > nul





