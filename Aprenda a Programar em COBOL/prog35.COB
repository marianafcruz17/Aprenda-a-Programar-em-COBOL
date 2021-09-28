       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG35.
      *    programa para inserir dados em arquivos indexados.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQUIVO-FUNCIONARIO
               ASSIGN TO "funcionarios.dat"
                ORGANIZATION IS INDEXED
                RECORD KEY IS FUNCIONARIO-CODIGO
                ACCESS MODE IS DYNAMIC.
       DATA DIVISION.
       FILE SECTION.
       FD  ARQUIVO-FUNCIONARIO.
       01  FUNCIONARIO-REGISTRO.
           05 FUNCIONARIO-CODIGO PIC 9(4).
           05 FUNCIONARIO-NOME PIC X(10).
           05 FUNCIONARIO-ENDERECO PIC X(20).
           05 FUNCIONARIO-TELEFONE PIC X(10).
           05 FUNCIONARIO-EMAIL PIC X(30).

       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN I-O ARQUIVO-FUNCIONARIO.

           PERFORM LER-E-ESCREVE-REGISTRO.

           CLOSE ARQUIVO-FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.

       LER-E-ESCREVE-REGISTRO.
           MOVE SPACE TO FUNCIONARIO-REGISTRO.
           MOVE ZEROS TO FUNCIONARIO-CODIGO.
           DISPLAY "Informe o codigo do funcionario (1-9999)".
           ACCEPT FUNCIONARIO-CODIGO.
           DISPLAY "Informe o nome do funcionario: ".
           ACCEPT FUNCIONARIO-NOME.
           DISPLAY "Informe o endereco do funcionario: ".
           ACCEPT FUNCIONARIO-ENDERECO.
           DISPLAY "Informe o email do funcionario: ".
           ACCEPT FUNCIONARIO-EMAIL.

           WRITE FUNCIONARIO-REGISTRO
           INVALID KEY
           DISPLAY "Codigo ja existe".
