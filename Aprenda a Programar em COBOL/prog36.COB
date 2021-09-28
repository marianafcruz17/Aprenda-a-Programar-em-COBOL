       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG36.
      *    programa para inserir dados em arquivos indexados.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           COPY "SBFUNCIONARIO.cob".
       DATA DIVISION.
       FILE SECTION.
           COPY "FDFUNCIONARIO.cob".

       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN I-O ARQUIVO-FUNCIONARIO.

           PERFORM LER-E-ESCREVE-REGISTRO.

           CLOSE ARQUIVO-FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.

       LER-E-ESCREVE-REGISTRO.
           MOVE SPACE TO FUNCIONARIO-REGISTRO.
           MOVE ZEROS TO FUNCIONARIO-CODIGO.
           DISPLAY "Informe o codigo do funcionario (1-9999)".
           ACCEPT FUNCIONARIO-CODIGO.
           DISPLAY "Informe o nome do funcionario: ".
           ACCEPT FUNCIONARIO-NOME.
           DISPLAY "Informe o endereco do funcionario: ".
           ACCEPT FUNCIONARIO-ENDERECO.
           DISPLAY "Informe o email do funcionario: ".
           ACCEPT FUNCIONARIO-EMAIL.

           WRITE FUNCIONARIO-REGISTRO
           INVALID KEY
           DISPLAY "Codigo ja existe".
