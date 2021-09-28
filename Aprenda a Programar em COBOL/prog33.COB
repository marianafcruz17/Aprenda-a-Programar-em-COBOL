       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG33.
      *    programa para leitura de arquivos.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL ARQUIVO-CLIENTE
           ASSIGN TO "clientes.dat"
           ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  ARQUIVO-CLIENTE.
       01  CLIENTE-REGISTRO.
           05 CLIENTE-NOME PIC X(20).
           05 CLIENTE-ENDERECO PIC X(50).
           05 CLIENTE-TELEFONE PIC X(10).
           05 CLIENTE-EMAIL PIC X(30).

       WORKING-STORAGE SECTION.
       01  FINAL-ARQUIVO PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN INPUT ARQUIVO-CLIENTE.
           MOVE "N" TO FINAL-ARQUIVO.
           PERFORM LEIA-PROXIMO-REGISTRO.
           PERFORM EXIBA-REGISTROS
               UNTIL FINAL-ARQUIVO = "S".

           CLOSE ARQUIVO-CLIENTE.

       PROGRAM-DONE.
           STOP RUN.

       LEIA-PROXIMO-REGISTRO.
           READ ARQUIVO-CLIENTE RECORD AT END
           MOVE "S" TO FINAL-ARQUIVO.

       EXIBA-REGISTROS.
           PERFORM EXIBA-CAMPOS.
           PERFORM LEIA-PROXIMO-REGISTRO.

       EXIBA-CAMPOS.
           DISPLAY "Nome: " CLIENTE-NOME.
           DISPLAY "Endereco: " CLIENTE-ENDERECO.
           DISPLAY "Telefone: " CLIENTE-TELEFONE.
           DISPLAY "E-mail: " CLIENTE-EMAIL.
           DISPLAY "---------------------------".
