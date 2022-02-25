       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX57.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-GANHA-HORA PIC 9(04) VALUE ZEROS.
       77 WRK-HORAS-TRABALHADAS-MES PIC 9(04) VALUE ZEROS.
       77 WRK-CALCULA-HORAS PIC 9(06) VALUE ZEROS.
       77 WRK-CALCULA-HORAS-ED PIC Z9999 VALUE ZEROS.
       PROCEDURE DIVISION.
       0100-INICIAR.
       PERFORM 0200-ENTRADA.
       PERFORM 0300-PROCESSAR.
       STOP RUN.

       0200-ENTRADA.
       DISPLAY 'INFORME QUANTO GANHA HORA'.
       ACCEPT WRK-GANHA-HORA FROM CONSOLE.

       DISPLAY 'INFORME HORAS TRABALHADAS NO MES'
       ACCEPT WRK-HORAS-TRABALHADAS-MES FROM CONSOLE.




       0300-PROCESSAR.
       MULTIPLY WRK-GANHA-HORA BY WRK-HORAS-TRABALHADAS-MES
                               GIVING WRK-CALCULA-HORAS.

       MOVE WRK-CALCULA-HORAS TO WRK-CALCULA-HORAS-ED.
       DISPLAY 'VOCE IRA GANHAR... ' WRK-CALCULA-HORAS-ED.
