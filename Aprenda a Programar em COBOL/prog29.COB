       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG29.
      *    demonstracao de FILLER
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  FUNCIONARIO.
           05 CODIGO PIC 9(2).
           05 FILLER PIC X(2) VALUE " -".
           05 NOME PIC X(10).
           05 FILLER PIC X(4) VALUE "--- ".
           05 ENDERECO PIC X(20).
           05 FILLER PIC X(2) VALUE "* ".
           05 SALARIO PIC 9(4)V9(2).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           MOVE 33 TO CODIGO.
           MOVE " Mariana" TO NOME.
           MOVE " Rua 9 Norte n 1603" TO ENDERECO.
           MOVE 2500.00 TO SALARIO.

           DISPLAY FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.
