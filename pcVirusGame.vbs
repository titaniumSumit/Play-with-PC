Set objShell = CreateObject("WScript.Shell")

' Open the web browser and navigate to the YouTube channel
objShell.Run "msedge.exe"  ' Change this to your browser executable if needed
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
