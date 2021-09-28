       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG10.
      *    programa para exibir mensagens.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  MINHA-MENSAGEM PIC X(80).
       01  ID-MENSAGEM PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           MOVE 0 TO ID-MENSAGEM.
      *    primeira mensagem.

           MOVE " Maria marque uma reuniao com nossos fornecedores."
               TO MINHA-MENSAGEM.
           ADD 1 TO ID-MENSAGEM.
           DISPLAY
               ID-MENSAGEM
               MINHA-MENSAGEM.

      *    segunda mensagem

           MOVE " Paulo agora voce e responsavel pelo setor de vendas."
           TO MINHA-MENSAGEM.
           ADD 1 TO ID-MENSAGEM.
           DISPLAY
               ID-MENSAGEM
               MINHA-MENSAGEM.

       PROGRAM-DONE.
           STOP RUN.
