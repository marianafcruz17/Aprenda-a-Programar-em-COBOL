       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG39.
      *    listar registro de um arquivo
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           COPY "SBFUNCIONARIO.cob".
       DATA DIVISION.
       FILE SECTION.
           COPY "FDFUNCIONARIO.cob".
       WORKING-STORAGE SECTION.
       01  FINAL-ARQUIVO PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN INPUT ARQUIVO-FUNCIONARIO.
           MOVE "N" TO FINAL-ARQUIVO.
           PERFORM LEIA-PROXIMO-REGISTRO.

           PERFORM EXIBA-REGISTROS
               UNTIL FINAL-ARQUIVO = "S".

           CLOSE ARQUIVO-FUNCIONARIO.

       PROGRAM-DONE.
           STOP RUN.

       LEIA-PROXIMO-REGISTRO.
           READ ARQUIVO-FUNCIONARIO RECORD AT END
           MOVE "S" TO FINAL-ARQUIVO.

       EXIBA-REGISTROS.
           PERFORM EXIBA-CAMPOS.
           PERFORM LEIA-PROXIMO-REGISTRO.

       EXIBA-CAMPOS.
           DISPLAY "Codigo: " FUNCIONARIO-CODIGO.
           DISPLAY "Nome: " FUNCIONARIO-NOME.
           DISPLAY "Endereco: " FUNCIONARIO-ENDERECO.
           DISPLAY "Telefone: " FUNCIONARIO-TELEFONE.
           DISPLAY "Email: " FUNCIONARIO-EMAIL.
           DISPLAY "----------------------------".
