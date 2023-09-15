<h1>Deploying Software with Group Policy</h1>

### Create a new share folder named "Software" in the C:\ directory of DC Server. Then change the permissions of the folder to Authenticated Users. Then place the EXE installer of a software you wish to install. For this example, I will install [7-Zip](https://www.7-zip.org/download.html).
![Software_Deployment](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20Software%20with%20Group%20Policy/sub/1.png)

### In Group Policy Management, create and link a new GPO to the domain. Name it in a way so that you can identify the purpose of the GPO. In this example, the name is in the following format: <purpose_software_version>. The right-click the GPO and select "Edit."
![Software_Deployment](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20Software%20with%20Group%20Policy/sub/2.png)

### In the Group Policy Management Editor, navigate to Computer Configuration/Policies/Software Settings/Software Installation. Right-click then select New > Package.
![Software_Deployment](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20Software%20with%20Group%20Policy/sub/3.png)

### Navigate to directory of where the installer is stored and select the installer. It should be a UNC Path. In this case it is:

```
\\WS22DC\Software\
```
![Software_Deployment](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20Software%20with%20Group%20Policy/sub/4.png)

### Once selected, you'll be prompted with a Deploy Software window. Select the "Assigned" deployment method and click "OK."
![Software_Deployment](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20Software%20with%20Group%20Policy/sub/5.png)

![Software_Deployment](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20Software%20with%20Group%20Policy/sub/6.png)

### On the client machine, open the Command Prompt and run the following command:

```
gpupdate /force
```

### You'll be prompted to restart. 
![Software_Deployment](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20Software%20with%20Group%20Policy/sub/7.png)

### After restart, you should be able to see that 7-Zip has been successfully installed.
![Software_Deployment](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20Software%20with%20Group%20Policy/sub/8.png)
