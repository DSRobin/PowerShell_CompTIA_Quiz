# PowerShell_CompTIA_Quiz
Quiz written in PowerShell.

This script, written in PowerShell is importing an CSV file that contains all the acronyms
that are required to be comprehend for the CompTIA A+ 220-1001 exam.

How the script works:

By importing an CSV file, the content is written to an array. The Get-Random command picks a random item from the array and prompts for
the answer. After entering the answer the index of this item is deleted from the array and the script will loop until all items from the array are used.

It is important that the user input is identical to the answer in the CSV file, otherwise it is not recognized as correct. 
Capital letters are ignored.

This script can be used for any QA quiz, just change the contentt of QA.csv.
