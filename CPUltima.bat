@echo off
cls
:menu
title Sistema CPUltima
cls
date /t

echo  ==================================
echo                MENU
echo  ==================================
echo * 1. Cadastrar Computador         * 
echo * 2. Criar Manutencao             * 
echo * 3. Procurar Computador          * 
echo * 4. Procurar Manutencao          * 
echo * 5. Excluir Computador           * 
echo * 6. Excluir Manutencao           *
echo * 7. Editar Computador            * 
echo * 8. Editar Manutencao            *
echo * 9. Emitir relatorio             *
echo * 10. Sair do sistema             * 
echo  ==================================

	
set /p usropc=Digite a opcao desejada: 
cls
	
if %usropc% equ 1 (
	call \cpultima\bacth\cadastrarPC.bat
	goto :menu 
)
::	if %usropc% equ 2 
if %usropc% equ 3 (
	call \cpultima\bacth\buscarPC.bat
	goto :menu
)
::	if %usropc% equ 4 
if %usropc% equ 5 (
	call \cpultima\bacth\excluirPC.bat
	goto :menu
)
::	if %usropc% equ 6 
if %usropc% equ 7 (
	call \cpultima\bacth\editarPC.bat
	goto :menu
)
::	if %usropc% equ 8 
::	if %usropc% equ 9 
if %usropc% equ 10 goto:fim

	
::Quando o numero nao estiver no leque de opções, voltará para o início.
if %usropc% geq 11 (
	echo Opcao invalida! Tente novamente.
	echo.
	pause
	goto:menu
)

echo %usropc%
pause
:fim

	