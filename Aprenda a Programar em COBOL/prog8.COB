       IDENTIFICATION DIVISION.
      *    progrma aque demonstra o uso de paragrafos.
      *    programa para somar 2 números e exibir o resultado.
       PROGRAM-ID. PROG8.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  PRIMEIRO-NUMERO PIC 9(2).
       01  SEGUNDO-NUMERO PICTURE IS 99.
       01  RESULTADO PICTURE IS 999.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.
      *    paragrafo
       RECEBE-PRIMEIRO-NUMERO.

           DISPLAY "Informe o primeiro numero: ".
           ACCEPT PRIMEIRO-NUMERO.

       RECEBE-SEGUNDO-NUMERO.

           DISPLAY "Informe o segundo numero: ".
           ACCEPT SEGUNDO-NUMERO.

           COMPUTE RESULTADO = PRIMEIRO-NUMERO + SEGUNDO-NUMERO.

       INFORMA-O-RESULTADO.

           DISPLAY "O resultado da soma e: "RESULTADO.

       PROGRAM-DONE.
           STOP RUN.
