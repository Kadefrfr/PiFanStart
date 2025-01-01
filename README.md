# Fan Control via SSH (VBS Script)

This VBS script automates SSH login and fan control on my server.

### How It Works:
1. **Open Command Prompt**:  
   ```objShell.Run "cmd.exe"```  

2. **SSH Connection**:  
   Sends the SSH login:  
   ```objShell.SendKeys "ssh user@ip_address" & objShell.SendKeys "{ENTER}"```  
   Then enters the password:  
   ```objShell.SendKeys "password" & objShell.SendKeys "{ENTER}"```  

3. **Start the Fan**:  
   Sets fan speed to 160 (about 62%):  
   ```objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"```  
   Repeats this command 11 more times for consistency.

4. **Clear Screen**:  
   ```objShell.SendKeys "clear"```  

### Key Points:
- **Fan Speed**: 160 keeps the server cool and quiet. Adjust between 0 (off) and 255 (max).  
- **Delay**: A 1-second wait ensures stability but may be reduced.
- **Purpose**: Automates SSH and fan startup for convenience.

This script was originally created to simplify connecting to my server via SSH. However, since I couldn't get any of the methods I tried to start the fan to work, I realized I could simply start it when I connect. Albeit, it sends the command to start the fan even if it's already running (luckily, this doesn't cause any issues).
