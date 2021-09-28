       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG14.
      *    pergunta se o usuario gosta de churrasco.
      *    resolve problema das letras em maiusculo.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           PERFORM PERGUNTA.

           PERFORM CONVERTE-PARA-MAIUSCULO.

           PERFORM EXIBE-RESPOSTA.

       PROGRAM-DONE.
           STOP RUN.

       PERGUNTA.
           DISPLAY "Voce gosta de churrasco? (S/N)".
           ACCEPT RESPOSTA.

       EXIBE-RESPOSTA.
           IF RESPOSTA IS EQUAL "S"
               DISPLAY "Realmente e muito bom".

           IF RESPOSTA IS EQUAL "N"
               DISPLAY "Que pena".

       CONVERTE-PARA-MAIUSCULO.
           IF RESPOSTA IS EQUAL "s"
               MOVE "S" TO RESPOSTA.

           IF RESPOSTA IS EQUAL "n"
               MOVE "N" TO RESPOSTA.
