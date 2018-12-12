delimiter $$ 
create procedure inserir_Esp(in sigla varchar(10), in tipo char(1), in qtdeCa int, in capacidade int, in descricao varchar(200), in departamento int)
	begin
		insert into Espaco values(sigla,tipo,qtdeCa,capacidade,descricao,departamento);
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
		select sigla,tipo,qtdeCa,capacidade,descricao,departamento
        from Espaco
        where sigla = siglaS;
end $$
delimiter ;

delimiter $$ 
create procedure atualizar_Esp(in qtdeCaE int, in capacidadeE int, descricaoE varchar(200), in departamentoE int, in siglaE varchar (10))
begin 
Update Espaco
set qtdeCa = qtdeCa, capacidade = capacidadeE, descricao = descricaoE, departamento = departamentoE
where sigla = siglaE;
end $$
delimiter ;


 delimiter $$ 
 create procedure deletar_Esp (in siglaE varchar(10))
 begin 
		delete from Espaco where sigla = siglaE;
end $$
