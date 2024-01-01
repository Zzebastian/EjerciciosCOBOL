      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. esPrimo.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 dividendo PIC 9(8).
       01 divisor PIC 9(8) VALUE 2.
       01 entero PIC 9(8).
       01 resto PIC 9(8).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Inserte el número a verificar"
           ACCEPT dividendo.
           PERFORM VERIF.
           ADD 1 to divisor GIVING divisor
           PERFORM VERIF.
           PERFORM BUCLE.

           STOP RUN.
       BUCLE.
           ADD 2 to divisor GIVING divisor.
           IF divisor < dividendo
               PERFORM VERIF
               PERFORM BUCLE
           ELSE
               DISPLAY "El numero: " dividendo " es primo".



       VERIF.
           DIVIDE dividendo BY divisor GIVING entero REMAINDER resto

           DISPLAY divisor " " resto.

           IF resto = 0
               DISPLAY "No es primo"
               STOP RUN.
           EXIT.

       END PROGRAM esPrimo.
