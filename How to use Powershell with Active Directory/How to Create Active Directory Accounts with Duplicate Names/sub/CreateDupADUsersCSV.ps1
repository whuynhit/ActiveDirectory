﻿# Import the AD Module
Import-Module ActiveDirectory

#Preset Password
$USER_PASSWD = "Password1"
$password = ConvertTo-SecureString $USER_PASSWD -AsPlainText -Force

# Get the path to our target CSV file
$filepath = Read-Host -Prompt "Please enter the path to the CSV file that contains the new user accounts"

# Import the CSV as an array
$users = Import-CSV $filepath

# Complete an action for each user in the CSV file
ForEach ($user in $users) {
    # Do this for each user
    $accountNumber = verifyUsername($user.'First Name'[0] + $user.'Last Name')
    $username = ($user.'First Name'[0] + $user.'Last Name' + $accountNumber)

    New-ADUser `
        -Name ($user.'First Name' + " " + $user.'Last Name' + " " + $accountNumber) `
        -GivenName $user.'First Name' `
        -Surname $user.'Last Name' `
        -UserPrincipalName $username `
        -SamAccountName $username `
        -AccountPassword $password `
        -Description $user.Description `
        -EmailAddress $user.'Email Address' `
        -Title $user.'Job Title' `
        -OfficePhone $user.'Office Phone' `
        -Path $user.'Organizational Unit' `
        -ChangePasswordAtLogon 1 `
        -Enabled ([System.Convert]::ToBoolean($user.Enabled))
}

# See if a username is already in use. If it is, then return the number that should be appended 
# the end of the name. Else, return an empty string (example: phill, phill1, phill2 etc...)
function verifyUsername($username) {
    $i = 1 

    # See if username is taken (or in use)
    if (userNameTaken($username) -eq $True) {
        while (userNameTaken($username + $i) -eq $True) {
            $i++
        }
    } else {
        return ""
    }
    return $i
}

# Check to see if username already exists
function userNameTaken($username) {
    $test1 = Get-ADUser -Filter { userPrincipalName -eq $username } 
    $test2 = Get-ADUser -Filter { samAccountName -eq $username }

    if($test1 -eq $Null -and $test2 -eq $Null) {
        return $False
    } else {
        return $True
    }
}