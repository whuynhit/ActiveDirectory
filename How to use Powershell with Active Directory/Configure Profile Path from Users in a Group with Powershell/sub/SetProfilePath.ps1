#Import Active Directory Module
Import-Module ActiveDirectory

#Get all members of roaming profile group
Get-ADGroupMember "Roaming Profile Users" |
    #Loop through list of users in group
    ForEach-Object {
    #Do the following for each member of the group
        Set-ADUser -Identity $_.SamAccountName -ProfilePath ("\\WS22DC\Profiles$\" + $_.SamAccountName)
    }
