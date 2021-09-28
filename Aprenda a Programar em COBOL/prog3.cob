       IDENTIFICATION DIVISION.
      *    demonstrando variáveis
      *    programa para somar 2 números e exibir o resultado
       PROGRAM-ID. PROG3.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  PRIMEIRO-NUMERO PIC 9(2).
       01  SEGUNDO-NUMERO PICTURE IS 99.
       01  RESULTADO PICTURE IS 999.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.
           DISPLAY "Informe o primeiro numero: ".
           ACCEPT PRIMEIRO-NUMERO.

           DISPLAY "Informe o segundo numero: ".
           ACCEPT SEGUNDO-NUMERO.

           COMPUTE RESULTADO = PRIMEIRO-NUMERO + SEGUNDO-NUMERO.

           DISPLAY "O resultado da soma e: "RESULTADO.

       PROGRAM-DONE.
           STOP RUN.
