       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG12.
      *    programa para exibir mensagens usando paragrafos aninhados.
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
           PERFORM ADICIONA-ID-E-EXIBE.

      *    segunda mensagem

           MOVE " Paulo agora voce e responsavel pelo setor de vendas."
           TO MINHA-MENSAGEM.
           PERFORM ADICIONA-ID-E-EXIBE.

       PROGRAM-DONE.
           STOP RUN.

       ADICIONA-ID-E-EXIBE.
           PERFORM AUMENTA-ID.
           PERFORM EXIBE-MENSAGEM.

       AUMENTA-ID.
           ADD 1 TO ID-MENSAGEM.

       EXIBE-MENSAGEM.
           DISPLAY
               ID-MENSAGEM
               MINHA-MENSAGEM.
