delimiter $$ 
create procedure inserir_Esp(in sigla varchar(10), in tipo char(1), in qtdeCa int, in capacidade int, in descricao varchar(200), in depCod int)
	begin
		insert into Espaco values(sigla,tipo,qtdeCa,capacidade,descricao,depCod);
	end $$
    delimiter ;
    
 delimiter $$ 
 create procedure Lista_Esp ()
 begin 
		select *
        from Espaco ;
end $$
 
 delimiter ; 
 
 delimiter $$ 
 create procedure pesquisa_Esp(in siglaS varchar(10))
 begin 
		select sigla,tipo,qtdeCa,capacidade,descricao
        from Espaco
        where sigla = siglaS;
end $$
delimiter ;
 
        