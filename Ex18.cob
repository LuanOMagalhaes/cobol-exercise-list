
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX16.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-NM PIC S9(04) VALUE ZEROS.




       PROCEDURE DIVISION.
       DISPLAY 'INFORME UM NUMERO'
       ACCEPT WRK-NM FROM CONSOLE.



       IF WRK-NM LESS THAN 0
           DISPLAY 'NUMERO NEGATIVO'
       ELSE
           DISPLAY 'NUMERO POSITIVO'



       STOP RUN.
