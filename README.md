# Write-to-a-file
Explanation of the COBOL program

TL;DR :

This COBOL program writes user input to a file named itemfile.dat. The user is prompted to enter an item name, item code, and item price. The program then writes this data to the file.

Explanation :

This COBOL program writes user input to a file named itemfile.dat. The program starts with the IDENTIFICATION DIVISION and ENVIRONMENT DIVISION sections, which define the program name, author, and date, as well as the input-output section and file control.

The FILE-CONTROL section specifies the file to be used in the program. In this case, the file is named ITEM-FILE and is assigned to the path C:\Coding etc\Github Cobol\Write-to-a-file\itemfile.dat. The ORGANIZATION clause specifies that the file is line sequential and the ACCESS clause specifies that the file is accessed sequentially.

The DATA DIVISION section defines the structure of the file. In this case, the file contains a single record named STOCK-ITEMS, which has three fields: ITEM-NAME, ITEM-CODE, and ITEM-PRICE. Each field is defined using a PICTURE clause, which specifies the data type and length of the field.

The WORKING-STORAGE SECTION defines a copy of the STOCK-ITEMS record, which is used to hold user input before it is written to the file.

The PROCEDURE DIVISION is where the main logic of the program is defined. The OPEN EXTEND ITEM-FILE statement opens the file for writing. The DISPLAY statements prompt the user to enter the item name, item code, and item price, and the ACCEPT statements read the user input into the STOCK-ITEMS record.

The WRITE STOCK-ITEMS statement writes the STOCK-ITEMS record to the file, and the END-WRITE statement marks the end of the write operation. The CLOSE ITEM-FILE statement closes the file, and the STOP RUN statement terminates the program.
