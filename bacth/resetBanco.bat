@echo off

cd \xampp\mysql\bin

mysql -u root < \cpultima\sql\resetBanco.sql
cls

echo Reset realizado com sucesso!
echo.

pause