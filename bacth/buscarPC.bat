@echo off


cls
echo.
echo PESQUISA DE COMPUTADOR
echo.


cd \xampp\mysql\bin
mysql -u root < \cpultima\sql\buscarPC.sql
echo.

pause > nul










