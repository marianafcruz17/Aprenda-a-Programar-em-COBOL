       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG31.
      *    demonstracao de niveis de variaveis
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77  NOME PIC X(10).

       01  PESSOA.
           05 PESSOA-ESCOLARIDADE PIC X.
               88 ENSINO-FUNDAMENTAL VALUE "F".
               88 ENSINO-MEDIO VALUE "M".
               88 ENSINO-SUPERIOR VALUE "S".

       01  FUNCIONARIO.
           05 COD PIC 99.
           05 FILLER PIC X(1) VALUE " ".
           05 IDADE PIC 99.
           05 FILLER PIC X(1) VALUE " ".
           05 ENDERECO PIC X(20).

       66  FUNCIONARIO-DETALHES RENAMES COD THRU IDADE.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY " --- VARIAVEIS 77 E 88 --- ".
           DISPLAY "Qual e o seu nome? ".
           ACCEPT NOME.
           DISPLAY "Qual e a sua escolaridade? ".
           DISPLAY "F: Fundamental / M: Medio / S: Superior".
           ACCEPT PESSOA-ESCOLARIDADE.

           IF PESSOA-ESCOLARIDADE = "F"
               DISPLAY NOME " voce ainda esta no inicio dos estudos".

           IF PESSOA-ESCOLARIDADE = "M"
               DISPLAY NOME " voce esta na metade do caminho".

           IF PESSOA-ESCOLARIDADE = "S"
               DISPLAY NOME " voce esta na universidade".

           DISPLAY " --- VARIAVEL NIVEL 66 --- ".
           DISPLAY "Informe o codigo do funcionario".
           ACCEPT COD.
           DISPLAY "Informe a idade do funcionario".
           ACCEPT IDADE.
           DISPLAY "Informe o endereco do funcionario".
           ACCEPT ENDERECO.

           DISPLAY " --- Exibindo os detalhes do funcionario --- ".
           DISPLAY FUNCIONARIO-DETALHES.

       PROGRAM-DONE.
           STOP RUN.
