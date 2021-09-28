       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG4.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01  NOME PICTURE IS XXXXXXXXXX.
       01  SOBRENOME PIC X(10).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY "Qual e o seu nome? ".
           ACCEPT NOME.

           DISPLAY "Qual e o seu sobrenome? ".
           ACCEPT SOBRENOME.

           DISPLAY "Oi " NOME SOBRENOME.

       PROGRAM-DONE.
           STOP RUN.
