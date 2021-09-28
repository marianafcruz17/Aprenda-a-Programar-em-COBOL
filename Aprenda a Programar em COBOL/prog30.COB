       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG30.
      *    demonstracao de RECORDS aninhadas
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  FUNCIONARIO.
           05 CODIGO PIC 9(2).
           05 FILLER PIC X(2) VALUE " -".
           05 NOME PIC X(9) VALUE " MARIANA ".
           05 FILLER PIC X(4) VALUE "--- ".
           05 ENDERECO PIC X(12) VALUE "RUA 9 NORTE ".
           05 FILLER PIC X(2) VALUE "*".
           05 SALARIO PIC 9(4)V9(2) VALUE 2500.00.
           05 FILLER PIC X(3) VALUE " * ".
           05 FUNCAO.
               10 DEPARTAMENTO PIC X(10).
               10 FILLER PIC X(1) VALUE "-".
               10 TAREFA PIC X(100).


       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           MOVE "Marketing" TO DEPARTAMENTO.
           MOVE " Criar uma campanha de marketing para o Natal"
           TO TAREFA.
           MOVE 1 TO CODIGO.
           DISPLAY FUNCIONARIO.

           MOVE "Financeiro" TO DEPARTAMENTO.
           MOVE " Traga o relatorio com todas as contas a pagar"
           TO TAREFA.
           ADD 1 TO CODIGO.

           DISPLAY FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.
