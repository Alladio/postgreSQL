CREATE ROLE role1

where option can be:

SUPER USER | NOSUPERUSER
CREATE DB | NOCREATEDB
CREATEROLE | NOCREATEROLE
INHERITI | NOINHERIT
LOGIN | NOLOGIN

IN GROUP
IN ROLE (//Quando cria um usuário ira pertencer a essa ROLE)
ROLE //(A ROLE)

ADMIN (Usada junto com ROLE, todas as roles passaram
a fazer parte de ROLE e terão acessos administrativos)

CREATE ROLE administradores
	CREATEDB
	CREATEROLE
	INHERIT
	NOLOGIN
	REPLICATION
	BYPASSRLS
	CONNECTION LIMIT 1;

CREATE ROLE professores
	NOCREATEDBNOCREATEROLE
	INHERITNOLOGIN
	NOBYPASSRLS
	CONNECTION LIMIT 10;

CREATE ROLE alunos
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOLOGIN
	NOBYPASSRLS
	CONNECTION LIMIT 90;
	
Associação entre rolesQuando uma role assume as permissões de outras role.
Necessário a opção INHERIT

No momento de criarção da role:
	- IN ROLE (Passa a pertencer a role informada)
	- ROLE (a role informada passa a pertencer a nova role)
	
Ou após a criação da role:
	- GRANT [role a ser concedida] TO [role a assumir as permissões]
	
	//VAMOS A PRÁTICA
	
CREATE ROLE professores
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOLOGIN
	NOBYPASSRLS
	CONNECTION LIMIT -1;
	
CREATE ROLE daniel LOGIN CONNECTION LIMIT 1 PASSWORD '123' IN ROLE professores
	- A role daniel passa a assumir as permissões da role professores
	
CREATE ROLE daniel LOGIN CONNECTION LIMIT 1 PASSWORD '123' ROLE professores	
	- A role professores passar a fazer parte da role daniel assumindo suas permissões
	
CREATE ROLE daniel LOGIN  CONNECTION LIMIT 1 PASSOWRD '123';
GRANT professores TO daniel;

	//daniel não faz mais parte dos professores
	
REVOKE [role que será revogada] FROM [quem terá suas permissões revogadas]

REVOKE professores FROM daniel;


