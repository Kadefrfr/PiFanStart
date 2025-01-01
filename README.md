Fan Control via SSH using VBS Script

This VBS script allows me to connect to my server via SSH without typing anything manually, and then automatically turn on the fan. Here's how it works:

1. **Open Command Prompt**:  
   The script uses `objShell.Run "cmd.exe"` to open the Command Prompt.

2. **SSH Connection**:  
   It then types the SSH connection command using:  
   ```objShell.SendKeys "ssh user@ip_address" & objShell.SendKeys "{ENTER}"```  
   This automatically connects to the server.

3. **Enter Password**:  
   The script sends the password to the prompt using:  
   ```objShell.SendKeys "password" & objShell.SendKeys "{ENTER}"```  
   It enters the password for the SSH connection.

4. **Start the Fan**:  
   Once connected, the script sends the command to start the fan:  
   ```objShell.SendKeys "echo 160 | sudo tee /sys/class/hwmon/hwmon2/pwm1"```  
   The fan speed is set to 160 (about 62% of max speed). It also enters the password again for `sudo` privileges.

5. **Repeat Fan Command**:  
   To keep the fan running, the script repeats the fan command 11 more times in quick succession. This helps maintain the fan speed. You can adjust this if needed, but it works based on my testing.

6. **Clear the Screen**:  
   Finally, the script clears the terminal using:  
   ```objShell.SendKeys "clear"```  
   This gives a clean terminal with no indication of the fan startup process.

### Notes on Script Behavior:

- **Password Entry**:  
   The password is entered twice—once for the SSH connection and once for the `sudo` command. Without this, the `sudo` command wouldn't work.

- **Delay**:  
   I set a 1-second delay between sending commands, as that worked in my initial tests. You could potentially reduce this delay if it works for your system.

- **Why it Works**:  
   The reason the fan stays on after sending the command multiple times in rapid succession seems to be a behavior in the shell. When the command is repeated quickly, the fan stays on. This might be due to a bug or an unintended feature in the shell.

- **Fan Speed**:  
   The fan is set to around 62% speed (160 out of a maximum of 255). This is quiet enough to ignore while keeping my server cool. You can adjust the fan speed by changing the value `160` to any number between 0 (off) and 255 (maximum speed).

### Purpose:
This script is simply a way for me to start an SSH session and add a fan startup command to control the server's cooling system. You can adapt this for your own use if needed!
