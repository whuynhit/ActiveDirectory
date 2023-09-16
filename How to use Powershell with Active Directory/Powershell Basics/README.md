<h1>Powershell Basics</h1>

## Here are some basic commands to get started with Powershell

```Powershell 
Start-Transcipt
```
### Records all of the commands that have been typed in the current Powershell session.
```Powershell
Get-Command *-AD*
```
### Shows all Powershell commands pertaining to Active Directory Users and Computers.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/1.png)

```Powershell
Get-Alias
```
### Shows all aliases, which are commands used in the Powershell.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/2.png)

### To create a variable, append the $ character to a variable name.

```Powershell
$Variable = 15
```
### Stores the integer value of 15 to the variable called "$Variable."
```Powershell
echo $Variable
```
### Returns the value of 15 in the Powershell.
```Powershell
$Variable * 30
```
### Processes basic arithmetic and return the value of 45 in the Powershell.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/3.png)

```Powershell
Get-Help <command>
```
### Display information about the specified Powershell command.
### The following displays information about the echo command.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/4.png)

```Powershell
Get-Help Get-ADUser
``` 
### Displays information about the Get-ADUser command.
```Powershell
Get-ADUser -Identity 'Administrator'
```
### Displays information about Active Directory user named "Administrator.
```Powershell
Get-ADUser -Filter (Name -eq 'Administrator')
```
### Alternative way of displaying information about Active Directory user named "Administrator.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/5.png)

```Powershell
Get-ADUser jbourne
```
### Displays information about Active Directory user named "jbourne."
```Powershell
Set-ADUser jbourne -EmailAddress "jbourne@contoso.com"
``` 
### Sets the value of jbourne's mail attribute to specified string value.
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/6.png)

### In the Active Directory Users and Computers with Advanced Features enabled, we can see that the Powershell script has successfully set an email to the mail attribute for user jbourne under the Attribute Editor tab in the user's properties.  
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/7.png)

```Powershell
Get-Help Set-ADUser
```
### Displays information about the specified command. 
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/8.png)

```Powershell
Get-History
```
### Displays all previous commands and aliases that have been run in the current session of Powershell 
![Powershell](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Powershell%20Basics/sub/9.png)
