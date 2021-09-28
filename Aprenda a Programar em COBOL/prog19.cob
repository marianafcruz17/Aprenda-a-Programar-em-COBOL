       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG19.
      *    programa para demonstrar o operador GOT-TO.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY "INICIO DO PROGRAMA".
           PERFORM CONTINUAR-EXECUCAO.

           IF RESPOSTA = "N"
               GO TO EXIBIR-MENSAGEM.

           DISPLAY "SEGUNDA PARTE DO PROGRAMA".
           PERFORM LOGICA-PROGRAMA.

       PROGRAM-DONE.
           STOP RUN.

       CONTINUAR-EXECUCAO.
           DISPLAY "Deseja continuar? (S/N)".
           ACCEPT RESPOSTA.

           IF RESPOSTA = "n"
               MOVE "N" TO RESPOSTA.

       LOGICA-PROGRAMA.
           DISPLAY "O programa apenas exibe uma mensagem".

       EXIBIR-MENSAGEM.
           DISPLAY "Bom dia".

       EXIBIR-PROFISSAO.
           DISPLAY "programador".
