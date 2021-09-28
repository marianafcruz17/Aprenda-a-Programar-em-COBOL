       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG32.
      *    programa para manipular arquivos.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL ARQUIVO-CLIENTE
           ASSIGN TO "clientes.dat"
           ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  ARQUIVO-CLIENTE.
      *    LABEL RECORDS ARE STANDARD.
       01  CLIENTE-REGISTRO.
           05 CLIENTE-NOME PIC X(20).
           05 CLIENTE-ENDERECO PIC X(50).
           05 CLIENTE-TELEFONE PIC X(10).
           05 CLIENTE-EMAIL PIC X(30).

       WORKING-STORAGE SECTION.
       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN EXTEND ARQUIVO-CLIENTE.
           MOVE "S" TO RESPOSTA.

           PERFORM ADICIONA-REGISTROS
               UNTIL RESPOSTA = "N".

           CLOSE ARQUIVO-CLIENTE.

       PROGRAM-DONE.
           STOP RUN.

       ADICIONA-REGISTROS.
           MOVE SPACE TO CLIENTE-REGISTRO.
           DISPLAY "Informe o nome: ".
           ACCEPT CLIENTE-NOME.
           DISPLAY "Informe o endereco: ".
           ACCEPT CLIENTE-ENDERECO.
           DISPLAY "Informe o telefone: ".
           ACCEPT CLIENTE-TELEFONE.
           DISPLAY "Informe o e-mail: ".
           ACCEPT CLIENTE-EMAIL.

           WRITE CLIENTE-REGISTRO.
           DISPLAY "-------------".
           DISPLAY "Deseja adicionar outro cliente? (S/N)".
           ACCEPT RESPOSTA.
