
"Tarefa 03 - ODBC e ORM"

import psycopg2

connection = psycopg2.connect(host="localhost",
                        port="5432",
                        database="atividadesBD",
                        user="user",
                       password="pgadmin")


cursor = connection.cursor()

"a. Inserir uma atividade em algum projeto"
cursor.execute("INSERT INTO atividade(descricao, codProjeto, dataInicio, dataFim) VALUES(%s, %s, %s, %s)",('BD - Atividade 5', 3, '2022-08-24', '2018-09-24'))

"b. Atualizar o líder de algum projeto;"
cursor.execute("UPDATE funcionario SET salario = %s WHERE codigo = %s", (6750, 1))

"c. Listar todas os projetos e suas atividades"
postgreSQL_select_Query = """SELECT p.codigo, p.nome, p.descricao, a.descricao AS atividade_proj
FROM projeto p, atividade a
WHERE p.codigo = a.codProjeto;"""
cursor.execute(postgreSQL_select_Query)
projetos_atividades = cursor.fetchall()
for row in projetos_atividades:
        print("codigo_projeto: ", row[0])
        print("nome: ", row[1])
        print("descrição: ", row[2])
        print("atividade_projeto: ", row[3], "\n")
        
connection.commit() 
cursor.close()
connection.close()









