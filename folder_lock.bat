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
