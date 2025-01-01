Dim objShell
Set objShell = CreateObject("WScript.Shell")



'In order for this to work you need to set the cases of 'password' to the password for your user and set the 'user@ipadress' to the user and ip adress of your server/system
'You can also change the speed to what you want as long as its in the rang of 0-255, mine is set to 160 which is roughly 62% speed
'Last thing: in 'echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1' the number 2 after hwmon might be different bassed of you system, to check just type that code into the terminal and see if it says the number initially stated (160 in my case) comes back, i fnot the try hwmon1 and up




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
