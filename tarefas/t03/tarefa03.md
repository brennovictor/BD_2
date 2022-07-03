## Psycopg

Psycopg é o adaptador de banco de dados PostgreSQL mais popular para a linguagem de programação Python. Suas principais características são a implementação completa da especificação Python DB API 2.0 e a segurança do thread (vários threads podem compartilhar a mesma conexão). Ele foi projetado para aplicativos altamente multithread que criam e destroem muitos cursores e fazem um grande número de INSERTs ou s simultâneos UPDATE.

O Psycopg 2 é implementado principalmente em C como um wrapper libpq, resultando em ser eficiente e seguro. Possui cursores do lado do cliente e do lado do servidor, comunicação e notificações assíncronas, suporte a COPY. Muitos tipos Python são suportados imediatamente e adaptados aos tipos de dados PostgreSQL correspondentes; a adaptação pode ser estendida e personalizada graças a um sistema flexível de adaptação de objetos.


#### [Programa de conexão utilizando Psycopg2](https://github.com/brennovictor/BD_2/blob/main/tarefas/t03/connection_atividadesBD.py)
