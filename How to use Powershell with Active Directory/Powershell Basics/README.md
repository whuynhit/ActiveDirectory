<h1>Powershell Basics</h1>

### The `Start-Transcipt` command records all of the commands that have been typed in the current Powershell session.
### And `Get-Command *-AD*` shows all Powershell commands pertaining to Active Directory Users and Computers.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/1.png)

### `Get-Alias` will show all aliases, which are commands used in the Powershell.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/2.png)

### To create a variable, append the $ character to a variable name.
### `$Variable = 15` stores the integer value of 15 to the variable called "$Variable."
### `echo @Variable` returns the value of 15 in the Powershell.
### `$Variable*30` processes basic arithmetic and return the value of 45 in the Powershell.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/3.png)

### `Get-Help <command>` will display information about the specified Powershell command.
### The following displays information about the echo command.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/4.png)

### `Get-Help Get-ADUser` displays information about the Get-ADUser command.
### 'Get-ADUser -Identity 'Administrator'` displays information about Active Directory user named "Administrator.
### `Get-ADUser -Filter (Name -eq 'Administrator')` #Alternative way of displaying information about Active Directory user named "Administrator.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/5.png)

### `Get-ADUser jbourne` displays information about Active Directory user named "jbourne"
### `Set-ADUser jbourne -EmailAddress "jbourne@contoso.com"` sets the value of jbourne's mail attribute to specified string value.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/6.png)

### In the Active Directory Users and Computers with Advanced Features enabled, we can see that the Powershell script has successfully set an email to the mail attribute for user jbourne under the Attribute Editor tab in the user's properties.  
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/7.png)

### `Get-Help Set-ADUser` displays information about the specified command. 
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/8.png)

### `Get-History` displays all previous commands and aliases that have been run in the current session of Powershell 
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/9.png)
