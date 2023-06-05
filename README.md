# Simple Folder Locking Script
This script allows you to lock and unlock a folder on your system using a simple command prompt interface. It creates a secure folder named "MyFiles" and protects it by renaming it to "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" and setting the hidden and system attributes.




## Deployment Script
The script uses the following commands and logic:

```bash
    @ECHO OFF
    if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
    if NOT EXIST MyFiles goto MDMyFiles
    :CONFIRM
    echo Are you sure to lock this folder? (Y/N)
    set/p "cho=>"
    if %cho%==Y goto LOCK
    if %cho%==y goto LOCK
    if %cho%==n goto END
    if %cho%==N goto END
    echo Invalid choice.
    goto CONFIRM
    :LOCK
    ren MyFiles "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
    attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
    echo Folder locked
    goto End
    :UNLOCK
    echo Enter password to Unlock Your Secure Folder
    set/p "pass=>"
    if NOT %pass%== YOUR-PASSWORD goto FAIL
    attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
    ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MyFiles
    echo Folder Unlocked successfully
    goto End
    :FAIL
    echo Invalid password
    goto end
    :MDMyFiles
    md MyFiles
    echo MyFiles created successfully
    goto End
    :End
```


## Usage

1.  Save the script to a file with a **'.bat'** extension (e.g., **'folder_lock.bat'**).
2.  Double-click the script file to run it.
3.  The script will prompt you with a confirmation message asking if you want to lock the folder.
4.  Enter **"Y"** or **"y"** to proceed with locking the folder. Enter **"N"** or **"n"** to exit the script.
5.  If you choose to lock the folder, it will be renamed and hidden.
6.  To unlock the folder, run the script again. It will prompt you to enter the password.
7.  Enter the correct password to unlock the folder. If the password is incorrect, the script will display an error message.
8.  Once unlocked, the folder will be restored to its original name and can be accessed normally.

> **Note: Replace YOUR-PASSWORD with your desired password in the script.**


# Script Details

The script uses the following commands and logic:

- @ECHO OFF: Turns off the command echo to make the script output cleaner.
- if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK: Checks if the locked folder exists and jumps to the unlock section if it does.
- if NOT EXIST MyFiles goto MDMyFiles: Checks if the folder does not exist and jumps to the folder creation section if it doesn't.
- :CONFIRM: Begins the confirmation section where the user is prompted to confirm their action.
- echo Are you sure to lock this folder? (Y/N): Displays a message asking for confirmation.
- set/p "cho=>": Prompts the user to input their choice.
- if %cho%==Y goto LOCK: Checks if the user's choice is "Y" and jumps to the lock section if it is.
- if %cho%==y goto LOCK: Checks if the user's choice is "y" and jumps to the lock section if it is.
- if %cho%==n goto END: Checks if the user's choice is "n" and jumps to the end section if it is.
- if %cho%==N goto END: Checks if the user's choice is "N" and jumps to the end section if it is.
- echo Invalid choice.: Displays an error message for an invalid choice.
- goto CONFIRM: Jumps back to the confirmation section.
- :LOCK: Begins the folder lock section.
- ren MyFiles "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}": Renames the "MyFiles" folder to a secure name.
- attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}": Sets the hidden and system attributes for the locked folder.
- echo Folder locked: Displays a message indicating that the folder has been locked.
- goto End: Jumps to the end section of the script.
- :UNLOCK: Begins the folder unlock section.
- echo Enter password to Unlock Your Secure Folder: Displays a message asking for the password.
- set/p "pass=>": Prompts the user to input the password.
- if NOT %pass%== YOUR-PASSWORD goto FAIL: Checks if the entered password is correct and jumps to the fail section if it's incorrect.
- attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}": Removes the hidden and system attributes from the locked folder.
- ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MyFiles: Restores the folder name to its original name.
- echo Folder Unlocked successfully: Displays a message indicating that the folder has been unlocked.
- goto End: Jumps to the end section of the script.
- :FAIL: Begins the fail section for an invalid password.
- echo Invalid password: Displays an error message for an invalid password.
- goto end: Jumps to the end section of the script.
- :MDMyFiles: Begins the folder creation section.
- md MyFiles: Creates a new folder named "MyFiles".
- echo MyFiles created successfully: Displays a message indicating that the folder has been created.
- goto End: Jumps to the end section of the script.
- :End: Ends the script execution.

***Feel free to modify and customize this script to suit your needs.***
