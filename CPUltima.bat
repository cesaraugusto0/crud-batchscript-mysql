@echo off
cls
:menu
title Sistema CPUltima
cls
date /t

	echo  ==================================
	echo           CPUltima
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

	
	set /p usropc=Digite o numero desejado: 
	cls
    echo %usropc%
	
::	if %usropc% equ 1 
::	if %usropc% equ 2 
::	if %usropc% equ 3 
::	if %usropc% equ 4 
::	if %usropc% equ 5 
::	if %usropc% equ 6 
::	if %usropc% equ 7 
::	if %usropc% equ 8 
::	if %usropc% equ 9 
::	if %usropc% equ 10 

    echo %usropc%
	
::Quando o numero nao estiver no leque de opções, voltará para o início.
	if %usropc% geq 11

	goto:menu