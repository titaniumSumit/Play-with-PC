Set objShell = CreateObject("WScript.Shell")

' Open the web browser and navigate to the YouTube channel
objShell.Run "msedge.exe" 
objShell.Run "chrome.exe" ' Change this to your browser executable if needed
WScript.Sleep 2000          ' Wait for the browser to open
objShell.SendKeys "https://www.youtube.com/watch?v=FPcsJTxnaBQ"
objShell.SendKeys "{ENTER}"  ' Press Enter

WScript.Sleep 10000         ' Wait for 10 seconds (10000 milliseconds)

' Close the browser
objShell.AppActivate "YouTube"  ' Activate the YouTube window
WScript.Sleep 500                ' Wait for a moment
objShell.SendKeys "%{F4}"        ' Alt + F4 to close the window

' Open Command Prompt and run the curl command
objShell.Run "cmd.exe"
WScript.Sleep 1000              ' Wait for Command Prompt to open
objShell.SendKeys "curl ascii.live/can-you-hear-me"  ' Type the curl command
objShell.SendKeys "{ENTER}"      ' Press Enter

WScript.Sleep 7000               ' Wait for 7 seconds (7000 milliseconds)

' Send Ctrl+C
WScript.Sleep 1000               ' Wait for a moment
objShell.SendKeys "^c"            ' Send Ctrl+C

' Close Command Prompt
objShell.SendKeys "exit"          ' Type exit to close Command Prompt
objShell.SendKeys "{ENTER}"       ' Press Enter
Set objShell = CreateObject("WScript.Shell")
Dim message, countdown, i, beepCount

' Step 1: Initial Warning
message = "CRITICAL SYSTEM ALERT!" & vbCrLf & vbCrLf & _
          "Unauthorized access detected." & vbCrLf & _
          "Your system will initiate lockdown shortly."
MsgBox message, vbCritical, "System Security"

' Step 2: Open multiple browser windows (chaotic effect)
For i = 1 To 5
    objShell.Run "msedge.exe"
    objShell.Run "chrome.exe"
    WScript.Sleep 1000
Next

' Step 3: Play a warning sound repeatedly
For beepCount = 1 To 5
    objShell.Run "mshta vbscript:Beep()"
    WScript.Sleep 500
Next

' Step 4: Display a fake "System Lockdown" countdown
For countdown = 10 To 1 Step -1
    MsgBox "WARNING: System Lockdown in " & countdown & " seconds!" & vbCrLf & _
           "Please save your work immediately.", vbCritical, "System Lockdown"
    WScript.Sleep 1000
Next

' Step 5: Simulate desktop takeover (open Notepad with ominous text)
objShell.Run "notepad.exe"
WScript.Sleep 1000
objShell.SendKeys "Your system has been compromised!" & vbCrLf
WScript.Sleep 500
objShell.SendKeys "Encrypting your files... Do not turn off your computer." & vbCrLf
WScript.Sleep 500
objShell.SendKeys "System critical components are being removed." & vbCrLf
WScript.Sleep 500
objShell.SendKeys "Contact support@example.com to recover your data." & vbCrLf

' Step 6: Change desktop background to black (visual effect)
Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_DesktopMonitor")
For Each objItem in colItems
    objShell.RegWrite "HKEY_CURRENT_USER\Control Panel\Colors\Background", "0 0 0"
    objShell.Run "cmd.exe /c taskkill /f /im explorer.exe"
    WScript.Sleep 1000
    objShell.Run "explorer.exe"
Next

' Step 7: Simulate a destructive "shutdown" phase
MsgBox "SYSTEM SHUTDOWN INITIATED! Preparing to delete all files...", vbCritical, "Fake Virus"
WScript.Sleep 2000

'Fake ascii art'
Dim asciiScript
asciiScript = "C:\Users\Public\ascii_hack.bat"
Set fso = CreateObject("Scripting.FileSystemObject")
Set asciiFile = fso.CreateTextFile(asciiScript, True)
asciiFile.WriteLine "@echo off"
asciiFile.WriteLine "color 0A"
asciiFile.WriteLine "title You Are Hacked!"
asciiFile.WriteLine ":loop"
asciiFile.WriteLine "cls"
asciiFile.WriteLine "echo  .------..------..------..------..------..------..------..------..------..------..------."
asciiFile.WriteLine "echo  | Y.--. || O.--. || U.--. || A.--. || R.--. || E.--. || H.--. || A.--. || C.--. || K.--. || E.--. || D.--. |"
asciiFile.WriteLine "echo  | (o_o) || :/   || (_^_) || (o_o) || :/   || / ^ / || \_^_/ || :/   || (o_o) || (^_^) || (o_o) || :/   |"
asciiFile.WriteLine "echo  '------''------''------''------''------''------''------''------''------''------''------'"
asciiFile.WriteLine "timeout /t 1 >nul"
asciiFile.WriteLine "goto loop"
asciiFile.Close

' Run the ASCII animation script
objShell.Run "cmd.exe /c " & asciiScript
WScript.Sleep 10000

' Clean up the ASCII batch file
fso.DeleteFile asciiScript

' Step 8: Fake encryption script via command prompt
objShell.Run "cmd.exe"
WScript.Sleep 1000
objShell.SendKeys "echo Encrypting system files..." & "{ENTER}"
WScript.Sleep 2000
objShell.SendKeys "echo Deleting Windows system files..." & "{ENTER}"
WScript.Sleep 2000
objShell.SendKeys "echo Virus installation complete!" & "{ENTER}"
WScript.Sleep 3000

' Step 9: Close all applications to amplify the illusion
objShell.Run "taskkill /IM notepad.exe /F"
objShell.Run "taskkill /IM chrome.exe /F"
objShell.Run "taskkill /IM msedge.exe /F"

' Step 10: The Reveal - It's a prank!
WScript.Sleep 3000
MsgBox "Relax! It's just a harmless prank. No files were encrypted or deleted. :)", vbInformation, "Prank Complete"
MsgBox "If you're still scared, blame the person who ran this script!", vbInformation, "Gotcha!"
