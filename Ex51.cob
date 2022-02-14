       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX51.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR1 PIC 9(02) VALUE ZEROS.
       77 WRK-VALOR2 PIC 9(02) VALUE ZEROS.
       77 WRK-SOMA PIC 9(04) VALUE ZEROS.
       77 WRK-SOMA-ED PIC Z999 VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-INICIAR.
       PERFORM 0200-ENTRADA.
       PERFORM 0300-PROCESSAR.
       STOP RUN.

       0200-ENTRADA.
       DISPLAY 'INFORME O PRIMEIRO NUMERO'
       ACCEPT WRK-VALOR1 FROM CONSOLE.

       DISPLAY 'INFORME O OUTRO NUMERO'
       ACCEPT WRK-VALOR2 FROM CONSOLE.


       0300-PROCESSAR.
       ADD WRK-VALOR1 WRK-VALOR2 TO WRK-SOMA.
       MOVE WRK-SOMA TO WRK-SOMA-ED.

       DISPLAY 'A SOMA E: ' WRK-SOMA-ED.
