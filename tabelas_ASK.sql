create schema ASK;
use `ASK`;

/*drop schema ASK;
/*drop schema `ASK`;*/

create table Departamento(
		codigo int not null primary key,
		nome varchar(50) not null,
		sigla varchar(10) not null
);   

create table Funcionario (
		matricula varchar(12) not null, 
		nome varchar(80) not null,
		senha varchar(18) not null,
        departamento int not null,
		primary key (matricula),
        foreign key (departamento) references Departamento (codigo)
);

 
create table Espaco(
    sigla varchar(10) not null primary key,
    tipo char (1)not null,
    qtdeCa int not null,
    capacidade int not null,
    descricao varchar (200) not null,
    departamento int not null, 
    foreign key (departamento) references Departamento (codigo)
);

delete from evento;
select * from evento;
drop table evento;

create table Evento(
		codigo int not null,
    	nome varchar (20) not null,
    	organizador varchar (50) not null,
    	descricao varchar (200) not null,
    	horaInicial char(4) not null,
    	horaFinal char(4)  not null,
    	dataInicio char(8) not null,
    	dataFim char (8) not null, 
    	funcRegistra varchar(12) null, 
    	primary key(codigo),
    	foreign key (funcRegistra) references Funcionario (matricula)
);        

create table EspEven(
		siglaE varchar(10) not null,
    	evenCod int not null, 
    	dataInicio char (8) not null, 
    	dataFinal char(10) null,
        horaInicio char (5) not null, 
        horaFinal char (5) not null, 
    	primary key(siglaE, evenCod, dataInicio),
    	foreign key(siglaE) references Espaco(sigla),
		foreign key(evenCod) references Evento(codigo)
);


