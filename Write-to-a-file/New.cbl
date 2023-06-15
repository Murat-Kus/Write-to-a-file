       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADDING-ITEMS.
      *********************************
      *AUTHOR. MURAT KUÞ.
      *DATE-WRITTEN. 14/06/2023.
      *********************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT ITEM-FILE ASSIGN TO
           "C:\Coding etc\Github Cobol\Write-to-a-file\itemfile.dat"           *>In windows you need to create the file you assigning to. It must be a .dat file.
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD  ITEM-FILE.
       01  STOCK-ITEMS.
        02 ITEM-NAME PIC X(20).
        02 ITEM-CODE PIC X(5).
        02 ITEM-PRICE PIC $Z(5).9(2).

       WORKING-STORAGE SECTION.

       01  WS-STOCK-ITEMS.
        02 WS-ITEM-NAME PIC X(20).
        02 WS-ITEM-CODE PIC X(5).
        02 WS-ITEM-PRICE PIC $Z(5).9(2).


       PROCEDURE DIVISION.
       OPEN EXTEND ITEM-FILE.

           DISPLAY "Welcome to the Adding Items App"
           DISPLAY "Please enter the item name:"
           ACCEPT ITEM-NAME
           DISPLAY "Please enter the item code:"
           ACCEPT ITEM-CODE
           DISPLAY "Please enter the item price:"
           ACCEPT ITEM-PRICE
           WRITE STOCK-ITEMS
           END-WRITE.
       CLOSE ITEM-FILE.
           STOP RUN.
