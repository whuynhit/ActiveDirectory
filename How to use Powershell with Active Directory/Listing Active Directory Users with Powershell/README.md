<h1>Listing Active Directory Users with Powershell</h1>

```Powershell
#Import Active Directory Module
Import-Module ActiveDirectory

#List all AD Users (limit of 100 users)
Get-ADUser -Filter * -ResultSetSize 100 | Select-Object Name, UserPrincipalName, Enabled
```
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/1.png)

```Powershell
#Import Active Directory Module
Import-Module ActiveDirectory

#List all AD Users (limit of 100 users)
Get-ADUser -Filter * -ResultSetSize 100  -Properties LastLogon | Select-Object Name, UserPrincipalName, Enabled, LastLogon
```
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/2.png)

### Somtimes you will need to find the LDAP Path of an OU in a domain to use within your Powershell script. One way of finding it is to simply traverse the directory.
```Powershell
ps C:\Users\Administrator> cd AD:

PS AD:\DC=mydomain,DC=com> cd .\OU=Contoso

PS AD:\OU=Contoso,DC=mydomain,DC=com> cd '.\OU=Domain Users'

PS AD:\OU=Domain Users,OU=Contoso,DC=mydomain,DC=com> cd C:
```
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/3.png)

### You can find the LDAP Path to use in a Powershell script like the above. 
### In Active Directory Users and Computers with Advanced Features enabled, open the Domain Users Properties and click the Attribute Editor to look for the distinguishedName attribute. Its string value will be the LDAP Path.
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/4.png)

```Powershell
#Import Active Directory Module
Import-Module ActiveDirectory

#List all AD Users in an OU
Get-ADUser -Filter * -SearchBase "OU=Domain Users,OU=Contoso,DC=mydomain,DC=com" | Select-Object Name
```
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/5.png)

```Powershell
#Import Active Directory Module
Import-Module ActiveDirectory

#List all AD Users in a Group
Get-ADGroupMember 'Roaming Profile Users' | Select-Object Name, DistinguishedName
```
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/6.png)


```Powershell
#Import Active Directory Module
Import-Module ActiveDirectory

#List all AD Users in a Group and exports list to a CSV file
Get-ADGroupMember 'Roaming Profile Users' | Select-Object Name, DistinguishedName | Export-Csv "C:\Roaming Profile Users.csv"
```
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/7.png)

### The exported list of AD Users from a group.
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/8.png)

```Powershell
#Import Active Directory Module
Import-Module ActiveDirectory

#List disabled AD User accounts and exports list to a CSV file
Search-ADAccount -Account Disabled | Select-Object Name | Export-Csv "C:\Disabled Accounts.csv"
```
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/9.png)

### The exported list of disabled AD user accounts.
![List](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Listing%20Active%20Directory%20Users%20with%20Powershell/sub/10.png)
