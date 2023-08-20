<h1>Creating User Accounts from a CSV file</h1>

```
# Import the AD Module
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
    New-ADUser `
        -Name ($user.'First Name' + " " + $user.'Last Name') `
        -GivenName $user.'First Name' `
        -Surname $user.'Last Name' `
        -DisplayName ($user.'First Name' + " " + $user.'Last Name') `
        -UserPrincipalName $($user.'First Name'.Substring(0,1)+$user.'Last Name').ToLower() `
        -sAMAccountName $($user.'First Name'.Substring(0,1)+$user.'Last Name').ToLower() `
        -AccountPassword $password `
        -Description $user.Description `
        -EmailAddress $user.'Email Address' `
        -Title $user.'Job Title' `
        -OfficePhone $user.'Office Phone' `
        -Path $user.'Organizational Unit' `
        -Enabled ([System.Convert]::ToBoolean($user.Enabled))
}
```

![csv](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Creating%20User%20Accounts%20from%20a%20CSV%20File/sub/1.png)
![csv](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Creating%20User%20Accounts%20from%20a%20CSV%20File/sub/2.png)
