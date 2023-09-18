# Configure Profile Path from Users in a Group with Powershell

```Powershell
#Import Active Directory Module
Import-Module ActiveDirectory

#Get all members of roaming profile group
Get-ADGroupMember "Roaming Profile Users" |
    #Loop through list of users in group
    ForEach-Object {
    #Do the following for each member of the group
        Set-ADUser -Identity $_.SamAccountName -ProfilePath ("\\WS22DC\Profiles$\" + $_.SamAccountName)
    }
```
### Run the Powershell script.
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Configure%20Profile%20Path%20from%20Users%20in%20a%20Group%20with%20Powershell/sub/1.png)

### The Powershell script ran and successfully a profile path for specified group member Jason Bourne. 
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Configure%20Profile%20Path%20from%20Users%20in%20a%20Group%20with%20Powershell/sub/2.png)

### And Sasha Braun.
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Configure%20Profile%20Path%20from%20Users%20in%20a%20Group%20with%20Powershell/sub/3.png)
