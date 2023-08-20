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