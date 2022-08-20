set @idpc=4; 
set @processador="Intel Core 2 Dual"; 
set @memoria="4 Gb"; 
set @hd="500 Gb"; 
update cpultima.pc  
set processador=@processador, memoria=@memoria, hd=@hd 
where id_pc=@idpc;  
