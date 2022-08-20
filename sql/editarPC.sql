set @idpc=1; 
set @processador="Intel i5"; 
set @memoria="8 Gb"; 
set @hd="1 Tb"; 
update cpultima.pc  
set processador=@processador, memoria=@memoria, hd=@hd 
where id_pc=@idpc;  
