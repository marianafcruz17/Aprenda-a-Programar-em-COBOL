       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG23.
      *    inicializacao de variaveis.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  NUMERO1 PIC 99 VALUE 15.
       01  MENSAGEM PIC X(20) VALUE "Curso de COBOL".
       01  NUMERO2 PIC 99 VALUE ZEROS.
      *    01  NUMERO2 PIC 99 VALUE ZEROES.
      *    01  NUMERO2 PIC 99 VALUE ZERO.
       01  TEXTO PIC X(30) VALUE SPACES.
      *    01  TEXTO PIC(30) VALUE SPACE.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY "Numero1: " NUMERO1.
           DISPLAY "Mensagem: " MENSAGEM.
           DISPLAY "------------".
           DISPLAY "Numero2: " NUMERO2.
           DISPLAY "Texto: " TEXTO.

           DISPLAY "Atribuindo valores".
           ADD 20 TO NUMERO2.
           DISPLAY "Numero2: " NUMERO2.

       PROGRAM-DONE.
           STOP RUN.
