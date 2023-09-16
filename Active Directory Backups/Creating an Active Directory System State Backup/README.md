<h1>Creating an Active Directory System State Backup</h1>

### In the Server Manager, click Add Roles and Features. Then for Features, select and install "Windows Server Backup."
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/1.png)

### Once Windows Server Backup is installed. Navigate to Server Manager > Tools > Windows Server Backup.
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/2.png)

### Right-click Local Backup and select "Backup Once."
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/3.png)

### Backup Options: Different options.
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/4.png)

### Select Backup Configuration: Custom.
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/5.png)

### Select Items for Backup: Click "Add Items" and select "System state."
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/6.png)

### Specify Destination Type: Remote Shared Folder.
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/7.png)

### Specify Remote Folder: 
### Location: \\WS22DC\Backups
### Access Control: Inherit
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/8.png)

### Click "Backup."
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/9.png)

### Click "Close."
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/10.png)

### We can then confirm that the System state backup has been created in \\WS22DC\Backups\WindowsImageBackup.
![SSB](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Creating%20an%20Active%20Directory%20System%20State%20Backup/sub/11.png)
