       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG37.
      *    alterando registro de um arquivo
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           COPY "SBFUNCIONARIO.cob".
       DATA DIVISION.
       FILE SECTION.
           COPY "FDFUNCIONARIO.cob".
       WORKING-STORAGE SECTION.
       77  REGISTRO-ENCONTRADO PIC X.
      *    possui o mesmo tamanho do codigo do funcionario
       77  CODIGO-FUNCIONARIO-ALTERAR PIC 9(5).
      *    campo que sera alterado
       77  QUAL-CAMPO PIC 9.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN I-O ARQUIVO-FUNCIONARIO.
           PERFORM PEGA-REGISTRO-FUNCIONARIO.

           PERFORM ALTERAR-REGISTRO
               UNTIL FUNCIONARIO-CODIGO = ZEROES.

           CLOSE ARQUIVO-FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.

       PEGA-REGISTRO-FUNCIONARIO.
      *    inicializacao das variaveis
           MOVE SPACE TO FUNCIONARIO-REGISTRO.
           MOVE ZEROES TO FUNCIONARIO-CODIGO.
      *    pergunta qual registro deve ser alterado
           DISPLAY "Informe o codigo do funcionario: ".
           DISPLAY "Para alterar (1-9999) ".
           DISPLAY "Digite 0(zero) para cancelar: ".
           ACCEPT CODIGO-FUNCIONARIO-ALTERAR.
      *    atribui o codigo fornecido ao registro.
           MOVE CODIGO-FUNCIONARIO-ALTERAR TO FUNCIONARIO-CODIGO.

           MOVE "N" TO REGISTRO-ENCONTRADO.

           PERFORM ENCONTRA-REGISTRO-FUNCIONARIO
               UNTIL REGISTRO-ENCONTRADO = "S" OR
                   FUNCIONARIO-CODIGO = ZEROES.

       ENCONTRA-REGISTRO-FUNCIONARIO.
           MOVE "S" TO REGISTRO-ENCONTRADO.
           READ ARQUIVO-FUNCIONARIO RECORD
      *    se não encontrar o registro atribui N a REGISTRO-ENCONTRADO.
           INVALID KEY
               MOVE "N" TO REGISTRO-ENCONTRADO.

           IF REGISTRO-ENCONTRADO = "N"
               DISPLAY "Registro nao encontrado ".
               DISPLAY "Informe o codigo do funcionario ".
               DISPLAY " para alterar (1-9999) ".
               DISPLAY " digite 0 (zero) para cancelar: ".
               ACCEPT CODIGO-FUNCIONARIO-ALTERAR.

           MOVE CODIGO-FUNCIONARIO-ALTERAR TO FUNCIONARIO-CODIGO.

       ALTERAR-REGISTRO.
      *    exibe todos os campos do resgistro
           DISPLAY " ".
           DISPLAY "Codigo: " FUNCIONARIO-CODIGO.
           DISPLAY "1.Nome: " FUNCIONARIO-NOME.
           DISPLAY "2.Endereco: " FUNCIONARIO-ENDERECO.
           DISPLAY "3.Telefone: " FUNCIONARIO-TELEFONE.
           DISPLAY "4.Email: " FUNCIONARIO-EMAIL.
           DISPLAY " ".
      *    o usuario deve escolher um campo para alterar.
           DISPLAY "Digite o numero do campo ".
           DISPLAY " para alterar (1-4) ou 0 (zero) para sair: ".
           ACCEPT QUAL-CAMPO.

           IF QUAL-CAMPO > 4
               DISPLAY "Campo invalido".

           PERFORM MUDA-E-GRAVA-UM-CAMPO.
           PERFORM PEGA-REGISTRO-FUNCIONARIO.

       MUDA-E-GRAVA-UM-CAMPO.
           IF QUAL-CAMPO = 1
               DISPLAY "Informe o nome: "
               ACCEPT FUNCIONARIO-NOME.

           IF QUAL-CAMPO = 2
               DISPLAY "Informe o endereco: "
               ACCEPT FUNCIONARIO-ENDERECO.

           IF QUAL-CAMPO = 3
               DISPLAY "Informe o telefone: "
               ACCEPT FUNCIONARIO-TELEFONE.

           IF QUAL-CAMPO = 4
               DISPLAY "Informe o email: "
               ACCEPT FUNCIONARIO-EMAIL.

           PERFORM REESCREVER-REGISTRO.

       REESCREVER-REGISTRO.
           REWRITE FUNCIONARIO-REGISTRO
               INVALID KEY
               DISPLAY "Erro ao reescrever o registro".
