delimiter $$ 
create procedure inserir_Even(in codigo int, in nome varchar(20), in organizador varchar(50), in descricao char(200), in horaInicial char (4), in horaFinal char(4), in dataInicio char (8),in dataFim char (8),  in funcRegistra varchar(12))
	begin
		insert into Evento values(codigo,nome, organizador,descricao,horaInicial,horaFinal,dataInicio,dataFim,funcRegistra);
	end $$
    delimiter ;

use `ASK`;
delimiter $$
create procedure atualiza_Even(in nomeE varchar (20), in organizadorE varchar(50), in descricaoE varchar(200), in horaInicialE char(4), in horaFinalE char(4),in dataInicioE char (8), in dataFimE char (8), in codigoE int)
begin 
		update Evento 
        set nome = nomeE, organizador = organizadorE, descricao = descricaoE, horaInicial = horaInicialE, horaFinal = horaFinalE, dataInicio = dataInicioE ,dataFim = dataFimE
        where codigo = codigoE;
end $$
 delimiter ; 
 
 delimiter $$ 
 create procedure Lista_Even ()
 begin 
		select *
        from Evento ;
end $$

delimiter $$ 
create procedure pesquisar_Even (in codigoE int)
begin 
		select * 
		from Evento 
		where codigo = codigoE;
end $$
delimiter 