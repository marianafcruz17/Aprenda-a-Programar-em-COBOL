           SELECT ARQUIVO-FUNCIONARIO
               ASSIGN TO "funcionarios.dat"
                ORGANIZATION IS INDEXED
                RECORD KEY IS FUNCIONARIO-CODIGO
                ACCESS MODE IS DYNAMIC.
