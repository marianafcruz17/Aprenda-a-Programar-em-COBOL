       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG26.
      *    programa usando numeros decimais
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  VALOR1 PIC 9(5)V9(2) VALUE 76543.98.
       01  VALOR2 PIC 9(2)V9(2) VALUE 12.36.
       01  VALOR3 PIC S999V99 VALUE -587.21.
       01  RESULTADO1 PIC 9(5)V9(2).
       01  RESULTADO2 PIC S9(5)V9(2).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           COMPUTE RESULTADO1 = VALOR1 + VALOR2.
           DISPLAY VALOR1 " + " VALOR2 " = " RESULTADO1.
           DISPLAY "-------------------".

           COMPUTE RESULTADO2 = VALOR2 + VALOR3.
           DISPLAY VALOR2 " + (" VALOR3 ") = " RESULTADO2.
       PROGRAM-DONE.
           STOP RUN.
