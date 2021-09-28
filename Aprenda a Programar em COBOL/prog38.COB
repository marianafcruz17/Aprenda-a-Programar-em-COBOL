       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG38.
      *    excluindo registro de um arquivo
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           COPY "SBFUNCIONARIO.cob".
       DATA DIVISION.
       FILE SECTION.
           COPY "FDFUNCIONARIO.cob".
       WORKING-STORAGE SECTION.
       77  REGISTRO-ENCONTRADO PIC X.
       77  CODIGO-FUNCIONARIO-EXCLUIR PIC 9(5).
       77  CONFIRMAR-EXCLUSAO PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN I-O ARQUIVO-FUNCIONARIO.
           PERFORM PEGA-REGISTRO-FUNCIONARIO.

           PERFORM DELETAR-REGISTRO
               UNTIL FUNCIONARIO-CODIGO = ZEROS.

           CLOSE ARQUIVO-FUNCIONARIO.

       PROGRMA-DONE.
           STOP RUN.

       PEGA-REGISTRO-FUNCIONARIO.
           MOVE SPACE TO FUNCIONARIO-REGISTRO.
           MOVE ZEROS TO FUNCIONARIO-CODIGO.

           DISPLAY "Informe o codigo do funcionario ".
           DISPLAY " para excluir (1-9999) ".
           DISPLAY " digite 0 (zero) para cancelar: ".
           ACCEPT CODIGO-FUNCIONARIO-EXCLUIR.

           MOVE CODIGO-FUNCIONARIO-EXCLUIR TO FUNCIONARIO-CODIGO.
           MOVE "N" TO REGISTRO-ENCONTRADO.

           PERFORM ENCONTRA-REGISTRO-FUNCIONARIO
               UNTIL REGISTRO-ENCONTRADO = "S" OR
                   FUNCIONARIO-CODIGO = ZEROS.

       ENCONTRA-REGISTRO-FUNCIONARIO.
           MOVE"S" TO REGISTRO-ENCONTRADO.
           READ ARQUIVO-FUNCIONARIO RECORD
               INVALID KEY
                   MOVE "N" TO REGISTRO-ENCONTRADO.

           IF REGISTRO-ENCONTRADO = "N"
               DISPLAY "Registro nao encontrado "
               DISPLAY " informe o codigo do funcionario "
               DISPLAY " para excluir (1-9999) "
               DISPLAY " digite 0 (zero) para cancelar: "
               ACCEPT CODIGO-FUNCIONARIO-EXCLUIR.

           MOVE CODIGO-FUNCIONARIO-EXCLUIR TO FUNCIONARIO-CODIGO.

       DELETAR-REGISTRO.
      *    exibir todos os campos do registro.
           DISPLAY " ".
           DISPLAY "Codigo: " FUNCIONARIO-CODIGO.
           DISPLAY "Nome: " FUNCIONARIO-NOME.
           DISPLAY "Endereco: " FUNCIONARIO-ENDERECO.
           DISPLAY "Telefone: " FUNCIONARIO-TELEFONE.
           DISPLAY "Email: " FUNCIONARIO-EMAIL.
           DISPLAY " ".

           MOVE "X" TO CONFIRMAR-EXCLUSAO.

           PERFORM PERGUNTA-EXCLUIR
               UNTIL CONFIRMAR-EXCLUSAO = "S" OR "N".

           IF CONFIRMAR-EXCLUSAO = "S"
               DELETE ARQUIVO-FUNCIONARIO RECORD
                   INVALID KEY
                   DISPLAY "Erro ao excluir arquivo ".

           PERFORM PEGA-REGISTRO-FUNCIONARIO.

       PERGUNTA-EXCLUIR.
           DISPLAY "Deseja excluir este registro (S/N)? ".
           ACCEPT CONFIRMAR-EXCLUSAO.

           IF CONFIRMAR-EXCLUSAO = "s"
               MOVE "S" TO CONFIRMAR-EXCLUSAO.

           IF CONFIRMAR-EXCLUSAO = "n"
               MOVE "N" TO CONFIRMAR-EXCLUSAO.

           IF CONFIRMAR-EXCLUSAO NOT = "S" AND
               CONFIRMAR-EXCLUSAO NOT = "N"
               DISPLAY "Voce deve escolher sim ou nao".
