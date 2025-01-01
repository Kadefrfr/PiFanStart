Dim objShell
Set objShell = CreateObject("WScript.Shell")



'In order for this to work you need to set the cases of 'password' to the password for your user and set the 'user@ipadress' to the user and ip adress of your server/system



' Open Command Prompt
objShell.Run "cmd.exe"
WScript.Sleep 500 ' Wait for Command Prompt to open

' Type the SSH command
objShell.SendKeys "ssh user@ipadress"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 500 ' Wait for the SSH connection to establish

' Type the password
objShell.SendKeys "Password"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 500 ' Wait for the password to go through

' Type the fan start command
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 700 ' Wait for the command to go through

' Type the password
objShell.SendKeys "password"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 1000 ' Wait for the password to go through

' Type the fan start command 1
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 100 ' Wait for the command to go through

' Type the fan start command 2
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the fan start command 3
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the fan start command 4
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the fan start command 5
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the fan start command 6
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the fan start command 7
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the fan start command 8
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the fan start command 9
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through


' Type the fan start command 10
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the fan start command 11
objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter
WScript.Sleep 50 ' Wait for the command to go through

' Type the clear command
objShell.SendKeys "clear"
objShell.SendKeys "{ENTER}" ' Simulate pressing Enter

' Clean up
Set objShell = Nothing
