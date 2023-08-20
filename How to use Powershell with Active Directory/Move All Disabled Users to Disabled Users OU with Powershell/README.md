<h1>Move All Disabled Users to Disabled Users OU with Powershell</h1>

```
﻿# Import the AD Module
Import-Module ActiveDirectory

# List all disabled AD users
Search-ADAccount -AccountDisabled | Select-Object Name, DistinguishedName

# Move all disabled AD users to disabled users OU
Search-ADAccount -AccountDisabled | Where {$_.DistinguishedName -notlike "*OU=Disabled Users*"} | Move-ADObject -TargetPath "OU=Disabled Users,OU=Contoso,DC=mydomain,DC=com"

# Disable all users in the disabled users OU
Get-ADUser -Filter {Enabled -eq $True} -SearchBase "OU=Disabled Users,OU=Contoso,DC=mydomain,DC=com" | Disable-ADAccount
```

![Disabled](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Move%20All%20Disabled%20Users%20to%20Disabled%20Users%20OU%20with%20Powershell/sub/1.png)
![Disabled](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Move%20All%20Disabled%20Users%20to%20Disabled%20Users%20OU%20with%20Powershell/sub/2.png)
