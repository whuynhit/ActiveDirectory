# How to Automatically Map Network Share Drives with Group Policy

### For this example, I have created two new groups named "Group A" and "Group B." 
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/1.png)

### And have added a user as a member for each group.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/2.png)

### In Server Manager > File and Storage Services > Shares, create a new SMB share, select the share location, and name it after one of the newly created domain group. Then you may keep Other settings on default settings, and click "Next."
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/3.png)

### For permissions, click "Customize permissions." In Advanced Security settings, click "Disable inheritance" and select "Convert inherited permissions into explicit permission on this object." Remove the Users groups. And then click "Add." 
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/4.png)

### Click "Select a principal" and add Group A. Then the basica permissions need to be configured like the following:

```
Read % execute

List folder contents

Read

Write
```
### Then click "OK."
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/5.png)

### With Group A added and permissions altered, click "OK." Then in the New Share Wizard, click "Next" and finish the creating the new share.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/6.png)

### Proceed to do the same with Group B user group.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/7.png)

### In Active Directory Users and Computers, create a new shared folder.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/8.png)

### Name it "Group A" and provide the network path to the share:

```
\\WS22DC\Group A
```
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/9.png)

### Do the same for Group B user group.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/10.png)

### In Group Policy Management, create and link two new GPO to a desired OU. In this case, it's under Contoso as that is where the newly created shared folder objects are located.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/11.png)

### Name them "Group A Mapped Drive" and "Group B Mapped Drive" respectively. Then right-click one of the newly created GPOs and select "Edit."
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/12.png)

### In the Group Policy Management Editor, navigate to User Configuration/Preferences/Windows Settings/Drive Maps and then create new mapped drive
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/13.png)

### Browse Location by clicking [...]
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/14.png)

### For Group A Mapped Drive GPO, select Group A. For Group B Mapped Drive, select Group B.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/15.png)

### Check the "Reconnect" box. For the drive letter, "Use first available" and select a drive letter. Then click "OK."
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/16.png)

### In the Group Policy Management, under Security Filtering on the Group A Mapped Drive GPO, remove Authenticated Users and Add Group A user group. Do the same with Group B user group.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/17.png)

### In the Mapped Drive GPOs, select the Delagation tab and add Authenticated Users with read only permissions.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/18.png)

### On the client machine, run the following command in the Command Prompt:
```
gpupdate /force
```
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/19.png)

### Group A network drive should now be mapped.  
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/20.png)

### Group B network drive should now be mapped. 
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/21.png)

### Group A members can now access Group A file share.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/22.png)

### Group A members should not be able to access Group B file shares.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/23.png)

### Group B members can now access Group B file share.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/24.png)

### Group B members should not be able to access Group A file shares.
![NSD](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/How%20to%20Automatically%20Map%20Network%20Share%20Drives%20with%20Group%20Policy/sub/25.png)
