<h1>Restoring an Active Directory Backup</h1>

### For this example, I have deleted the Contoso OU along with all the objects within the Contoso OU.
![Restore](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Restoring%20an%20Active%20Directory%20Backup/sub/1.png)

### Run MSConfig/System Configuration Utility and select the Boot tab.
### Select Boot Options: Safe Boot > Active Directory repair
### Then click "OK."
### Restart the Server and repeatedly press the F8 Key during the restart process to get in the Advanced Boot options.
### In Advanced Boot Options, select Directory Services Repair Mode.
![Restore](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Restoring%20an%20Active%20Directory%20Backup/sub/2.png)

### Login using Local Administrator credentials.
![Restore](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Restoring%20an%20Active%20Directory%20Backup/sub/3.png)

### Open Command Prompt and run the following commands:

```CMD
wbadmin get versions

wbadmin start systemstaterecovery -version:<version_identifer> - authsysvol
```
### There will be several prompts asking for confirmation before the restoration process begins. Enter "Y" for Yes for all confirmation prompts, then restoration process should begin.
### When restoration process is finished, you will be prompted to restart the server. Before restarting, run MSConfig and disable the Safe boot options that were enabled earlier.
![Restore](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Restoring%20an%20Active%20Directory%20Backup/sub/4.png)

### After the server restart, we can confirm that the Contoso OU and its objects that were deleted earlier has now been restored.
![Restore](https://github.com/whuynhit/ActiveDirectory/blob/main/Active%20Directory%20Backups/Restoring%20an%20Active%20Directory%20Backup/sub/5.png)
