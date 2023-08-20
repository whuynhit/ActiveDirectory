# Import the AD Module
Import-Module ActiveDirectory

# List all disabled AD users
Search-ADAccount -AccountDisabled | Select-Object Name, DistinguishedName

# Move all disabled AD users to disabled users OU
Search-ADAccount -AccountDisabled | Where {$_.DistinguishedName -notlike "*OU=Disabled Users*"} | Move-ADObject -TargetPath "OU=Disabled Users,OU=Contoso,DC=mydomain,DC=com"

# Disable all users in the disabled users OU
Get-ADUser -Filter {Enabled -eq $True} -SearchBase "OU=Disabled Users,OU=Contoso,DC=mydomain,DC=com" | Disable-ADAccount