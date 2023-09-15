<h1>Configuring Romaing Profiles for User Accounts</h1>

### In Server Manager > File and Storage Services > Shares, create a new share.
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/1.png)

### Select SMB Share - Quick and click "Next."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/2.png)

### For Share Location, you may select Volume C: and click "Next."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/3.png)

### But for this example, I created a new Volume E:, and clicked "Next."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/4.png)

### For Share Name, name it "Profiles$" and click "Next."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/5.png)

### For Other Settings, select the three options as shown below and click "Next."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/6.png)

### For Permissions, click "Customize Permissions."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/7.png)

### In the Advanced Security Settings for Profiles$, click "Disable Inheritance."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/8.png)

### Then select "Convert inherited permissions into explicit permissions on this object." And then remove the Users group with read, execute, and special permissions.
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/9.png)

### in Active Directory Users and Computers, create new OU call "Domain Groups."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/10.png)

### In the Domain Groups OU, create a new group
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/11.png)

### Name it "Roaming Profile Users" and keep the group scope "Global" and group type "Security."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/12.png)

### In the Roaming Profile Users group properties, click "Members" and then add a member to the group.
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/13.png)

### For this example, I added existing user named "Jason Bourne" to the group.
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/14.png)

### Back on the Advanced Security Settings for Profile$, click "Add."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/15.png)

### Click "Select a principal." Add the newly created group called "Roaming Profile Users."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/16.png)

### Uncheck all basic permissions. Then click "Show advanced permissions."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/17.png)

### Make sure that permissions apply to this folder only. Check the following advanced permissions:

```
List folder / read data

Create folders / append data
```
### Then click "OK."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/18.png)

### With Roaming Profiles Users group added and permissions altered, click "OK." Then in the New Share Wizard, click "Next."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/19.png)

### New share has been created and the permissions have been set.
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/20.png)

### In Active Directory Users and Computers, in the properties of the users who are members of the Roaming Profile Users group, click the Profile tab and in the profile path enter the following:

```
\\WS22DC\Profiles$\%username%
```
### Then click "Apply."
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/21.png)

### After it has been applied, you can see that the profile path has been updated to:

```
\\WS22DC\Profile$\jbourne
```

### With "%username%" value being replaced with the profile username. 
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/22.png)

### On the client machine, in Settings > System > About, click Advanced System Settings. Under System Properties, click "Settings" for User Profiles. You should find that members of the Roaming Profile User group hold the "Roaming" status.
![Roaming](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Configuring%20Roaming%20Profiles%20for%20User%20Accounts/sub/23.png)
