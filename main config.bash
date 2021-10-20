$ vi /etc/postgresql/11/aula/postgresql.conf
#liberar acesso ao localhost ou IPs permitidos

$ pg_ctlcluster 11 aula start
$ pg_lsclusters


$psql
ALTER USER postgres PASSWORD 'ABC123';


$ vi /etc/postgresql/.../.../pg_hba.conf
#(Colocar todos os acessos para usar as senhas MD5)


$ pg_ctlcluster 11 aula start reload
$ pg_lsclusters



#pgAdmin

#Object
#	Server (Criar: "AULA")
#	Server Group(Criar: "AULA")

#Tools


CREATE DATABASE auladb;