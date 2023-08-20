<h1>Creating User Accounts with Powershell</h1>

```
#Import AD Module
Import-Module ActiveDirectory

#Preset Password
$USER_PASSWD = "Password1"
$password = ConvertTo-SecureString $USER_PASSWD -AsPlainText -Force

#Grab variables from user
$firstname = Read-Host -Prompt "Please enter the first name"
$lastname = Read-Host -Prompt "Please enter the last name"
$username = "$($firstname.Substring(0,1))$($lastname)".ToLower()

#Create the AD User
New-ADUser `
	-Name "$firstname $lastname" `
	-GivenName $firstname `
	-Surname $lastname `
	-DisplayName "$firstname $lastname" `
	-UserPrincipalName $username `
	-sAMAccountName $username `
	-AccountPassword $password `
	-Path "OU=Domain Users,OU=Contoso,DC=mydomain,DC=com" `
	-Enabled $true
```

![ADUser](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Creating%20User%20Accounts%20with%20Powershell/sub/1.png)
![ADUser](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Creating%20User%20Accounts%20with%20Powershell/sub/2.png)