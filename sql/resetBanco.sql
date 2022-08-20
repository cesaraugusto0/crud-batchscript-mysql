
-- drop database cpultima;

create database cpultima;

use cpultima;

create table PC(
    id_pc int auto_increment, 
    processador varchar(20), 
    memoria varchar(10), 
    hd varchar(10), 
    primary key (id_pc)
);

create table OS(
    id_os int auto_increment, 
    id_pc int, 
    id_m int, 
    primary key(id_os)
);

create table Manutencao(
    id_m int auto_increment, 
    id_os int, 
    quantidade_pc int, 
    sintoma varchar(50),  
    data_rec date, 
    primary key (id_m)
);

create table Termino (
    id_t int auto_increment, 
    id_m int, 
    solucao varchar(50), 
    termino date, 
    primary key(id_t)
);







